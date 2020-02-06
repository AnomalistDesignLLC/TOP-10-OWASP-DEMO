using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using A2___Demo.Database;
using A2___Demo.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace A2___Demo.Controllers
{
    /// <summary>
    /// AuthController
    /// </summary>
    public class AuthController : Controller
    {
        private readonly DatabaseContext _databaseContext;
        public AuthController(DatabaseContext databaseContext)
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
                // Comparing Password With Seed
                if (registration.Password == model.Password)
                {
                    HttpContext.Session.SetString("Username", Convert.ToString(model.UserName));
                    HttpContext.Session.SetInt32("UserID", Convert.ToInt32(registration.RegistrationId));
                    return RedirectToAction("", "Dashboard");
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