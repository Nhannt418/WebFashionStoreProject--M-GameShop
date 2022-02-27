namespace MG_Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Products
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Products()
        {
            Cart = new HashSet<Cart>();
        }

        public int id { get; set; }

        [StringLength(100)]
        public string nameProduct { get; set; }

        [StringLength(100)]
        public string metaNameProduct { get; set; }

        [StringLength(50)]
        public string codeProduct { get; set; }

        [StringLength(50)]
        public string nameCompany { get; set; }

        [Column(TypeName = "date")]
        public DateTime? dateCreated { get; set; }

        [Column(TypeName = "date")]
        public DateTime? dateImport { get; set; }

        [StringLength(50)]
        public string Country { get; set; }

        [StringLength(50)]
        public string color { get; set; }

        [StringLength(200)]
        public string image_large { get; set; }

        [StringLength(200)]
        public string image_normal { get; set; }

        [StringLength(200)]
        public string image_small { get; set; }

        [StringLength(50)]
        public string alt { get; set; }

        public decimal? price { get; set; }

        [StringLength(50)]
        public string material { get; set; }

        public int? count { get; set; }

        [Column(TypeName = "ntext")]
        public string Description { get; set; }

        public double? rank { get; set; }

        [StringLength(10)]
        public string Order { get; set; }

        public int? type { get; set; }

        public int? CategoryID { get; set; }

        [StringLength(50)]
        public string Status { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Cart> Cart { get; set; }

        public virtual MenuManager MenuManager { get; set; }

        public virtual MenuManager MenuManager1 { get; set; }
    }
}
