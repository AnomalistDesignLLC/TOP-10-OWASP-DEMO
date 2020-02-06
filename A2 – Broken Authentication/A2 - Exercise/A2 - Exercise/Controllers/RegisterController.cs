using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using A2___Exercise.Database;
using A2___Exercise.Models;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;

namespace A2___Exercise.Controllers
{
    /// <summary>
    /// 2. Solution Cross-Site Request Forgery (CSRF)
    /// </summary>
    public class RegisterController : Controller
    {
        private readonly DatabaseContext _databaseContext;
        private readonly IHostingEnvironment _environment;
        public RegisterController(DatabaseContext databaseContext, IHostingEnvironment hostingEnvironment)
        {
            _databaseContext = databaseContext;
            _environment = hostingEnvironment;
        }

        [HttpGet]
        public IActionResult Index()
        {
            return View();
        }



        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Register(Registration registration)
        {
            if (ModelState.IsValid)
            {
                registration.Status = true;
                registration.CreatedDate = DateTime.Now;
                _databaseContext.Registration.Add(registration);
                _databaseContext.SaveChanges();
                return RedirectToAction("Index", "Register");
            }
            return View();

        }


    }
}