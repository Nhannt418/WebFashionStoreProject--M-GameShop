using MG_Model.CodeHandle.MenuCategoryFolder;
using MG_Model.CodeHandle.MenuManagerFolder;
using MG_Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MG_SHOPPING.Areas.admin.Controllers
{
    public class adminMenuClientController : Controller
    {
        //
        // GET: /admin/adminMenuClient/

        public ActionResult Index()
        {
            return View(new MenuCategoryProvider().getAll().Where(x=>x.Area!="admin").ToList());
        }
        [HttpPost]
        public JsonResult InsertedOrUpdated(MenuManager menu)
        {
            var menumanager = new MenuManagerProvider();
            var type = Request["type"];
            if (type.Equals("update"))
            {
                menumanager.Update(menu, menu.id.ToString());
            }
            else if (type.Equals("insert"))
            {
                menumanager.Insert(menu);
            }
            return Json("success");
        }
        public ActionResult Deleted(string id)
        {
            if (new MenuManagerProvider().Delete(id)) { return View(); }
            return View();
        }
    }
}
