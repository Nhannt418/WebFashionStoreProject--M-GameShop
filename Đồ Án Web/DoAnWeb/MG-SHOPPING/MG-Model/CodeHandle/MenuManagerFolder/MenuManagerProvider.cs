using MG_Model.CodeHandle.Assets;
using MG_Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MG_Model.CodeHandle.MenuManagerFolder
{
    public class MenuManagerProvider:Provider<MenuManager>
    {
        private MG_ShoppingDbContext db;
        public MenuManagerProvider()
        {
            db = new MG_ShoppingDbContext();
        }
        public List<MenuManager> getAll()
        {
            return db.MenuManager.ToList();
        }

        public MenuManager getById(string id)
        {
            int _id = int.Parse(id);
            return db.MenuManager.SingleOrDefault(x => x.id == _id);
        }

        public int Insert(MenuManager t)
        {
            db.MenuManager.Add(t);
            db.SaveChanges();
            return t.id;
        }

        public bool Update(MenuManager t, string id)
        {
            try
            {
                var p = getById(id);
                p.name = t.name;
                p.Possition = t.Possition;
                p.metaName = t.metaName;
                p.target = t.target;
                p.link = t.link;
                p.Submenu = t.Submenu;
                p.CategoryMenu = t.CategoryMenu;
                p.ItemIcon = t.ItemIcon;
                p.Description = t.Description;
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
                db.MenuManager.Remove(getById(id)); return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        public List<MenuManager> getMenuClient()
        {
            var p = db.MenuManager.SqlQuery(@"Select a.id,a.name,metaName,target,link,Submenu,Possition,Categorymenu,ItemIcon,Description,a.Status
                                                from MenuManager as a,MenuCategory as b 
                                                where a.Categorymenu=b.id and b.Area<> 'admin'").ToList<MenuManager>();
            return p;
        }
        public List<MenuManager> getMenuAdmin()
        {
            var p = db.MenuManager.SqlQuery(@"Select a.id,a.name,metaName,target,link,Submenu,Possition,Categorymenu,ItemIcon,Description,a.Status
                                                from MenuManager as a,MenuCategory as b 
                                                where a.Categorymenu=b.id and b.Area like 'admin'").ToList<MenuManager>();
            return p;
        }
        public MenuManager getbyOrder(string order)
        {
            var p=db.MenuManager.SingleOrDefault(x => x.metaName == order);
            return p;
        }
        public void Insert(MenuCategory menu)
        {
            throw new NotImplementedException();
        }
    }
}
