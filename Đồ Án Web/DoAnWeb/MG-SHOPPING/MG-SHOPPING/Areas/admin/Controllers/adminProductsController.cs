using MG_Model.CodeHandle.Assets;
using MG_Model.CodeHandle.MenuManagerFolder;
using MG_Model.CodeHandle.Product;
using MG_Model.CodeHandle.UserModel;
using MG_Model.EF;
using MG_SHOPPING.Areas.admin.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MG_SHOPPING.Areas.admin.Controllers
{
    public class adminProductsController : Controller
    {
        //
        // GET: /admin/adminProducts/

        private const int pagezie = 5;
        private const string PAGE = "CURRENT_PAGE";
        public ActionResult Index()
        {
            var p = new _Paging()._getPaging(pagezie, 1, new ProductsProvider().getAll());
            //ViewBag.listCategory = new PublicComponent()._getListCategory();
            ViewBag.listcate = new MenuManagerProvider().getAll().Where(x=>x.id>=3&&x.id<=6);
            ViewBag.listtype = new MenuManagerProvider().getAll().Where(x => x.id >=14 && x.id <= 18);
            return View(p);
        }
        public ActionResult _paging(int _currentPage)
        {
            var p = new _Paging()._getPaging(pagezie, _currentPage, new ProductsProvider().getAll());
            return PartialView(p);
        }
        //
        // GET: /admin/_068f80c7519d0528fb08e82137a72131/Details/5
        string path = "/Galery/images/";
        [HttpPost]
        public ActionResult createProduct(Products _product)
        {
            _product.metaNameProduct = new TextConvertion().ToAscii(_product.nameProduct);
            _product.dateCreated = DateTime.Now;
            //_product.CategoryID = new PublicComponent().getCategorybyName(Request["CID"]);
            string[] _imageSave = new string[3];
            HttpPostedFileBase[] _imagecollection = { Request.Files["image_large"], 
                                                        Request.Files["image_normal"], 
                                                        Request.Files["image_small"] };
            int k = 0;
            foreach (var i in _imagecollection)
            {
                if (i != null || i.ContentLength > 0 || i.FileName != "")
                {
                    var ext = Path.GetExtension(i.FileName);//bo loc du lieu
                    if (new ProductsProvider().isImage(ext))
                    {
                        string _filename = Guid.NewGuid().ToString();
                        var fullpath = Path.Combine(Server.MapPath(path), _filename + ext);
                        i.SaveAs(fullpath);
                        _imageSave[k++] = path + _filename + ext;
                    }
                    else { _imageSave[k++] = ""; }

                }
                else
                {
                    _imageSave[k++] = "";
                }
            }
            for (var i = 0; i < 3; i++)
            {
                if (_imageSave[i] != null || _imageSave[i].Equals(""))
                {
                    switch (i)
                    {
                        case 0:
                            { _product.image_large = _imageSave[0]; break; }
                        case 1:
                            { _product.image_normal = _imageSave[1]; break; }
                        case 2:
                            { _product.image_small = _imageSave[2]; break; }
                    }
                }
            }
            if (new ProductsProvider().Insert(_product) > 0) { return RedirectToAction("Index"); }
            return View();
        }
        public ActionResult deleteProduct(string id)
        {
            foreach (var i in new ProductsProvider().getImage(id))
            {
                if (i==null) { }
                else
                {
                    deleteImage(i);
                }
            }
            if (new ProductsProvider().Delete(id))
            {
                return Content("Xóa thành công!");
            }
            return Content("Xóa lỗi! Bản ghi chưa xóa được.");
        }
        public void deleteImage(string url)
        {
            var fullname = Path.Combine(Server.MapPath(url));
            var File = new FileInfo(fullname);
            File.Delete();
        }
        [HttpPost]
        public ActionResult InseredtorUpdated(Products _product)
        {
            _product.nameProduct = _product.nameProduct.Trim();
            _product.metaNameProduct = new TextConvertion().ToAscii(_product.nameProduct);
            //_product.CategoryID = new PublicComponent().getCategorybyName(Request["CID"]);

            string[] _imageSaved = new string[3];//là danh sách các ảnh đã có? !equal(""):...
            string[] _imageSave = new string[3];//danh sách name mới
            int k = 0;
            if (_product.id != -1)
            {
                foreach (var i in new ProductsProvider().getImage(_product.id.ToString()))//lấy danh sách cũ
                {
                    _imageSaved[k++] = i;
                }
            }
            else { _product.dateCreated = DateTime.Now; }
            k = 0;
            HttpPostedFileBase[] _imagecollection = { Request.Files["image_large"], 
                                                        Request.Files["image_normal"], 
                                                        Request.Files["image_small"] };

            foreach (var i in _imagecollection)
            {
                if (i != null || i.ContentLength > 0 || i.FileName != "")
                {
                    var ext = Path.GetExtension(i.FileName);//bo loc du lieu
                    if (new ProductsProvider().isImage(ext))
                    {
                        string _filename;
                        string fullpath=null;
                        if (_imageSaved[k] != null && _imageSaved[k] != "")
                        {
                            _filename = _imageSaved[k];
                            fullpath = Path.Combine(Server.MapPath(_filename));
                            _imageSave[k++] = _filename;
                        }
                        else
                        {
                            _filename = Guid.NewGuid().ToString();
                            fullpath = Path.Combine(Server.MapPath(path) + _filename + ext);
                            _imageSave[k++] = path + _filename + ext;
                        }
                        i.SaveAs(fullpath);

                    }
                    else { _imageSave[k++] = ""; }

                }
                else
                {
                    _imageSave[k++] = "";
                }
            }
            for (var i = 0; i < 3; i++)
            {
                if (_imageSave[i] != "") continue;
                else
                {
                    if (_imageSaved[i] != "") { _imageSave[i] = _imageSaved[i]; continue; }
                    else _imageSave[i] = "";
                }
            }

            for (var i = 0; i < 3; i++)
            {
                switch (i)
                {
                    case 0:
                        { _product.image_large = _imageSave[0]; break; }
                    case 1:
                        { _product.image_normal = _imageSave[1]; break; }
                    case 2:
                        { _product.image_small = _imageSave[2]; break; }
                }
            }
            if (_product.id == -1)
            {
                if (new ProductsProvider().Insert(_product) > 0) { return RedirectToAction("Index"); }
            }
            else { 
                if (new ProductsProvider().Update(_product, _product.id.ToString())) { return RedirectToAction("Index"); }
            }
            
            return View();
        }
        public ActionResult _SendDetail(string id)
        {
            var p= new ProductsProvider().getById(id);
            Session["ID_UPDATE"] = p.id;
            var _sender = new _ProductModelDetail();
            _sender.id = p.id;
            _sender.nameProduct = p.nameProduct;
            _sender.codeProduct = p.codeProduct;
            _sender.nameCompany = p.nameCompany;
            _sender.dateImport = p.dateImport.ToString();
            _sender.Country = p.Country;
            _sender.color = p.color;
            _sender.type = p.type;
            _sender.Description = p.Description;
            _sender.Status = p.Status;
            _sender.CID = new PublicComponent().getCategorybyCategoryID(p.CategoryID);
            _sender.alt = p.alt;
            _sender.material = p.material;
            _sender.count = p.count;
            _sender.rank = p.rank;
            _sender._small = p.image_small;
            _sender._large = p.image_large;
            _sender._normal = p.image_normal;
            _sender.price = p.price;
            return Json(_sender, JsonRequestBehavior.AllowGet);
        }

    }
}
