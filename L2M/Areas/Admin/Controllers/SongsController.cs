using L2M.Data;
using L2M.Models;
using L2M.Services;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;

namespace L2M.Areas.Admin.Controllers
{
    [Area("Admin")]
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

        // GET: Songs1
        public IActionResult Index()
        {
            var songContext = SongService.GetSong();
            return View(songContext);
        }
        // GET: Songs1/Details/5
        public IActionResult Detail(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var song = SongService.GetSong((int)id);

            if (song == null)
            {
                return NotFound();
            }

            return View(song);
        }
        // GET: Songs1/Create
        public IActionResult Create()
        {
            ViewData["AlbumId"] = new SelectList(_context.Album, "AlbumId", "Title");
            ViewData["GenreId"] = new SelectList(_context.Genre, "GenreId", "Name");
            return View();
        }

        // POST: Songs1/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([Bind("SongId,Title,ImgUrl,Path,Duration,AlbumId,GenreId,TrackNo,Lyrics,DateRelease,Views")] Song song)
        {
            if (ModelState.IsValid)
            {
                var files = HttpContext.Request.Form.Files;
                if (files.Count == 0)
                {
                    song.ImgUrl = "~/img/defaultImg.png";
                }
                else
                {
                    string wwwRootPath = _webHostEnviroment.WebRootPath;
                    string path = wwwRootPath + "/img/song/";
                    string fileName = Path.GetFileNameWithoutExtension(files[0].FileName);
                    string extension = Path.GetExtension(files[0].FileName);
                    fileName = fileName + DateTime.Now.ToString("yymmssfff") + extension;
                    using (var fileStream = new FileStream(Path.Combine(path, fileName), FileMode.Create))
                    {
                        files[0].CopyTo(fileStream);
                    }
                    song.ImgUrl = "~/img/song/" + fileName;
                }
                SongService.PostSong(song);
                return RedirectToAction(nameof(Index));
            }
            ViewData["AlbumId"] = new SelectList(_context.Album, "AlbumId", "AlbumId", song.AlbumId);
            ViewData["GenreId"] = new SelectList(_context.Genre, "GenreId", "GenreId", song.GenreId);
            return View(song);
        }

        // GET: Songs1/Edit/5
        public IActionResult Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var song = SongService.GetSong((int)id);
            if (song == null)
            {
                return NotFound();
            }

            return View(song);
        }

        // POST: Songs1/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(int id, [Bind("SongId,Title,ImgUrl,Path,Duration,AlbumId,GenreId,TrackNo,Lyrics,DateRelease,Views")] Song song)
        {
            if (ModelState.IsValid)
            {
                var oldObj = SongService.GetSongToEdit(song);
                string oldFileName = Path.GetFileNameWithoutExtension(oldObj.ImgUrl);
                string oldFileNameExtension = Path.GetExtension(oldObj.ImgUrl);
                var files = HttpContext.Request.Form.Files;
                if (files.Count > 0)
                {
                    string wwwRootPath = _webHostEnviroment.WebRootPath;
                    string path = wwwRootPath + "/img/song/";
                    string fileName = Path.GetFileNameWithoutExtension(files[0].FileName);
                    string extension = Path.GetExtension(files[0].FileName);
                    if (oldFileName != "defaultImg" || oldFileName != "")
                    {
                        oldFileName = oldFileName + oldFileNameExtension;
                        var oldFile = Path.Combine(path, oldFileName);
                        if (System.IO.File.Exists(oldFile))
                        {
                            System.IO.File.Delete(oldFile);
                        }
                    }
                    fileName = fileName + DateTime.Now.ToString("yymmssfff") + extension;
                    using (var fileStream = new FileStream(Path.Combine(path, fileName), FileMode.Create))
                    {
                        files[0].CopyTo(fileStream);
                    }
                    song.ImgUrl = "~/img/song/" + fileName;
                }

                int count = SongService.PutSong(song);
                if (count > 0)
                    return RedirectToAction(nameof(Index));
                else
                    return View(song);
            }
            ViewData["AlbumId"] = new SelectList(_context.Album, "AlbumId", "AlbumId", song.AlbumId);
            ViewData["GenreId"] = new SelectList(_context.Genre, "GenreId", "GenreId", song.GenreId);
            return View(song);
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult Delete(int id)
        {
            var obj = SongService.GetSong((int)id);
            if (obj == null)
            {
                TempData["Error"] = "Error";
                return RedirectToAction("Index");
            }
            string path = _webHostEnviroment.WebRootPath + "/img/song/";
            string oldFileName = Path.GetFileNameWithoutExtension(obj.ImgUrl);
            string oldFileNameExtension = Path.GetExtension(obj.ImgUrl);
            if (oldFileName != "defaultImg" || oldFileName != "")
            {
                oldFileName = oldFileName + oldFileNameExtension;
                var oldFile = Path.Combine(path, oldFileName);
                if (System.IO.File.Exists(oldFile))
                {
                    System.IO.File.Delete(oldFile);
                }
            }
            SongService.DeleteSong(id);
            TempData["Success"] = "Success";
            return RedirectToAction("Index");
        }
    }
}
