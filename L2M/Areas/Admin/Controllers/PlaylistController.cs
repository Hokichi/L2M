using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace L2M.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class PlaylistController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult UpsertPlaylist(int? id)
        {
            return View();
        }
    }
}
