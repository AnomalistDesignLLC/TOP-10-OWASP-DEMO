using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using A5___DEMO.Filters;
using Microsoft.AspNetCore.Mvc;

namespace A5___DEMO.Controllers
{
    public class PrivateController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}