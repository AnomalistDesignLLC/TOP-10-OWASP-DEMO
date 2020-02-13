using Microsoft.AspNetCore.Mvc;

namespace A8___Demo.Controllers
{
    public class PrivateController : Controller
    {
        [HttpGet]
        public IActionResult Index()
        {
            return View();
        }
    }
}