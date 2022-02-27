using MG_Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Threading.Tasks;

namespace MG_Model.CodeHandle.HomeModel
{
    public class Home
    {
        private MG_ShoppingDbContext db;
        public Home()
        {
            db = new MG_ShoppingDbContext();
        }
        public List<Products> getListHot()
        {
            var p = db.Products.SqlQuery("exec _getHot").ToList();
            return p;
        }
        public List<Products> getListSale()
        {
            var p = db.Products.SqlQuery("exec _getSale").ToList();
            return p;
        }
        public Products getProductbyId(int id)
        {
            var _p = db.Products.Find(id);
            return (Products)_p;
        }
        public Products getProductbyName(string metatittle)
        {
            var _p = db.Products.SingleOrDefault(x => x.metaNameProduct == metatittle);
            return _p;
        }
        public List<Products> getbyMenu(int id,string _key)
        {
            var obj=new object[]{new SqlParameter("@id",id),new SqlParameter("@key",_key)};
            var _p =db.Database.SqlQuery<Products>("exec _getListMenu @id,@key",obj).ToList();
            return _p;
        }
        public List<Products> getSearch(string key)
        {
            var obj = new[] { new SqlParameter("@key", key) };
            var _p = db.Database.SqlQuery<Products>("exec _timkiem @key", obj).ToList();
            return _p;
        }
        public List<Products> getHot()
        {
            var _p = db.Database.SqlQuery<Products>("select top 2 * from Products order by id asc").ToList();
            return _p;
        }
    }
}
