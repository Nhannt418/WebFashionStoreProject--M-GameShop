using MG_Model.CodeHandle.Assets;
using MG_Model.CodeHandle.HomeModel;
using MG_Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MG_Model.CodeHandle.MenuCategoryFolder;
using MG_Model.CodeHandle.MenuManagerFolder;

namespace MG_SHOPPING.Controllers
{
    public class MenuController : Controller
    {
        //
        // GET: /Memu/

        [ChildActionOnly]
        public ActionResult _getBanner()
        {
            var _p = new PublicComponent()._getMenu(10);
            return PartialView(_p);
        }
        [ChildActionOnly]
        public ActionResult _getBrands()
        {
            var _p = new PublicComponent()._getMenu(11);
            return PartialView(_p);
        }
        [ChildActionOnly]
        public ActionResult _getMainMenu()
        {
            var _p = new PublicComponent()._getMenu().Where(x=>x.Submenu!=null||x.CategoryMenu==1).ToList();
            return PartialView(_p);
        }
        [ChildActionOnly]
        public ActionResult _getLeftMenu()
        {
            var _p = new PublicComponent()._getMenu(1).Where(x=>x.Submenu==2).ToList();
            return PartialView(_p);
        }
        [ChildActionOnly]
        public ActionResult _getPolicy()
        {
            var _p = new PublicComponent()._getMenu(3);
            return PartialView(_p);
        }
        [ChildActionOnly]
        public ActionResult _getRecommend()
        {
            ViewBag.Recommend = new PublicComponent().getRecommend(4);
            var _p = new MenuManagerProvider().getAll().Where(x => x.Submenu == 32).ToList();
            return PartialView(_p);
        }
        [ChildActionOnly]
        public ActionResult _getAbout()
        {
            var _p = new PublicComponent()._getMenu(4);
            return PartialView(_p);
        }
        [ChildActionOnly]
        public ActionResult _getSale()
        {
            ViewBag.Sale = new Home().getListSale().ToArray();
            return PartialView();
        }
        [ChildActionOnly]
        public ActionResult _forType()
        {
            ViewBag.Type = new PublicComponent().getRecommend(8).ToArray();
            var _p = new MenuManagerProvider().getAll().Where(x => x.Submenu == 32).ToList();
            return PartialView(_p);
        }
        [ChildActionOnly]
        public ActionResult _getHot()
        {
            var p = new Home().getHot();
            return PartialView(p);
        }
        [ChildActionOnly]
        public ActionResult _detailInfor()
        {
            var p = new PublicComponent()._getMenu(8);
            return PartialView(p);
        }
        [ChildActionOnly]
        public ActionResult _getShared()
        {
            var p = new PublicComponent()._getMenu(5);
            return PartialView(p);
        }
        [ChildActionOnly]
        public ActionResult _Login()
        {
            var p = (User)Session["LOGIN_KEY"];
            return PartialView(p);
        }

    }
}
