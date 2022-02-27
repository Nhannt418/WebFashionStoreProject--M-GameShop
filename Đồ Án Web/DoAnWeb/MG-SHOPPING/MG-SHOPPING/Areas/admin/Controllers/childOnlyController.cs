using MG_Model.CodeHandle.Assets;
using MG_Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MG_SHOPPING.Areas.admin.Controllers
{
    public class childOnlyController : Controller
    {
        //
        // GET: /admin/childOnly/

        [ChildActionOnly]
        public ActionResult getsidebar()
        {
            
            var _p = new PublicComponent()._getMenu().ToList();
            List<MenuManager> list = new List<MenuManager>();
            foreach (var i in _p)
            {
                if (i.CategoryMenu == 9 || i.Submenu != null) list.Add(i);

            }
            return PartialView(_p);
        }
        [ChildActionOnly]
        public ActionResult _getHi()
        {
            var p = (User)Session["LOGIN_KEY"];
            return PartialView(p);
        }
    }
}
