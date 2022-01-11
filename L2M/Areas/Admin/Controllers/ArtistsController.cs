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
using System.IO;
using L2M.Services;
using System.Diagnostics;

namespace L2M.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class ArtistsController : Controller
    {
        private readonly IWebHostEnvironment _webHostEnviroment;

        public ArtistsController(IWebHostEnvironment hostEnvironment)
        {
            this._webHostEnviroment = hostEnvironment;
        }

        // GET: Artists
        public IActionResult Index()
        {
            return View(ArtistService.GetArtist());
        }

        // GET: Artists/Details/5
        public IActionResult Detail(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }
            var artist = ArtistService.GetArtist((int)id);
            if (artist == null)
            {
                return NotFound();
            }

            return View(artist);
        }

        // GET: Artists/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Artists/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([Bind("Name,Description,ImgUrl")] Artist artist)
        {
            if (ModelState.IsValid)
            {
                var files = HttpContext.Request.Form.Files;
                if (files.Count == 0)
                {
                    artist.ImgUrl = "~/img/defaultImg.png";
                }else { 
                    string wwwRootPath = _webHostEnviroment.WebRootPath;
                    string path = wwwRootPath + "/img/artist/";
                    string fileName = Path.GetFileNameWithoutExtension(files[0].FileName);
                    string extension = Path.GetExtension(files[0].FileName);
                    fileName = fileName + DateTime.Now.ToString("yymmssfff") + extension;
                    using (var fileStream = new FileStream(Path.Combine(path, fileName), FileMode.Create))
                    {
                        files[0].CopyTo(fileStream);
                    }
                    artist.ImgUrl = "~/img/artist/" + fileName;
                }
                int count  = ArtistService.PostArtist(artist);
                if (count > 0)
                {
                    TempData["Success"] = "Added";
                    return RedirectToAction(nameof(Index));
                } else
                {
                    TempData["Error"] = "Error add";
                    return View(artist);
                }
            } else
            {
                TempData["Error"] = "Validation";
                return View(artist);
            }
        }

        // GET: Artists/Edit/5
        public IActionResult Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var artist = ArtistService.GetArtist((int)id);
            if (artist == null)
            {
                return NotFound();
            }
            return View(artist);
        }

        // POST: Artists/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit([Bind("ArtistId,Name,Description,ImgUrl")] Artist artist)
        {
            if (ModelState.IsValid)
            {
                var oldObj = ArtistService.GetArtistToEdit(artist);
                string oldFileName = Path.GetFileNameWithoutExtension(oldObj.ImgUrl);
                string oldFileNameExtension = Path.GetExtension(oldObj.ImgUrl);
                var files = HttpContext.Request.Form.Files;
                if (files.Count > 0)
                {
                    string wwwRootPath = _webHostEnviroment.WebRootPath;
                    string path = wwwRootPath + "/img/artist/";
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
                    artist.ImgUrl = "~/img/artist/" + fileName;
                } else if (files.Count == 0)
                {
                    artist.ImgUrl = oldObj.ImgUrl;
                }
                int count = ArtistService.PutArtist(artist);
                if (count > 0)
                {
                    TempData["Success"] = "Edited";
                    return RedirectToAction(nameof(Index));
                }
                else
                {
                    TempData["Error"] = "Error edit";
                    return View(artist);
                }
                    
            }
            return View(artist);
        }

        public IActionResult Delete(int id)
        {
            var obj = ArtistService.GetArtist((int)id);
            if (obj == null)
            {
                TempData["Error"] = "Error";
                return RedirectToAction("Index");
            }
            string wwwRootPath = _webHostEnviroment.WebRootPath;
            string path = wwwRootPath + "/img/artist/";
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
            int count = ArtistService.DeleteArtist(id);
            if (count > 0)
            {
                TempData["Success"] = "Deleted";
                return RedirectToAction(nameof(Index));
            }
            TempData["Error"] = "Error delete";
            return RedirectToAction(nameof(Index));
        }
        // POST: Artists/Delete/5
        //[HttpPost, ActionName("Delete")]
        //[ValidateAntiForgeryToken]
        //public IActionResult Delete(int id)
        //{
        //    var obj = ArtistService.GetArtist((int)id);
        //    if (obj == null)
        //    {
        //        TempData["Error"] = "Error";
        //        return RedirectToAction("Index");
        //    }
        //    string wwwRootPath = _webHostEnviroment.WebRootPath;
        //    string path = wwwRootPath + "/img/artist/";
        //    string oldFileName = Path.GetFileNameWithoutExtension(obj.ImgUrl);
        //    string oldFileNameExtension = Path.GetExtension(obj.ImgUrl);
        //    if (oldFileName != "defaultImg" || oldFileName != "")
        //    {
        //        oldFileName = oldFileName + oldFileNameExtension;
        //        var oldFile = Path.Combine(path, oldFileName);
        //        if (System.IO.File.Exists(oldFile))
        //        {
        //            System.IO.File.Delete(oldFile);
        //        }
        //    }
        //    ArtistService.DeleteArtist(id);
        //    TempData["Success"] = "Success";
        //    return RedirectToAction(nameof(Index));
        //}
    }
}
