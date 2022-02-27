using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MG_SHOPPING.Areas.admin.Models
{
    public class _ProductModelDetail
    {
        public int id { get; set; }
        public string nameProduct { get; set; }
        public string codeProduct { get; set; }
        public string nameCompany { get; set; }
        public string dateImport { get; set; }
        public string Country { get; set; }
        public string color { get; set; }
        public string Description { get; set; }
        public string Status { get; set; }
        public string CID { get; set; }
        public string alt { get; set; }
        public decimal? price { get; set; }
        public string material { get; set; }
        public int? count { get; set; }
        public double? rank { get; set; }
        public int? type { get; set; }
        public string _large { get; set; }
        public string _normal { get; set; }
        public string _small { get; set; }
    }
}