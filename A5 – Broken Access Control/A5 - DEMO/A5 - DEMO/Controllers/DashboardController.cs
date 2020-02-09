using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using A5___DEMO.Filters;
using Microsoft.AspNetCore.Mvc;

namespace A5___DEMO.Controllers
{
    public class DashboardController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Unsecured()
        {
            return View();
        }
        
        [AuthenticateUser]
        public IActionResult Secured()
        {
            return View();
        }
    }
}