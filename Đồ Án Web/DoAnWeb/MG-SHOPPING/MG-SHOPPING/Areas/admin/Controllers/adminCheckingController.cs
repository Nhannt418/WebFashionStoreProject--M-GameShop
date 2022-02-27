using MG_Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MG_SHOPPING.Areas.admin.Controllers
{
    public class adminCheckingController : Controller
    {
        protected override void OnActionExecuted(ActionExecutedContext filterContext)
        {
           var session=Session["LOGIN_KEY"];
           if (session == null) filterContext.Result = new RedirectToRouteResult(new System.Web.Routing.RouteValueDictionary(new { controller = "Home", action = "Index", area = "" }));
           else
           {
               var s = (User)session;
               if (s.GroupId.Equals("ADMIN")) Redirect("/admin/adminHome");
               else filterContext.Result = new RedirectToRouteResult(new System.Web.Routing.RouteValueDictionary(new { controller = "Home", action = "Index", area = "" }));
           }
        }

    }
}
