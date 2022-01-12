using Microsoft.AspNetCore.Mvc;
using L2M.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using L2M.Models;
using Microsoft.AspNetCore.Http;

namespace L2M.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Route("Admin")]
    public class DashboardController : Controller
    {
        public DashboardController()
        {
            BaseService.getContext();
        }

        public IActionResult Index()
        {
            var user = new User();
            var userid = HttpContext.Session.GetInt32("CurrentUserId");
            if (userid != null)
            {
                UserService.getContext();
                user = UserService.GetUser((int)userid);
                if(user.Role != RoleType.Admin)
                {
                    return NotFound();
                }
            }
            else
            {
                return NotFound();
            }

            ViewData["totalAlbum"] = AlbumService.GetTotal();
            ViewData["totalArtist"] = ArtistService.GetTotal();
            ViewData["totalSong"] = SongService.GetTotal();
            ViewData["totalPlaylist"] = PlaylistService.GetTotal();
            ViewData["totalGenre"] = GenreService.GetTotal();
            ViewData["totalUser"] = UserService.GetTotal();
            return View();
        }
    }
}
