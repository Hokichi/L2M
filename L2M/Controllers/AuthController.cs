using Microsoft.AspNetCore.Mvc;
using L2M.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using L2M.Services;
using Microsoft.AspNetCore.Http;

namespace L2M.Controllers
{
    public class AuthController : Controller
    {
        public AuthController()
        {

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
            }
            return RedirectToAction(nameof(Index), "Home");
        }

        public IActionResult Logout()
        {
            HttpContext.Session.Clear();
            return RedirectToAction(nameof(Index),nameof(HomeController));
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
            if(old != null)
            {
                return View(user);
            }
            user.UserName = firstName + lastName;
            user.Provider = ProviderType.local;
            user.Role = RoleType.user;
            UserService.PostUser(user);
            return RedirectToAction(nameof(Login));
        }

        public IActionResult ForgotPassword()
        {
            return View();
        }
    }
}
