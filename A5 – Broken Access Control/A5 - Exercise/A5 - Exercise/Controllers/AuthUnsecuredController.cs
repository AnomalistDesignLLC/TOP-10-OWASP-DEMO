using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using A5___Exercise.Database;
using A5___Exercise.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace A5___Exercise.Controllers
{
    /// <summary>
    /// AuthUnsecuredController
    /// </summary>
    public class AuthUnsecuredController : Controller
    {
        private readonly DatabaseContext _databaseContext;
        public AuthUnsecuredController(DatabaseContext databaseContext)
        {
            _databaseContext = databaseContext;
        }

        [HttpGet]
        [AllowAnonymous]
        public IActionResult Login(string returnUrl)
        {
            return View();
        }


        [HttpPost]
        public ActionResult Login(LoginModel model)
        {
            if (ModelState.IsValid)
            {   //Getting Pasword from Database
                var registration = ReturnPassword(model.UserName);

                if (registration.Password == model.Password)
                {
                    HttpContext.Session.SetString("Username", Convert.ToString(model.UserName));
                    HttpContext.Session.SetInt32("UserID", Convert.ToInt32(registration.RegistrationId));

                    return RedirectToAction("Unsecured", "Dashboard");
                }
                else
                {
                    ModelState.AddModelError("", "The user name or password provided is incorrect.");
                }
            }
            return View(model);
        }

        public Registration ReturnPassword(string userName)
        {
            var queryUserDetails = (from user in _databaseContext.Registration
                                where user.Username == userName
                                select user).SingleOrDefault();

            return queryUserDetails;
        }

    }
}