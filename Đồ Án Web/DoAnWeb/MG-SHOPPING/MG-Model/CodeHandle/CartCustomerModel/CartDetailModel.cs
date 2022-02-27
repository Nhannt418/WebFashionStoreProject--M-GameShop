using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MG_Model.CodeHandle.CartCustomerModel
{
    public class CartDetailModel
    {
        public int id { get; set; }
        public string nameCustomer { get; set; }
        public string nameProduct { get; set; }
        public int? count { get; set; }
        public DateTime? dateBought { get; set; }
        public decimal? price { get; set; }
        public bool Status { get; set; }
        public string payMethod { get; set; }
    }
}
