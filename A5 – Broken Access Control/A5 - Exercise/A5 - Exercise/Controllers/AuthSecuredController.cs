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
    /// AuthSecuredController
    /// </summary>
    public class AuthSecuredController : Controller
    {
        private readonly DatabaseContext _databaseContext;
        public AuthSecuredController(DatabaseContext databaseContext)
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
                    // Getting New Guid
                    string guid = Convert.ToString(Guid.NewGuid());
                    //Storing new Guid in Session
                    HttpContext.Session.SetString("AuthenticationToken", Convert.ToString(guid));

                    //Adding Cookie in Browser
                    CookieOptions option = new CookieOptions { Expires = DateTime.Now.AddHours(24), HttpOnly = true };
                    Response.Cookies.Append("AuthenticationToken", guid, option);

                    return RedirectToAction("Secured", "Dashboard");
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

        public void Set(string key, string value, int? expireTime)
        {
            CookieOptions option = new CookieOptions();

            if (expireTime.HasValue)
                option.Expires = DateTime.Now.AddMinutes(expireTime.Value);
            else
                option.Expires = DateTime.Now.AddMilliseconds(10);

            Response.Cookies.Append(key, value, option);
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