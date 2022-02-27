using MG_Model.EF;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MG_Model.CodeHandle.Assets
{
     public class PublicComponent
        {
        private MG_ShoppingDbContext db;

        public PublicComponent()
        {
            db = new MG_ShoppingDbContext();
        }
        public List<Products> getRecommend(int sosp)
        {
            var list = new List<Products>();
            var p = db.Database.SqlQuery<Products>("exec _getRecommend").ToList();
            int key = 14;
            foreach (var i in p)
            {
                if (i.type == key) list.Add(i); else continue;
                if (list.Count % sosp == 0) key++;
                if (key == 19)  break;
            }
            return list;
        }
         public List<MenuManager> _getMenu(int id=0)
        {
            var obj = new object[] { new SqlParameter("@_id", id) };
            var _p = db.Database.SqlQuery<MenuManager>("exec _getAllMenu @_id",obj).ToList();
            return _p;
        }
        public List<string> _getListCategory()
        {
            return db.Database.SqlQuery<string>("exec _listCategory").ToList();
            
        }
         public int getCategorybyName(string name){
             var p = db.MenuManager.SingleOrDefault(x=>x.name==name);
             return p.id;
         }
         public string getCategorybyCategoryID(int? categoryId)
         {
             var p = db.MenuManager.SingleOrDefault(x => x.id == categoryId);
             return p.name;
         }
        }
}
