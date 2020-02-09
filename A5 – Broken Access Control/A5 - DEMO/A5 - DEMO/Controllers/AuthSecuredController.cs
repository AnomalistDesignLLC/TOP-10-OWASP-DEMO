using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using A5___DEMO.Database;
using A5___DEMO.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;

namespace A5___DEMO.Controllers
{
    /// <summary>
    /// AuthSecuredController
    /// </summary>
    public class AuthSecuredController : Controller
    {
        private readonly DatabaseContext _databaseContext;
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly SignInManager<ApplicationUser> _signInManager;
        public AuthSecuredController(
            DatabaseContext databaseContext,
            SignInManager<ApplicationUser> signInManager,
            UserManager<ApplicationUser> userManager
        )
        {
            _databaseContext = databaseContext;
            _signInManager = signInManager;
            _userManager = userManager;
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
        public async Task<IActionResult> Login(LoginModel model)
        {
            if (ModelState.IsValid)
            {   //Getting Pasword from Database
                var registration = ReturnPassword(model.UserName);
                // Comparing Password With Seed
                if (ReturnHash(registration.Password, model.HdrandomSeed) == model.Password)
                {
                    var result = await _signInManager.PasswordSignInAsync(model.UserName, model.Password, model.RememberMe, lockoutOnFailure: false);
                    if (result.Succeeded)
                    {
                        return RedirectToAction("Secured", "Dashboard");
                    }
                    else
                    {
                        ModelState.AddModelError(string.Empty, "Password is incorrect.");
                        ModelState.AddModelError("", "The user name or password provided is incorrect.");
                    }
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