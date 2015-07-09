using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Advertisement
{
    public class BaseController : Controller
    {
        public string FolderPath { private get; set; }
        public string ControllerPath { private get; set; }
        public string ViewPath { private get; set; }

        protected override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            ViewPath = filterContext.RouteData.GetRequiredString("action");
            ControllerPath = filterContext.RouteData.GetRequiredString("controller");
            if (filterContext.RouteData.Values.Count == 4) {
                FolderPath = string.IsNullOrEmpty(filterContext.RouteData.GetRequiredString("folder")) ? null : filterContext.RouteData.GetRequiredString("folder");
            }
            base.OnActionExecuting(filterContext);
        }

        protected new ViewResult View() {
            if (string.IsNullOrEmpty(FolderPath)) {
                return base.View(string.Format("/Views/{0}/{1}.cshtml", ControllerPath, ViewPath));
            }
            return base.View(string.Format("/Views/{0}/{1}/{2}.cshtml", FolderPath, ControllerPath, ViewPath));
        }

    }
}
