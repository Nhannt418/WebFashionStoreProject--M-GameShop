using MG_Model.CodeHandle.GaleryManager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MG_SHOPPING.Areas.admin.Controllers
{
    public class adminGaleryController : Controller
    {
        //
        // GET: /admin/adminGalery/

        public ActionResult Index()
        {
            return View(new Galery().getGalery());
        }

    }
}
