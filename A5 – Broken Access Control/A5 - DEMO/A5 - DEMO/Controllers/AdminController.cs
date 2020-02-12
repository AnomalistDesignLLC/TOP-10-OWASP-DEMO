using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace A5___Demo.Controllers
{
    public class AdminController : Controller
    {
        [HttpGet]
        // [Authorize(Roles = "Admin")]
        public IActionResult Index()
        {
            return View();
        }
    }
}