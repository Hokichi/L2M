using L2M.Models;
using L2M.Services;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace L2M.Controllers
{
    public class AuthController : Controller
    {
        public AuthController(){
            UserService.getContext();
        }

        public IActionResult Login()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Login([Bind("Email,Password")] User user)
        {
            if (ModelState.IsValid)
            {
                var check = UserService.checkUser(user);
                if (check != null)
                {
                    HttpContext.Session.SetInt32("CurrentUserId", check.UserId);
                    var u = UserService.GetUserByEmail(user.Email);
                    HttpContext.Session.SetString("CurrentUserRole", check.Role.ToString());
                }
                else
                {
                    return View();
                }
                return RedirectToAction("Index", "Home");
            }
            return View();
        }

        public IActionResult Logout()
        {
            HttpContext.Session.Clear();
            return RedirectToAction("Index", "Home");
        }

        public IActionResult Register()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult SignUp(string firstName, string lastName, [Bind("Email,Password")] User user)
        {
            var old = UserService.GetUserByEmail(user.Email);
            if (old != null)
            {
                return View(user);
            }
            user.UserName = firstName + lastName;
            user.Provider = ProviderType.local;
            user.Role = RoleType.User;
            UserService.PostUser(user);
            return RedirectToAction(nameof(Login));
        }

        public IActionResult ForgotPassword()
        {
            return View();
        }
    }
}
