using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using A5___Exercise.Filters;
using Microsoft.AspNetCore.Mvc;

namespace A5___Exercise.Controllers
{
    public class TransferController : Controller
    {
        public IActionResult Unsecured()
        {
            return View();
        }
        
        [ValidateAntiForgeryToken]
        public IActionResult Secured()
        {
            return View();
        }
    }
}