using MG_Model.CodeHandle.MenuCategoryFolder;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MG_SHOPPING.Areas.admin.Controllers
{
    public class adminCategoryMenuController : Controller
    {
        //
        // GET: /admin/adminCategoryMenu/

        public ActionResult Index()
        {
            return View(new MenuCategoryProvider().getAll());
        }
    }
}
