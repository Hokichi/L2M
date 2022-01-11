using Microsoft.AspNetCore.Mvc;
using L2M.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace L2M.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Route("Admin")]
    public class DashboardController : Controller
    {
        public DashboardController()
        {
            AlbumService.getContext();
        }

        public IActionResult Index()
        {
            ViewData["totalAlbum"] = AlbumService.Total();
            return View();
        }
    }
}
