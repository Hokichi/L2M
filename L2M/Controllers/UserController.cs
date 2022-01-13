using L2M.Models;
using L2M.Services;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace L2M.Controllers
{
    public class UserController : Controller
    {
        public UserController()
        {
            UserService.getContext();
        }
        public IActionResult Index(int id)
        {
            var user = UserService.GetUserDetail((int)id);
            if (user == null)
            {
                return NotFound();
            }
            return View(user);
        }
        [HttpPost]
        public IActionResult ChangePass([Bind("UserId,Email='',UserName,Password,ConfirmPassword")] User user)
        {
            var old = UserService.GetUser(user.UserId);
            if (old != null)
            {
                return View(user);
            }
            var c = user.Password;
            old.Password = L2M.Models.User.getHashSHA1(c);
            UserService.PutUser(old);
            return RedirectToAction("User", "Index", user.UserId);
        }
    }
}
