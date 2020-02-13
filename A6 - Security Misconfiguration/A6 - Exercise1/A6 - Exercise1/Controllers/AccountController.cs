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
    /// AccountController
    /// </summary>
    public class AccountController : Controller
    {
        private readonly DatabaseContext _databaseContext;
        public AccountController(DatabaseContext databaseContext)
        {
            _databaseContext = databaseContext;
        }

        [HttpGet]
        public ActionResult Logout()
        {
            try
            {
                // Removing Session
                HttpContext.Session.Clear();

                // Removing Cookies
                CookieOptions option = new CookieOptions();
                if (Request.Cookies[".AspNetCore.Session"] != null)
                {
                    option.Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies.Append(".AspNetCore.Session", "", option);
                }

                if (Request.Cookies["AuthenticationToken"] != null)
                {
                    option.Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies.Append("AuthenticationToken", "", option);
                }


                return RedirectToAction("Index", "Home");
            }
            catch (Exception)
            {
                throw;
            }

        }

    }
}