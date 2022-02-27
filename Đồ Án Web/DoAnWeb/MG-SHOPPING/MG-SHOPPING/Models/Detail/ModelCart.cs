using MG_Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MG_SHOPPING.Models.Detail
{
    public class ModelCart
    { 
        public int id { get; set; }
        public string name { get; set; }
        public string image { get; set; }
        public string code { get; set; }
        public decimal price { get; set; }
        public int quarity { get; set; }

        /// <summary>
        /// Convert Modelcart-> Cart
        /// 
        /// </summary>
        /// <returns></returns>
        public static Cart convert(ModelCart i,bool status,int cusID)
        {
            var cart = new Cart();
            cart.CustomerID = cusID;
            cart.ProductID = i.id;
            cart.count = i.quarity;
            cart.Price = i.price;
            cart.dateBought = DateTime.Now;
            cart.Status = status;
            return cart;
        }
        public static List<Cart> converterx(List<ModelCart> m, bool status, int _id)
        {
            var l = new List<Cart>();
            foreach (var i in m)
            {
                l.Add(ModelCart.convert(i, status, _id));
            }
            return l;
        }
        /// <summary>
        /// convert Cart-> ModelCart
        /// </summary>
        /// <param name="i"></param>
        /// <returns></returns>
        public static ModelCart convert(Cart i)
        {
            var mc = new ModelCart();
            mc.id = i.ProductID;
            mc.quarity = (int)i.count;
            mc.price = (decimal)i.Price;
            mc.name = i.Products.nameProduct;
            mc.image = i.Products.image_large;
            mc.code = i.Products.codeProduct;
            return mc;
        }
        public static List<ModelCart> converterx(List<Cart> c)
        {
            var cart = new List<ModelCart>();
            foreach (var i in c)
            {
                cart.Add(ModelCart.convert(i));
            }
            return cart;
        }

    }
}