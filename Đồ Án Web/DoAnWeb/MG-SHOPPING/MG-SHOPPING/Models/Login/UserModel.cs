using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MG_SHOPPING.Models.Login
{
    public class UserModel
    {
        [Required(ErrorMessage="Mời nhập vào username")]
        public string _user{ get; set; }
        [Required(ErrorMessage = "Mời nhập vào pasword")]
        public string _pass { get; set; }

        public bool _rememberme { get; set; }
    }
}