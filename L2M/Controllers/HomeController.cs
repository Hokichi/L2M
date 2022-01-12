using Microsoft.AspNetCore.Mvc;

namespace L2M.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
