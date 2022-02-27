using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace MG_SHOPPING
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");
            routes.MapRoute(
                name: "Detail",
                url: "chi-tiet/{metaNameProduct}",
                defaults: new { controller="Detail",action="Index"}
                );
            routes.MapRoute(
                name:"Cart",
                url:"xem-gio-hang",
                defaults:new{controller="Cart",action="Index"}
                    );
            routes.MapRoute(
                name: "Error",
                url: "Can-not-find-request-404-error",
                defaults: new { controller = "Error", action = "Index" }
                );
            routes.MapRoute(
                name: "thanh toan",
                url: "xem-lai-hoa-don",
                defaults: new { controller = "Bill", action = "Index" }
                );
            routes.MapRoute(
                name: "Dang Nhap",
                url: "Dang-Nhap-or-Dang-Ki",
                defaults: new { controller = "Login", action = "Index" }
                );
            routes.MapRoute("Logout", "Out-Page", new { controller = "Login", action = "Logout" });
            routes.MapRoute(
                name: "Danh mục",
                url: "Danh-muc/{meta}",
                defaults: new { controller = "Shopping", action = "Index" }
                );
            routes.MapRoute(
                name: "Cho người dùng",
                url: "ViewProfile",
                defaults: new { controller = "CustomerViewer", action = "Index" }
            );
            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );

        }
    }
}