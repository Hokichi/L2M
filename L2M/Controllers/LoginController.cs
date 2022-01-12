using Microsoft.AspNetCore.Mvc;

namespace L2M.Controllers
{
    public class LoginController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
