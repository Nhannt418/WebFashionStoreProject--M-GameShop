using MG_Model.CodeHandle.FeedbackManager;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MG_SHOPPING.Areas.admin.Controllers
{
    public class adminFeedbackController : Controller
    {
        //
        // GET: /admin/adminFeedback/

        public ActionResult Index()
        {
            return View(new FeedbackProvider().getAll());
        }

    }
}
