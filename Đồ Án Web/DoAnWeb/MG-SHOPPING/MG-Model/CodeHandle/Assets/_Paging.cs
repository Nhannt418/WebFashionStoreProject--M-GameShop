using MG_Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MG_Model.CodeHandle.Assets
{
    public class _Paging
    {
        public PageInfor<Products> _getPaging(int _pagesize, int _pageCurrent,IList<Products> listProduct)
        {
            var count = listProduct.Count;
            var products = (from p in listProduct orderby p.id select p).Skip((_pageCurrent - 1) * _pagesize).Take(_pagesize).ToList();
            var pageinfor = new PageInfor<Products>
            {
                CurrentPage = _pageCurrent,
                ItemProduct = products,
                pageSize = _pagesize,
                pageCount = count / _pagesize + 1
            };
            return pageinfor;
        }
    }
}
