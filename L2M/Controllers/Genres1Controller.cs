using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using L2M.Data;
using L2M.Models;

namespace L2M.Controllers
{
    public class Genres1Controller : Controller
    {
        private readonly L2MContext _context;

        public Genres1Controller(L2MContext context)
        {
            _context = context;
        }

        // GET: Genres1
        public IActionResult Index()
        {
            return View(_context.GetGenre());
        }

        // GET: Genres1/Details/5
        public IActionResult Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var genre = _context.GetGenre((int)id);

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
        public IActionResult Create([Bind("GenreId,Name,ImgUrl,Description")] Genre genre)
        {
            if (ModelState.IsValid)
            {
                _context.PostGenre(genre);
                return RedirectToAction(nameof(Index));
            }
            return View(genre);
        }

        // GET: Genres1/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var genre = await _context.Genre.FindAsync(id);
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
                int count = _context.PutGenre(id ,genre);
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

            var genre = _context.GetGenre((int)id);

            if (genre == null)
            {
                return NotFound();
            }

            return View(genre);
        }

        // POST: Genres1/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var genre = await _context.Genre.FindAsync(id);
            _context.Genre.Remove(genre);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool GenreExists(int id)
        {
            return _context.Genre.Any(e => e.GenreId == id);
        }
    }
}
