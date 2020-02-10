using Microsoft.AspNetCore.Mvc;

namespace A5___Demo.Controllers
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