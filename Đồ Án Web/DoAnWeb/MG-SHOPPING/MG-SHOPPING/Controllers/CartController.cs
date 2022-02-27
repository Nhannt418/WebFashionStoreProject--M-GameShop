using MG_Model.CodeHandle.Assets;
using MG_Model.CodeHandle.CartCustomerModel;
using MG_Model.CodeHandle.CustomerManagerFolder;
using MG_Model.CodeHandle.UserModel;
using MG_Model.EF;
using MG_SHOPPING.Models.Detail;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MG_SHOPPING.Controllers
{
    public class CartController : Controller
    {
        //
        // GET: /Cart/
        public ActionResult Index()
        {
            var u = (User)Session["LOGIN_KEY"];
            ViewBag.InforData = new Customer();
            if (u != null)
            {
                ViewBag.InforData = (Customer)Session["CUSTOMER"];
            }
            //if (u.GroupId.Equals("ADMIN")) return RedirectToAction("Index", "adminCart", new { area = "admin" });
            var model=(List<ModelCart>)Session["CART_ITEM"];
            return View(model);
        }
        public JsonResult Load()
        {
            return Json((List<ModelCart>)Session["CART_ITEM"],JsonRequestBehavior.AllowGet);
        }
        public ActionResult deleteProduct(int id)
        {
            var list = (List<ModelCart>)Session["CART_ITEM"];
            foreach (var i in list)
            {
                if (i.id == id) { list.Remove(i); break; }
            }
            Session["CART_ITEM"] = list;
            return Content("SUCCESS");
        }
        [HttpPost]
        public ActionResult PostOrder(Customer model)
        {
            var user = (User)Session["LOGIN_KEY"];
            var p = new CustomersProvider().getbyusername(user.username).id;
            Session["CUSTOMER_BUOGHT"] = model;
            if (p > 0)
            {
                Cart cart;
                foreach (var i in (List<ModelCart>)Session["CART_ITEM"])
                {
                    cart = new Cart();
                    cart.CustomerID = p;
                    cart.ProductID = i.id;
                    cart.count = i.quarity;
                    cart.Price = i.price;
                    cart.dateBought = DateTime.Now;
                    cart.Status = false;
                    new CartCustomerProvider().Insert(cart);
                }
            }
            else { return Redirect("/xem-gio-hang"); }
            return Redirect("/xem-lai-hoa-don");
        }
        public ActionResult SaveCarts()
        { 
            
            var u=(User)Session["LOGIN_KEY"];
            if (u == null) return Redirect("/Dang-Nhap-or-Dang-Ki");
            if (u != null)
            { 
                var cp = new CustomersProvider().getbyusername(u.username); 
                Session["CUSTOMER"] = cp;
                var src = new CartCustomerProvider().getAll().Where(x => x.CustomerID == cp.id).ToList();//cart
                var des=(List<ModelCart> )Session["CART_ITEM"];//ModelCart
                processCart(ModelCart.converterx(src), des,false,cp.id);
            }
            return Redirect("/");
        }
        public void processCart(List<ModelCart> s,List<ModelCart> d,bool status,int cusid)
        {
            var provider = new CartCustomerProvider();
            foreach (var i in s)
            {
                var count = d.Where(x => x.id == i.id).Count();
                if (count == 0)
                { 
                    //delete
                    provider.Delete(i.id.ToString(),cusid.ToString());
                }
            }
            foreach (var i in d)
            {
                var count = s.Where(x => x.id == i.id).Count();
                if (count == 0)
                { 
                    //insert to database
                    provider.Insert(ModelCart.convert(i,status,cusid));
                }
                else if (count > 0)
                { 
                    //update to database
                    provider.Update(ModelCart.convert(i,status,cusid), i.id.ToString());
                }
            }
        }
       
    }
}

