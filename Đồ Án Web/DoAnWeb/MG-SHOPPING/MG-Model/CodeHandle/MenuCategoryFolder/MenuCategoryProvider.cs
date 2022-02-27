using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MG_Model.CodeHandle.Assets;
using MG_Model.EF;
namespace MG_Model.CodeHandle.MenuCategoryFolder
{
    public class MenuCategoryProvider:Provider<MenuCategory>
    {
        private MG_ShoppingDbContext db;
        public MenuCategoryProvider()
        {
            db=new MG_ShoppingDbContext();
        }
        public List<MenuCategory> getAll()
        {
            return db.MenuCategory.ToList();
        }

        public MenuCategory getById(string id)
        {
            int _id=int.Parse(id);
            return db.MenuCategory.SingleOrDefault(x => x.id == _id);
        }

        public int Insert(MenuCategory t)
        {
            db.MenuCategory.Add(t);
            db.SaveChanges();
            return t.id;
        }

        public bool Update(MenuCategory t, string id)
        {
            try
            {
                var p = getById(id);
                p.name = t.name;
                p.Area = t.Area;
                p.Status = t.Status;
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
            try
            {
                db.MenuCategory.Remove(getById(id));
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
