using MG_Model.CodeHandle.CartCustomerModel;
using MG_Model.CodeHandle.CustomerManagerFolder;
using MG_Model.CodeHandle.UserModel;
using MG_Model.EF;
using MG_SHOPPING.Models.Detail;
using MG_SHOPPING.Models.Login;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace MG_SHOPPING.Controllers
{
    public class LoginController : Controller
    {
        //
        // GET: /Login/
        [AllowAnonymous]
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Index(FormCollection collection)
        {
            try
            {
                var usermodel = new UserModel();
                usermodel._user = collection["user"];
                usermodel._pass = collection["pass"]; usermodel._rememberme = false;
                usermodel._rememberme = collection["remember"].Contains("false");

                if (ModelState.IsValid && new UserProvider().UserIsAvaible(usermodel._user, new PasswordSecurity().CreateMD5(usermodel._pass)))
                {
                    User model = new UserProvider().getUserbyName(usermodel._user);
                    Session["LOGIN_KEY"] = model;
                    if (model.GroupId.Equals("MEMBER"))
                    {
                        var cp = new CustomersProvider().getbyusername(model.username); 
                        Session["CUSTOMER"] = cp;
                        
                        List<Cart> carts = new CartCustomerProvider().getAll().Where(x => x.CustomerID == cp.id).ToList();
                        Session["CART_ITEM"] = ModelCart.converterx(carts);
                        TempData["message"] = "Đăng nhập thành công";
                        return Redirect("/");
                    }
                    else if (model.GroupId.Equals("ADMIN"))
                    {
                        FormsAuthentication.SetAuthCookie(usermodel._user, usermodel._rememberme);
                        TempData["message"] = "Đăng nhập thành công";
                        return RedirectToAction("Index", "adminHome", new { area = "admin" });
                    }
                }
                else
                    TempData["message"] = "Đăng nhập thất bại";
                    return Redirect("/Dang-Nhap-or-Dang-Ki");
            }
            catch { ModelState.AddModelError("", "Co loi tu he thong"); }
            return Redirect("/Dang-Nhap-or-Dang-Ki");
        }
        [HttpPost]
        public ActionResult Register(User collection)
        {
            try
            {
                if (Request["pass"].Equals(Request["re_pass"]))
                {
                    collection.password = new PasswordSecurity().CreateMD5(Request["pass"].Trim());
                    collection.dateCreate = DateTime.Now;
                    collection.dateUpdated = DateTime.Now;
                    collection.Status = true;
                    collection.GroupId = "MEMBER";
                    if (ModelState.IsValid && new UserProvider().Insert(collection) > 0)
                    {
                        Session["LOGIN_KEY"] = collection;
                        Session["CUSTOMER"] = new CustomersProvider().getbyusername(collection.username);
                        return Redirect("/");
                        //FormsAuthentication.SetAuthCookie(registerModel.username, true);
                        //return RedirectToAction("Index", "adminHome", new { area = "admin" });
                    }
                }
                else
                {
                    ViewBag.Error = "Nhập chưa khớp mật khẩu";
                }
            }
            catch
            {
                ViewBag.System = "Có lỗi sinh từ hệ thống";
            }
            return Redirect("/") ;
        }
        public ActionResult Logout()
        {
            Session.Abandon();
            Session["LOGIN_KEY"] = null;
            Session["CUSTOMER"] = null;
            FormsAuthentication.SignOut();
            return Redirect("/Dang-Nhap-or-Dang-Ki");
        }
        
    }
}
