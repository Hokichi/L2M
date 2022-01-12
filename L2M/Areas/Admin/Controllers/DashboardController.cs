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
            BaseService.getContext();
        }

        public IActionResult Index()
        {
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
