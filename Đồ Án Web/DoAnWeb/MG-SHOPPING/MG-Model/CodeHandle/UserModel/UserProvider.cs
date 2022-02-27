using MG_Model.CodeHandle.Assets;
using MG_Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MG_Model.CodeHandle.UserModel
{
    public class UserProvider:Provider<User>
    {
        private MG_ShoppingDbContext db;
        public UserProvider()
        {
            db = new MG_ShoppingDbContext();
        }
        public User getById(string id)
        {
            int _id = int.Parse(id);
            var p = db.User.SingleOrDefault(x => x.id ==_id);
            return p;
        }
        public int Insert(User user)
        {
            db.User.Add(user);
            db.SaveChanges();
            return user.id;
        }
        public bool Delete(string id)
        {
            db.User.Remove(getById(id));
            db.SaveChanges();
            return true;
        }
        public bool Update(User p,string id)
        {
            var _p = getById(id);
            _p.username = p.username;
            _p.password = p.password;
            _p.realName = p.realName;
            _p.Status = p.Status;
            _p.dateUpdated = DateTime.Now;
            db.SaveChanges();
            return true;
        }
        public List<User> getAll()
        {
            return db.User.ToList();
        }
        public bool UserIsAvaible(string user,string pass)
        {
            var i = db.User.Count(x => x.username == user && x.password == pass);
            if (i > 0) return true;
            else return false;
        }
        public User getUserbyName(string name)
        {
            return db.User.SingleOrDefault(x => x.username == name);
        }
        
    }
}
