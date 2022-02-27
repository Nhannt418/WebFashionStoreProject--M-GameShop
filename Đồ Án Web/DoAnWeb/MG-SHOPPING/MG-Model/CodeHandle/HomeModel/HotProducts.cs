using MG_Model.CodeHandle.Assets;
using MG_Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MG_Model.CodeHandle.HomeModel
{
    public class HotProducts
    {
        public HotProducts() { }
        public PageInfor<Products> getProducts(int _pageSize,int _pageCurrent,int id,string _key) 
        {
            return new _Paging()._getPaging(_pageSize, _pageCurrent, new Home().getbyMenu(id,_key));
        }
    }
}
