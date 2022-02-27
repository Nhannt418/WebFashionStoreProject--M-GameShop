using MG_Model.CodeHandle.Assets;
using MG_Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MG_Model.CodeHandle.FeedbackManager
{
    public class FeedbackProvider:Provider<Feedback>
    {
        private MG_ShoppingDbContext db;
        public FeedbackProvider()
        {
            db=new MG_ShoppingDbContext();
        }
        public List<Feedback> getAll()
        {
            return db.Feedback.ToList();
        }
        public Feedback getById(string id)
        {
            int _id = int.Parse(id);
            return db.Feedback.SingleOrDefault(x => x.id == _id);
        }

        public int Insert(Feedback t)
        {
            db.Feedback.Add(t);
            db.SaveChanges();
            return t.id;
        }

        public bool Update(Feedback t, string id)
        {
            throw new NotImplementedException();
        }
        public int soPH()
        {
            return getAll().Count;
        }
        public bool Delete(string id)
        {
            throw new NotImplementedException();
        }
    }
}
