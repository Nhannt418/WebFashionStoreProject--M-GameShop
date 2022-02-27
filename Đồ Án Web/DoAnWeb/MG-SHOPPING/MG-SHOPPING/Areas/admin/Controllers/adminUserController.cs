using MG_Model.CodeHandle.UserModel;
using MG_Model.EF;
using MG_SHOPPING.Areas.admin.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MG_SHOPPING.Areas.admin.Controllers
{
    public class adminUserController : Controller
    {
        //
        // GET: /admin/adminUser/
        private int _pagesize = 5;
        public ActionResult Index()
        {
            return View(new _PageUser()._getPaging(_pagesize, 1, new UserProvider().getAll()));
        }
        public ActionResult _pagingUser(int _currentPage)
        {
            return PartialView(new _PageUser()._getPaging(_pagesize, _currentPage, new UserProvider().getAll()));
        }
        //
        // GET: /admin/__8f9bfe9d1345237cb3b2b205864da075/Edit/5
        public JsonResult _getUser(string _id)
        {
            var user = new UserProvider().getById(_id);
            var model = new _UserModel();
            model.id = _id;
            model.username = user.username;
            model.password = user.password;
            model.realname = user.realName;
            model.email = user.email;
            model.age = user.age;
            model.Status = user.Status;
            return Json(model, JsonRequestBehavior.AllowGet);
        }
        public ActionResult EditUser(_UserModel collection)
        {
            var _save = new User();
            _save.username = collection.username;
            _save.password = new PasswordSecurity().CreateMD5(collection.password);
            _save.realName = collection.realname;
            _save.Status = collection.Status;
            _save.dateUpdated = DateTime.Now;
            if (new UserProvider().Update(_save, collection.id.ToString())) return RedirectToAction("Index");
            else return View();
        }
        //
        // GET: /admin/__8f9bfe9d1345237cb3b2b205864da075/Delete/5

        public ActionResult DeleteUser(string id)
        {
            if (new UserProvider().Delete(id))
            {
                return Content("Xóa thành công!");
            }
            return Content("Xóa lỗi! Bản ghi chưa xóa được.");
        }

    }
}
