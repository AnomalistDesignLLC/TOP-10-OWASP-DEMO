using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using A6___Exercise1.Database;
using A6___Exercise1.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace A6___Exercise1.Controllers
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
            LoginModel loginModel = new LoginModel();
            Random objRandom = new Random();
            var seed = CreateMd5(Convert.ToString(objRandom.Next()));
            loginModel.HdrandomSeed = seed;
            return View(loginModel);
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Login(LoginModel model)
        {
            if (ModelState.IsValid)
            {   //Getting Pasword from Database
                var registration = ReturnPassword(model.UserName);
                // Comparing Password With Seed
                if (ReturnHash(registration.Password, model.HdrandomSeed) == model.Password)
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



        [NonAction]
        public string ReturnHash(string strPassword, string token)
        {
            string randomNo = token;
            return CreateMd5(Convert.ToString((randomNo + strPassword)));
        }


        public static string CreateMd5(string input)
        {
            // Use input string to calculate MD5 hash
            using (System.Security.Cryptography.MD5 md5 = System.Security.Cryptography.MD5.Create())
            {
                byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(input);
                byte[] hashBytes = md5.ComputeHash(inputBytes);

                // Convert the byte array to hexadecimal string
                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < hashBytes.Length; i++)
                {
                    sb.Append(hashBytes[i].ToString("X2"));
                }
                return sb.ToString();
            }
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