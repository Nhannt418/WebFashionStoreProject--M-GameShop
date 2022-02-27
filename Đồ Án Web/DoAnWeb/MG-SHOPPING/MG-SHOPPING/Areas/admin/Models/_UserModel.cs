using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MG_SHOPPING.Areas.admin.Models
{
    public class _UserModel
    {
        public string id { get; set; }
        public string username{set;get;}
        public string password { set; get; }
        public int? age { set; get; }
        public string realname { set; get; }
        public string email { set; get; }
        public string dateUpdate { set; get; }
        public string GroupID { get; set; }
        public bool? Status { set; get; }
    }
}