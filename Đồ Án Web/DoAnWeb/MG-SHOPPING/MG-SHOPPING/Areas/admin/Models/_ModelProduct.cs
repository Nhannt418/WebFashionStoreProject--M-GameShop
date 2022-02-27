using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MG_SHOPPING.Areas.admin.Models
{
    public class _ModelProduct
    {
        public string name { get; set; }
        public string code { get; set; }
        public string company { get; set; }
        public DateTime import { get; set; }
        public string country { get; set; }
        public string color { get; set; }
        public string Description { get; set; }
        public string Status { get; set; }
        public int ID_Category { get; set; }
        public HttpPostedFileBase image_large { get; set; }
        public HttpPostedFileBase image_normal { get; set; }
        public HttpPostedFileBase image_small { get; set; }
        public string alt { get; set; }
        public string metarial { get; set; }
        public int count { get; set; }
        public double rank { get; set; }
    }
}