using MG_Model.CodeHandle.Assets;
using MG_Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MG_Model.CodeHandle.ShopModel
{
    public class ShopPaging
    {
        public ShopPaging() { }
        public PageInfor<Products> getAlltoPage(int _pagesize,int _pageCurrent)
        {
            return new _Paging()._getPaging(_pagesize, _pageCurrent, new GetAllProducts().getAll());
        }
    }
}
