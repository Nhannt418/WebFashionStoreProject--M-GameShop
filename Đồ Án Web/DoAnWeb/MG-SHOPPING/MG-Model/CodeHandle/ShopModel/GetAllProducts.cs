using MG_Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MG_Model.CodeHandle.ShopModel
{
    public class GetAllProducts
    {
        private MG_ShoppingDbContext db;
        public GetAllProducts()
        {
            db = new MG_ShoppingDbContext();
        }
        public IList<Products> getAll()
        {
            var _x = db.Products.ToList();
            return _x;
        }
    }
}
