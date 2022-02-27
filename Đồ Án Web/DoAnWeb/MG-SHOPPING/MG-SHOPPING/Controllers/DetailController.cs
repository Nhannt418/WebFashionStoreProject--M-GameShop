using MG_Model.CodeHandle.Assets;
using MG_Model.CodeHandle.HomeModel;
using MG_Model.EF;
using MG_SHOPPING.Models.Detail;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MG_SHOPPING.Controllers
{
    public class DetailController : Controller
    {
        //
        // GET: /Detail/

        public ActionResult Index(string metaNameProduct)
        {
            var _p = new Home().getProductbyName(metaNameProduct);
            string src = String.Format(@"https://www.facebook.com/plugins/like.php?href=http%3A%2F%2Flocalhost%3A7928%2Fchi-tiet%2F{0}&width=450&layout=standard&action=like&show_faces=true&share=true&height=80&appId=125391211209683",metaNameProduct);
            ViewBag.src = src;
            return View(_p);
        }
        [HttpPost]
        public JsonResult getData(ModelCart product)
        {
            List<ModelCart> cart;
            if (Session["CART_ITEM"] == null)
            {
                cart = new List<ModelCart>();
                cart.Add(product);
                Session["CART_ITEM"] = cart;
                return Json(new {status=("Thêm thành công sản phẩm.")});
            }
            else
            {
                bool exist = false;
                cart = (List<ModelCart>)Session["CART_ITEM"];
                foreach (ModelCart i in cart)
                {
                    if (i.id == product.id)
                    {
                        exist = true; break;
                    } 
                }
                if (!exist)
                {
                    cart.Add(product);
                    Session["CART_ITEM"] = cart;
                    return Json(new { status = ("Thêm thành công sản phẩm.") });
                }
                else
                {
                    return Json(new { status = ("Sản phẩm bạn thêm đã có trong giỏ hàng.") });
                }
            
            }
        
        }

    }
}
