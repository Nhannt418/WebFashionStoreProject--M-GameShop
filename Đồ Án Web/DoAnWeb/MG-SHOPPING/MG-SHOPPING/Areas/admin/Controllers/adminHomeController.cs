using MG_Model.CodeHandle._adminHome;
using MG_Model.CodeHandle.CustomerManagerFolder;
using MG_Model.CodeHandle.FeedbackManager;
using MG_Model.CodeHandle.MenuManagerFolder;
using MG_Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MG_SHOPPING.Areas.admin.Controllers
{

    public class adminHomeController : adminCheckingController
    {
        //
        // GET: /admin/adminHome/

        public ActionResult Index()
        {
            var _p = new _getHome()._getAllOrder();
            ViewBag.onlineCurrent =(int) System.Web.HttpContext.Current.Application["OnlineUsers"];
            ViewBag.FeedBack = new FeedbackProvider().soPH();
            ViewBag.SoKH = new CustomersProvider().getAll().Count();
            return View(_p);
        }
        
    }
}
