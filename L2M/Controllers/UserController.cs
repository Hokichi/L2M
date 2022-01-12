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
    }
}
