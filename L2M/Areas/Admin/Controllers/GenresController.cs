using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using L2M.Data;
using L2M.Models;
using L2M.Services;
using System.IO;
using Microsoft.AspNetCore.Hosting;

namespace L2M.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class GenresController : Controller
    {
        private readonly IWebHostEnvironment _webHostEnviroment;
        public GenresController(IWebHostEnvironment hostEnvironment)
        {
            GenreService.getContext();
            this._webHostEnviroment = hostEnvironment;
        }

        // GET: Genres1
        public IActionResult Index()
        {
            return View(GenreService.GetGenre());
        }
        // GET: Genres1/Details/5
        public IActionResult Detail(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var genre = GenreService.GetGenre((int)id);

            if (genre == null)
            {
                return NotFound();
            }

            return View(genre);
        }
         // GET: Genres1/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Genres1/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([Bind("Name,ImgUrl,Description")] Genre genre)
        {
            if (ModelState.IsValid)
            {
                var files = HttpContext.Request.Form.Files;
                if (files.Count == 0)
                {
                    genre.ImgUrl = "~/img/defaultImg.png";
                }
                else { 
                string wwwRootPath = _webHostEnviroment.WebRootPath;
                string path = wwwRootPath + "/img/genre/";
                string fileName = Path.GetFileNameWithoutExtension(files[0].FileName);
                string extension = Path.GetExtension(files[0].FileName);
                fileName = fileName + DateTime.Now.ToString("yymmssfff") + extension;
                using (var fileStream = new FileStream(Path.Combine(path, fileName ), FileMode.Create))
                {
                    files[0].CopyTo(fileStream);
                }
                genre.ImgUrl = "~/img/genre/" + fileName;
                }
                int count = GenreService.PostGenre(genre);
                if (count > 0)
                {
                    TempData["Success"] = "Added";
                    return RedirectToAction(nameof(Index));
                }
                else
                {
                    TempData["Error"] = "Error add";
                    return View(genre);
                }
            }
            TempData["Error"] = "Validation";
            return View(genre);
        }

        // GET: Genres1/Edit/5
        public IActionResult Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var genre = GenreService.GetGenre((int)id);
            if (genre == null)
            {
                return NotFound();
            }
            return View(genre);
        }

        // POST: Genres1/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit([Bind("GenreId,Name,ImgUrl,Description")] Genre genre)
        {
            if (ModelState.IsValid)
            {
                var oldObj = GenreService.GetGenreToEdit(genre);
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
                    string path = wwwRootPath + "/img/genre/";
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
                    genre.ImgUrl = "~/img/genre/" + fileName;
                }
                else if (files.Count == 0)
                {
                    genre.ImgUrl = oldObj.ImgUrl;
                }

                int count = GenreService.PutGenre(genre);
                if (count > 0)
                {
                    TempData["Success"] = "Edited";
                    return RedirectToAction(nameof(Index));
                }
                else
                {
                    TempData["Error"] = "Error edit";
                    return View(genre);
                }
            } else
            {
                TempData["Error"] = "Error edit";
            }
            return View(genre);
        }

        //[HttpPost, ActionName("Delete")]
        //[ValidateAntiForgeryToken]
        public IActionResult Delete(int id)
        {
            var obj = GenreService.GetGenre((int)id);
            if (obj == null)
            {
                TempData["Error"] = "Error";
                return RedirectToAction("Index");
            }
            string path = _webHostEnviroment.WebRootPath + "/img/genre/";
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
            int count = GenreService.DeleteGenre(id);
            if (count > 0)
            {
                TempData["Success"] = "Deleted";
                return RedirectToAction(nameof(Index));
            }
            TempData["Error"] = "Error delete";
            return RedirectToAction(nameof(Index));
        }

    }
}
