using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Advertisement.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Message = "广告设计公司";

            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your app description page.";

            return View();
        }

        public ActionResult Project()
        {
            return View();
        }

        public ActionResult Industry()
        {
            return View();
        }

        public ActionResult Profession()
        {
            return View();
        }

        public ActionResult Service()
        {
            return View();
        }

        public ActionResult Customer()
        {
            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}
