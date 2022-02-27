using MG_Model.CodeHandle.Assets;
using MG_Model.CodeHandle.HomeModel;
using System.Web.Mvc;
using System.Collections.Generic;
using MG_Model.EF;
using MG_SHOPPING.Models.Detail;
using MG_Model.CodeHandle.FeedbackManager;
namespace MG_SHOPPING.Controllers
{

    public class HomeController : Controller
    {
        //
        // GET: /Home/
        const int pageSize =12;
        private readonly HotProducts hot = new HotProducts();
        public ActionResult Index(int _id=0,string _key="")
        {
            Session["MENU_ID"] = _id;
            Session["MENU_KEY_SEARCH"] = _key;
            var _x = hot.getProducts(pageSize,1,_id,"");
            return View(_x);
        }
        [HttpPost]
        public ActionResult Paging(int _currentPage)
        {
            var _x = hot.getProducts(pageSize, _currentPage, (int)Session["MENU_ID"], Session["MENU_KEY_SEARCH"].ToString());
            return PartialView(_x);
        }
        public JsonResult _loadAutocomplete(string _key)
        {
            var _p = new Home().getSearch(_key);
            var _list = new List<SearchModel>();
            foreach (var i in _p)
            {
                var _r = new SearchModel();
                _r.id = i.id;
                _r.name = i.nameProduct;
                _list.Add(_r);
            }
            return Json(_list, JsonRequestBehavior.AllowGet);
        }
        public void _bindingData(string _key)
        {
            Session["MENU_KEY_SEARCH"] = _key;
        }
        [HttpPost]
        public ActionResult Feedback(Feedback f)
        { 
            f.Status=true;
            new FeedbackProvider().Insert(f);
            return Redirect("/");
        }
      
    }
}
