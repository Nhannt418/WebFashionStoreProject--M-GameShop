using MG_Model.CodeHandle.Assets;
using MG_Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MG_Model.CodeHandle.CartCustomerModel
{
    public class CartCustomerProvider:Provider<Cart>
    {
        private MG_ShoppingDbContext db;
        public CartCustomerProvider()
        { db = new MG_ShoppingDbContext(); }
        public List<CartDetailModel> getDetailCart()
        {
            return db.Database.SqlQuery<CartDetailModel>(@"select nameCustomer,nameProduct,Cart.count,dateBought,Products.price,Cart.Status,payMethod
                                                from Cart join Customer on CustomerID=Customer.id 
		                                                  join Products on ProductID=Products.id").ToList();
        }
        public int findProductId(string name,string image)
        {
            var i = db.Products.SingleOrDefault(x => x.nameProduct == name && x.image_large == image || x.image_normal == image);
            return i.id;
        }

        public List<Cart> getAll()
        {
            return db.Cart.ToList();
        }

        public Cart getById(string id)//theo id sp
        {
            int _id=int.Parse(id);
            return db.Cart.SingleOrDefault(x => x.ProductID == _id);

        }
        public Cart getById(string pid, string cid)
        {
            int _pid = int.Parse(pid);
            int _cid = int.Parse(cid);
            return db.Cart.SingleOrDefault(x => x.ProductID == _pid&&x.CustomerID==_cid);
        }
        public int Insert(Cart t)
        {
            db.Cart.Add(t);
            db.SaveChanges();
            return 1;
        }
        public bool Update(Cart t, string id)
        {
            var c = getById(id,t.CustomerID.ToString());//get products id
            c.count = t.count;
            c.payMethod = t.payMethod;
            c.Status = c.Status;
            db.SaveChanges();
            return true;
        }
        public bool Delete(string pid, string cid)
        {
            try
            {
                db.Cart.Remove(getById(pid,cid));
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        public bool Delete(string id)
        {
            throw new NotImplementedException();
        }
    }
}
