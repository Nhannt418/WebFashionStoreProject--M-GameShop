namespace MG_Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Customer")]
    public partial class Customer
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Customer()
        {
            Cart = new HashSet<Cart>();
        }

        public int id { get; set; }

        [StringLength(50)]
        public string nameCustomer { get; set; }

        [StringLength(50)]
        public string username { get; set; }

        public int? age { get; set; }

        public bool? sex { get; set; }

        [StringLength(70)]
        public string adress { get; set; }

        [StringLength(15)]
        public string phoneNumber { get; set; }

        [StringLength(50)]
        public string Email { get; set; }

        [StringLength(250)]
        public string Description { get; set; }

        [StringLength(50)]
        public string Fax { get; set; }

        public bool? Ording { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Cart> Cart { get; set; }
    }
}
