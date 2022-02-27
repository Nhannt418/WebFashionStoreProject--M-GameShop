using MG_Model.CodeHandle.CustomerManagerFolder;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MG_SHOPPING.Areas.admin.Controllers
{
    public class adminCustomerController : Controller
    {
        //
        // GET: /admin/adminCustomer/

        public ActionResult Index()
        {
            return View(new CustomersProvider().getAll());
        }

    }
}
