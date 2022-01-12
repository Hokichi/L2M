using L2M.Data;
using L2M.Services;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;

namespace L2M.Controllers
{
    public class SongsController : Controller
    {
        private readonly IWebHostEnvironment _webHostEnviroment;
        private readonly L2MContext _context;
        public SongsController(IWebHostEnvironment hostEnvironment, L2MContext context)
        {
            _context = context;
            SongService.getContext();
            this._webHostEnviroment = hostEnvironment;
        }
        public IActionResult Index()
        {
            return View(SongService.GetSong());
        }
    }
}
