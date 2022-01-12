using L2M.Data;
using L2M.Services;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;

namespace L2M.Controllers
{
    public class SongsController : Controller
    {
        private readonly IWebHostEnvironment _webHostEnviroment;

        public SongsController(IWebHostEnvironment hostEnvironment)
        {
            SongService.getContext();
            ArtistService.getContext();
            this._webHostEnviroment = hostEnvironment;
        }
        public IActionResult Index()
        {
            return View(SongService.GetSong());
        }

        [HttpPost]
        public IActionResult Index(string keyword)
        {
            var listSongs = SongService.SearchSongs(keyword);
            ViewData["key"] = keyword;
            return View(listSongs);
        }

        public IActionResult PlaySong(int id)
        {
            var song = SongService.GetSong(id);
            return View(song);
        }

        [HttpGet]
        public IActionResult Genres(int id)
        {
            var listSongs = SongService.GetSongByGenre(id);
            return View(nameof(Index),listSongs);
        }
    }
}
