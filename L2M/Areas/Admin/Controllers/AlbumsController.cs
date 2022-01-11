using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using L2M.Data;
using L2M.Models;
using Microsoft.AspNetCore.Hosting;
using L2M.Services;
using System.IO;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace L2M.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class AlbumsController : Controller
    {
        private readonly IWebHostEnvironment _webHostEnviroment;

        public AlbumsController(IWebHostEnvironment hostEnvironment)
        {
            this._webHostEnviroment = hostEnvironment;
        }

        // GET: Albums
        public IActionResult Index()
        {
            //return View(AlbumService.GetAlbum());
            return View(AlbumService.GetAlbumWithListArtist());
        }

        // GET: Albums/Details/5
        public IActionResult Detail(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }
            var album = AlbumService.GetAlbum((int)id);
            if (album == null)
            {
                return NotFound();
            }

            return View(album);
        }

        // GET: Albums/Create
        public IActionResult Create()
        {
            ViewData["AlbumId"] = new SelectList(AlbumService.GetAlbum(), "AlbumId", "Title");
            ViewData["ArtistId"] = new MultiSelectList(ArtistService.GetArtist(),"ArtistId", "Name");
            ViewData["GenreId"] = new SelectList(GenreService.GetGenre(), "GenreId", "Name");
            return View();
        }

        // POST: Albums/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([Bind("Title,ImgUrl,DateRelease,Type,Featured,ArtistIds")] Album album)
        {
            if (ModelState.IsValid)
            {
                var files = HttpContext.Request.Form.Files;
                if (files.Count == 0)
                {
                    album.ImgUrl = "~/img/defaultImg.png";
                }
                else
                {
                    string wwwRootPath = _webHostEnviroment.WebRootPath;
                    string path = wwwRootPath + "/img/album/";
                    string fileName = Path.GetFileNameWithoutExtension(files[0].FileName);
                    string extension = Path.GetExtension(files[0].FileName);
                    fileName = fileName + DateTime.Now.ToString("yymmssfff") + extension;
                    using (var fileStream = new FileStream(Path.Combine(path, fileName), FileMode.Create))
                    {
                        files[0].CopyTo(fileStream);
                    }
                    album.ImgUrl = "~/img/album/" + fileName;
                }
                int count = AlbumService.PostAlbum(album);
                if (count == (album.ArtistIds.Length + 1))
                    return RedirectToAction(nameof(Index));
                else
                    return View(album);
            }
            ViewData["AlbumId"] = new SelectList(AlbumService.GetAlbum(), "AlbumId", "Title");
            ViewData["ArtistId"] = new MultiSelectList(ArtistService.GetArtist(), "ArtistId", "Name");
            return View(album);
        }

        // GET: Albums/Edit/5
        public IActionResult Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var album = AlbumService.GetAlbum((int)id);
            ViewData["ArtistId"] = new MultiSelectList(ArtistService.GetArtist(), "ArtistId", "Name");
            if (album == null)
            {
                return NotFound();
            }
            
            return View(album);
        }

        // POST: Albums/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(int[] artistSelected, [Bind("AlbumId,Title,ImgUrl,Type,DateRelease,Featured,ArtistIds")] Album album)
        {
            if (ModelState.IsValid)
            {
                var oldObj = AlbumService.GetAlbumToEdit(album);
                if (oldObj.ImgUrl == "" || oldObj.ImgUrl == null)
                {
                    oldObj.ImgUrl = "~/img/defaultImg.png";
                }
                string oldFileName = Path.GetFileNameWithoutExtension(oldObj.ImgUrl);
                string oldFileNameExtension = Path.GetExtension(oldObj.ImgUrl);
                var files = HttpContext.Request.Form.Files;
                if (files.Count > 0)
                {
                    string wwwRootPath = _webHostEnviroment.WebRootPath;
                    string path = wwwRootPath + "/img/album/";
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
                    album.ImgUrl = "~/img/album/" + fileName;
                }
                else if (files.Count == 0)
                {
                    album.ImgUrl = oldObj.ImgUrl;
                }
                int count1 = AlbumService.PutAlbum(album);
                if (count1 >= artistSelected.Length + 1)
                    return RedirectToAction(nameof(Index));
                else
                    return View(album);
            }
            return View(album);
        }

        // POST: Albums/Delete/5
        //[HttpPost, ActionName("Delete")]
        //[ValidateAntiForgeryToken]
        public IActionResult Delete(int id)
        {
            var obj = AlbumService.GetAlbum((int)id);
            if (obj == null)
            {
                TempData["Error"] = "Error";
                return RedirectToAction("Index");
            }
            string wwwRootPath = _webHostEnviroment.WebRootPath;
            string path = wwwRootPath + "/img/album/";
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
            int count = AlbumService.DeleteAlbum(id);
            if (count > 0 )
            {
                TempData["Success"] = "Deleted";
                return RedirectToAction(nameof(Index));
            }
            else
            {
                TempData["Error"] = "Error Delete";
                return RedirectToAction(nameof(Index));
            }
        }
    }
}
