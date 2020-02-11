using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace A5___Demo.Controllers
{
    public class PrivateController : Controller
    {
        [HttpGet]
        // [Authorize]
        public IActionResult Index()
        {
            return View();
        }
    }
}