using MG_Model.CodeHandle.Assets;
using MG_Model.EF;
using MG_SHOPPING.Models.Detail;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MG_SHOPPING.Controllers
{
    public class BillController : Controller
    {
        //
        // GET: /Bill/

        public ActionResult Index()
        {
            var model = (List<ModelCart>)Session["CART_ITEM"];
            ViewBag.Customer = (Customer)Session["CUSTOMER_BUOGHT"];
            return View(model);
        }

    }
}
