using MG_Model.CodeHandle.Assets;
using MG_Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MG_Model.CodeHandle.UserModel
{
    public class _PageUser
    {
        public PageInfor<User> _getPaging(int _pagesize, int _pageCurrent, IList<User> listUser)
        {
            var count = listUser.Count;
            var products = (from p in listUser orderby p.id select p).Skip((_pageCurrent - 1) * _pagesize).Take(_pagesize).ToList();
            var pageinfor = new PageInfor<User>
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
