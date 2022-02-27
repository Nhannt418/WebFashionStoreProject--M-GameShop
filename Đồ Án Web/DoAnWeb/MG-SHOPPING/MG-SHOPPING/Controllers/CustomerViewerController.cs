using MG_Model.EF;
using MG_SHOPPING.Models.Detail;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MG_SHOPPING.Controllers
{
    public class CustomerViewerController : Controller
    {
        //
        // GET: /CustomerViewer/

        public ActionResult Index()
        {
            var lk=Session["LOGIN_KEY"];
            if ( lk!= null && Session["CUSTOMER"]!=null)
            {
                ViewBag.user = (Customer)Session["CUSTOMER"];
                var cart = (List<ModelCart>)Session["CART_ITEM"];
                return View(cart);
            }
            else
                return Redirect("/");
            
        }

    }
}
