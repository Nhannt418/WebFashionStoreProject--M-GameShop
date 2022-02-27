using MG_Model.CodeHandle.Assets;
using MG_Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MG_Model.CodeHandle.CustomerManagerFolder
{
    public class CustomersProvider:Provider<Customer>
    {
         private MG_ShoppingDbContext db;
        public CustomersProvider()
        {
            db = new MG_ShoppingDbContext();
        }
        public List<Customer> getAll()
        {
            return db.Customer.ToList();
        }

        public Customer getById(string id)
        {
            int _id = int.Parse(id);
            return db.Customer.SingleOrDefault(x => x.id == _id);
        }

        public int Insert(Customer t)
        {
            db.Customer.Add(t);
            db.SaveChanges();
            return t.id;
        }

        public bool Update(Customer t, string id)
        {
            try
            {
                var p = getById(id);
                p.nameCustomer = t.nameCustomer;
                p.age = t.age;
                p.sex = t.sex;
                p.adress = t.adress;
                p.phoneNumber = t.phoneNumber;
                p.Email = t.Email;
                p.Fax = t.Fax;
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
                db.Customer.Remove(getById(id)); return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
        public Customer getbyusername(string username)
        {
            return db.Customer.SingleOrDefault(x => x.username == username);
        }
    }
}
