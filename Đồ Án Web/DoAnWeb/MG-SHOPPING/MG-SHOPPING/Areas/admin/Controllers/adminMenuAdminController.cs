using MG_Model.CodeHandle.MenuManagerFolder;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MG_SHOPPING.Areas.admin.Controllers
{
    [Authorize]
    public class adminMenuAdminController : Controller
    {
        //
        // GET: /admin/adminMenuAdmin/

        public ActionResult Index()
        {
            return View(new MenuManagerProvider().getMenuAdmin());
        }

    }
}
