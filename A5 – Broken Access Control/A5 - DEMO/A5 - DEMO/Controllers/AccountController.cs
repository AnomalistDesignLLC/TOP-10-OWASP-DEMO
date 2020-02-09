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
    /// AccountController
    /// </summary>
    public class AccountController : Controller
    {
        private readonly DatabaseContext _databaseContext;
        private readonly SignInManager<ApplicationUser> _signInManager;
        public AccountController(
            SignInManager<ApplicationUser> signInManager,
            DatabaseContext databaseContext)
        {
            _databaseContext = databaseContext;
            _signInManager = signInManager;
        }

        [HttpGet]
        public async Task<IActionResult> Logout()
        {
            try
            {
                // delete authentication cookie
                await _signInManager.SignOutAsync();

                return RedirectToAction("Index", "Home");
            }
            catch (Exception)
            {
                throw;
            }

        }

    }
}