using MG_Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MG_Model.CodeHandle.GaleryManager
{
    public class Galery
    {
        private MG_ShoppingDbContext db;
        public Galery()
        {
            db=new MG_ShoppingDbContext();
        }
        public List<GaleryModel> getGalery()
        {
            return db.Database.SqlQuery<GaleryModel>("select nameProduct,alt,image_large from Products").ToList();
        }
    }
}
