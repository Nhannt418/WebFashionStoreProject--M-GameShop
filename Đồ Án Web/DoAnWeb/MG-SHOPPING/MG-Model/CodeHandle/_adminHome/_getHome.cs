using MG_Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MG_Model.CodeHandle._adminHome
{
    public class _getHome
    {
        private MG_ShoppingDbContext db=new MG_ShoppingDbContext();
        public List<_HomeModel> _getAllOrder()
        {
            var _p = db.Database.SqlQuery<_HomeModel>("exec _getOrder").ToList();
            return _p;
        }
    }
}
