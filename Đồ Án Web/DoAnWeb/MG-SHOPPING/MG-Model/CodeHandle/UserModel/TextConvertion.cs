using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace MG_Model.CodeHandle.UserModel
{
    public class TextConvertion
    {
        public string ToAscii(string unicode)
        {
            unicode = Regex.Replace(unicode, "[áàảãạăắằẳẵặâấầẩẫậÁÀẢÃẠĂẮẰẲẴẶÂẤẦẨẪẬ]", "a");
            unicode = Regex.Replace(unicode, "[óòỏõọôồốổỗộơớờởỡợÓÒỎÕỌÔỒỐỔỖỘƠỚỜỞỠỢ]", "o");
            unicode = Regex.Replace(unicode, "[éèẻẽẹêếềểễệÉÈẺẼẸÊẾỀỂỄỆ]", "e");
            unicode = Regex.Replace(unicode, "[íìỉĩịÍÌỈĨỊ]", "i");
            unicode = Regex.Replace(unicode, "[úùủũụưứừửữựÚÙỦŨỤƯỨỪỬỮỰ]", "u");
            unicode = Regex.Replace(unicode, "[ýỳỷỹỵÝỲỶỸỴ]", "y");
            unicode = Regex.Replace(unicode, "[đĐ]", "d");
            unicode = Regex.Replace(unicode, "\\W+", "-");//dau " "--> thanh "-"
            return unicode;
        }
    }
}
