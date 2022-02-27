using MG_Model.CodeHandle.Assets;
using MG_Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MG_Model.CodeHandle.Product
{
    public class ProductsProvider:Provider<Products>
    {
        private MG_ShoppingDbContext db;
        public ProductsProvider() { db = new MG_ShoppingDbContext(); }
        public List<Products> getAll() {
            return db.Products.ToList();
        }
        public Products getById(string id)
        {
            int _id = int.Parse(id);
            var p = db.Products.SingleOrDefault(x => x.id == _id);
            return p;
        }
        public int Insert(Products p)
        {
            p.image_large = p.image_large != null ? p.image_large : null;
            p.image_normal = p.image_normal != null ? p.image_normal : null;
            p.image_small = p.image_small != null ? p.image_small : null;
            var c=db.Products.Add(p);
            db.SaveChanges();
            return c.id;
        }
        public bool  Update(Products p,string id)
        {
            var _p = getById(id);
            _p.nameProduct = p.nameProduct;
            _p.nameCompany = p.nameCompany;
            _p.codeProduct = p.codeProduct;
            _p.dateImport = p.dateImport;
            _p.Country = p.Country;
            _p.color = p.color;
            _p.price = p.price;
            _p.image_large = p.image_large!=null?p.image_large:null;
            _p.image_normal = p.image_normal != null ? p.image_normal : null;
            _p.image_small = p.image_small != null ? p.image_small :null;
            _p.material = p.material;
            _p.count = p.count;
            _p.Description = p.Description;
            _p.rank = p.rank;
            _p.Order = p.Order;
            _p.type = p.type;
            _p.CategoryID = p.CategoryID;
            _p.Status = p.Status;
            _p.metaNameProduct = p.metaNameProduct;
            db.SaveChanges();
            return true;
        }
        public bool Delete(string id)
        {
            
            db.Products.Remove(getById(id));
            db.SaveChanges();
            return true;
        }
        public Products getByName(string name)
        {
            var p = db.Products.SingleOrDefault(x => x.nameProduct == name);
            return p;
        }
        private string[] imageExt = { ".jpg", ".png", ".jpeg", ".gif", ".JPG", ".PNG", ".JPEG", ".GIF" };
        public bool isImage(string _ext)
        {
            foreach (var i in imageExt)
            {
                if (i.Equals(_ext)) { return true; }
            }
            return false;
        }
        public string[] getImage(string id)
        {
            string []_image=new string[3];
            var p=getById(id);
            _image[0] = p.image_large;
            _image[1] = p.image_normal;
            _image[2] = p.image_small;
            return _image;
        }
    }
}
