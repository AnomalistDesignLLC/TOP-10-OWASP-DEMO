using Microsoft.AspNetCore.Mvc;

namespace A2___Demo.Controllers
{
    public class HomeController : Controller
    {
        [HttpGet]
        public IActionResult Index()
        {
            return View();
        }
    }
}