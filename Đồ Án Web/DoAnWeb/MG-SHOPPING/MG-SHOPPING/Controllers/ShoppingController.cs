using MG_Model.CodeHandle.Assets;
using MG_Model.CodeHandle.MenuManagerFolder;
using MG_Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MG_SHOPPING.Controllers
{
    public class ShoppingController : Controller
    {
        //
        // GET: /Shopping/
        private int pageSize=12;
        public ActionResult Index(string meta="Ao")
        {
            var p = new MenuManagerProvider().getbyOrder(meta);
            Session["DATA_SHOPPING"] = p.Products.ToList().Count == 0 ? p.Products1.ToList() : p.Products.ToList();
            var _x = new _Paging()._getPaging(pageSize, 1, (List<Products>)Session["DATA_SHOPPING"]);
            ViewBag.Name = p.name;
            return View(_x);
        }
        [HttpPost]
        public ActionResult Paging2(int _currentPage)
        {
            var _x = new _Paging()._getPaging(pageSize, _currentPage, (List<Products>)Session["DATA_SHOPPING"]);
            return PartialView(_x);
        }
    }
}
