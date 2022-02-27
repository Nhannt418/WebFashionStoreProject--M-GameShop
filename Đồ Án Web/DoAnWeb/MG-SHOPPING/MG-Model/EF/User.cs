namespace MG_Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("User")]
    public partial class User
    {
        public int id { get; set; }

        [StringLength(50)]
        public string username { get; set; }

        [StringLength(50)]
        public string password { get; set; }

        [StringLength(50)]
        public string realName { get; set; }

        public int? age { get; set; }

        public bool? sex { get; set; }

        [StringLength(10)]
        public string phone { get; set; }

        [StringLength(50)]
        public string adress { get; set; }

        [StringLength(50)]
        public string email { get; set; }

        [Column(TypeName = "date")]
        public DateTime? dateCreate { get; set; }

        [StringLength(20)]
        public string GroupId { get; set; }

        [Column(TypeName = "date")]
        public DateTime? dateUpdated { get; set; }

        public bool? Status { get; set; }

        public virtual UsersGroup UsersGroup { get; set; }
    }
}
