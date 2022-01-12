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
            this._webHostEnviroment = hostEnvironment;
        }
        public IActionResult Index()
        {
            return View(SongService.GetSong());
        }
    }
}
