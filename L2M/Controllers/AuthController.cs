using L2M.Models;
using L2M.Services;
using Microsoft.AspNetCore.Http;
using System.Web;
using Microsoft.AspNetCore.Mvc;

namespace L2M.Controllers
{
    public class AuthController : Controller
    {
        private readonly ISendMailService _sendMailService;
        public AuthController(ISendMailService sendMailService)
        {
            UserService.getContext();
            _sendMailService = sendMailService;
        }

        public IActionResult Login()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Login([Bind("Email,Password")] User user)
        {
            ModelState.Remove("ConfirmPassword");
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
                    ViewData["Message"] = "Mật khẩu nhập sai";
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

        public IActionResult Signup()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Signup([Bind("Email,UserName,Password,ConfirmPassword")] User user)
        {
            if (!ModelState.IsValid)
            {
                return View();
            }
            var old = UserService.GetUserByEmail(user.Email);
            if (old != null)
            {
                return View(user);
            }
            user.Provider = ProviderType.local;
            user.Role = RoleType.User;
            var c = user.Password;
            user.Password = L2M.Models.User.getHashSHA1(c);
            UserService.PostUser(user);
            _sendMailService.SendEmailAsync(user.Email, "Chào mừng", "Bạn đã đăng kí thành công");
            return RedirectToAction(nameof(Login));
        }

        public IActionResult ForgotPassword()
        {
            return View();
        }
    }
}
