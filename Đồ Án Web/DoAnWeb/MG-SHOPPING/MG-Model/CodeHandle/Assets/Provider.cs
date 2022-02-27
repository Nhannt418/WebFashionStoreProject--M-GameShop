using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MG_Model.CodeHandle.Assets
{
    public interface Provider<T>
    {
        List<T> getAll();
        T getById(string id);
        int Insert(T t);
        bool Update(T t,string id);
        bool Delete(string id);
    }         
}
