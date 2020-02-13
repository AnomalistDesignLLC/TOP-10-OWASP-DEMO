using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using A6___Exercise1.Database;
using A6___Exercise1.Models;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;

namespace A6___Exercise1.Controllers
{
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
        public IActionResult Index(Registration registration)
        {
            registration.Status = true;
            registration.CreatedDate = DateTime.Now;
            _databaseContext.Registration.Add(registration);
            _databaseContext.SaveChanges();
            return View();
        }

    }
}