namespace MG_Model.EF
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class MG_ShoppingDbContext : DbContext
    {
        public MG_ShoppingDbContext()
            : base("name=MG_ShoppingDbContext")
        {
        }

        public virtual DbSet<Cart> Cart { get; set; }
        public virtual DbSet<Customer> Customer { get; set; }
        public virtual DbSet<Feedback> Feedback { get; set; }
        public virtual DbSet<MenuCategory> MenuCategory { get; set; }
        public virtual DbSet<MenuManager> MenuManager { get; set; }
        public virtual DbSet<Products> Products { get; set; }
        public virtual DbSet<Roles> Roles { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<User> User { get; set; }
        public virtual DbSet<UsersGroup> UsersGroup { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Cart>()
                .Property(e => e.Price)
                .HasPrecision(18, 0);

            modelBuilder.Entity<Cart>()
                .Property(e => e.payMethod)
                .IsFixedLength();

            modelBuilder.Entity<Customer>()
                .Property(e => e.phoneNumber)
                .IsFixedLength();

            modelBuilder.Entity<Customer>()
                .HasMany(e => e.Cart)
                .WithRequired(e => e.Customer)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<MenuCategory>()
                .Property(e => e.Area)
                .IsUnicode(false);

            modelBuilder.Entity<MenuCategory>()
                .HasMany(e => e.MenuManager)
                .WithOptional(e => e.MenuCategory)
                .HasForeignKey(e => e.CategoryMenu);

            modelBuilder.Entity<MenuManager>()
                .HasMany(e => e.MenuManager1)
                .WithOptional(e => e.MenuManager2)
                .HasForeignKey(e => e.Submenu);

            modelBuilder.Entity<MenuManager>()
                .HasMany(e => e.Products)
                .WithOptional(e => e.MenuManager)
                .HasForeignKey(e => e.type);

            modelBuilder.Entity<MenuManager>()
                .HasMany(e => e.Products1)
                .WithOptional(e => e.MenuManager1)
                .HasForeignKey(e => e.CategoryID);

            modelBuilder.Entity<Products>()
                .Property(e => e.codeProduct)
                .IsUnicode(false);

            modelBuilder.Entity<Products>()
                .Property(e => e.price)
                .HasPrecision(18, 0);

            modelBuilder.Entity<Products>()
                .Property(e => e.Order)
                .IsFixedLength();

            modelBuilder.Entity<Products>()
                .Property(e => e.Status)
                .IsUnicode(false);

            modelBuilder.Entity<Products>()
                .HasMany(e => e.Cart)
                .WithRequired(e => e.Products)
                .HasForeignKey(e => e.ProductID)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Roles>()
                .Property(e => e.id)
                .IsUnicode(false);

            modelBuilder.Entity<Roles>()
                .HasMany(e => e.UsersGroup)
                .WithMany(e => e.Roles)
                .Map(m => m.ToTable("Credentials").MapLeftKey("RoleId").MapRightKey("GroupUserId"));

            modelBuilder.Entity<User>()
                .Property(e => e.username)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.password)
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(e => e.phone)
                .IsFixedLength();

            modelBuilder.Entity<User>()
                .Property(e => e.GroupId)
                .IsUnicode(false);

            modelBuilder.Entity<UsersGroup>()
                .Property(e => e.id)
                .IsUnicode(false);

            modelBuilder.Entity<UsersGroup>()
                .HasMany(e => e.User)
                .WithOptional(e => e.UsersGroup)
                .HasForeignKey(e => e.GroupId);
        }
    }
}
