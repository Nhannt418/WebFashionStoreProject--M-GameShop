﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MG_Model.CodeHandle.Assets
{
    public class PageInfor<T>
    {
        public int CurrentPage { get; set; }
        public int pageCount { get; set; }
        public List<T> ItemProduct { get; set; }
        public int pageSize { get; set; }
    }
}
