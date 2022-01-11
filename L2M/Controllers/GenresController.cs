using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using L2M.Data;
using L2M.Models;
using L2M.Services;

namespace L2M.Controllers
{
    public class GenresController : Controller
    {
        public GenresController()
        {
            GenreService.getContext();
        }

        // GET: Genres1
        public IActionResult Index()
        {
            return View(GenreService.GetGenre());
        }

        // GET: Genres1/Details/5
        public IActionResult Details(int? id)
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
                GenreService.PostGenre(genre);
                return RedirectToAction(nameof(Index));
            }
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
        public IActionResult Edit(int id, [Bind("GenreId,Name,ImgUrl,Description")] Genre genre)
        {
            if (id != genre.GenreId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                int count = GenreService.PutGenre(genre);
                if (count > 0)
                    return RedirectToAction(nameof(Index));
                else
                    return View(genre);
            }

            return View(genre);
        }

        // GET: Genres1/Delete/5
        public IActionResult Delete(int? id)
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

        // POST: Genres1/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult DeleteConfirmed(int id)
        {
            GenreService.DeleteGenre(id);
            return RedirectToAction(nameof(Index));
        }
    }
}
