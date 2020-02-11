using Microsoft.AspNetCore.Mvc;

namespace A2___Demo.Controllers
{
    public class AdminController : Controller
    {
        [HttpGet]
        public IActionResult Index()
        {
            return View();
        }
    }
}