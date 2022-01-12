using Microsoft.AspNetCore.Mvc;
using L2M.Services;

namespace L2M.Controllers
{
    public class HomeController : Controller
    {
        public HomeController()
        {
            BaseService.getContext();
        }
        public IActionResult Index()
        {
            ViewData["FeaturedSongs"] = SongService.GetFeaturedSongs();
            ViewData["NewSongs"] = SongService.GetNewSongs();
            ViewData["LikeSongs"] = SongService.GetMostLikedLikeSongs();
            ViewData["TopSongs"] = SongService.GetTopSongs();
            ViewData["Albums"] = AlbumService.GetAlbum();
            return View();
        }
    }
}
