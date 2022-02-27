namespace MG_Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("MenuManager")]
    public partial class MenuManager
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public MenuManager()
        {
            MenuManager1 = new HashSet<MenuManager>();
            Products = new HashSet<Products>();
            Products1 = new HashSet<Products>();
        }

        public int id { get; set; }

        [StringLength(50)]
        public string name { get; set; }

        [StringLength(50)]
        public string metaName { get; set; }

        [StringLength(50)]
        public string target { get; set; }

        [StringLength(50)]
        public string link { get; set; }

        public int? Submenu { get; set; }

        public int? Possition { get; set; }

        public int? CategoryMenu { get; set; }

        [StringLength(50)]
        public string ItemIcon { get; set; }

        [StringLength(50)]
        public string Description { get; set; }

        public bool? Status { get; set; }

        public virtual MenuCategory MenuCategory { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<MenuManager> MenuManager1 { get; set; }

        public virtual MenuManager MenuManager2 { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Products> Products { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Products> Products1 { get; set; }
    }
}
