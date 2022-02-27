using MG_Model.CodeHandle.CartCustomerModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MG_SHOPPING.Areas.admin.Controllers
{
    public class adminCartController : Controller
    {
        //
        // GET: /admin/adminCart/

        public ActionResult Index()
        {
            return View(new CartCustomerProvider().getDetailCart());
        }

    }
}
