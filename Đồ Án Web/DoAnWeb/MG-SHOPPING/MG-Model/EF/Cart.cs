namespace MG_Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Cart")]
    public partial class Cart
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int CustomerID { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int ProductID { get; set; }

        public int? count { get; set; }

        [Column(TypeName = "date")]
        public DateTime? dateBought { get; set; }

        public decimal? Price { get; set; }

        public bool? Status { get; set; }

        [StringLength(10)]
        public string payMethod { get; set; }

        public virtual Customer Customer { get; set; }

        public virtual Products Products { get; set; }
    }
}
