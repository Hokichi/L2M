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
    public class SongsController : Controller
    {
        private readonly L2MContext _context;

        public SongsController(L2MContext context)
        {
            _context = context;
            SongService.getContext();
        }

        // GET: Songs
        public IActionResult Index()
        {
            var songContext = SongService.GetSong();
            return View(songContext);
        }

        // GET: Songs/Details/5
        public IActionResult Details(int? id)
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

        // GET: Songs/Create
        public IActionResult Create()
        {
            ViewData["AlbumId"] = new SelectList(_context.Album, "AlbumId", "AlbumId");
            ViewData["GenreId"] = new SelectList(_context.Genre, "GenreId", "GenreId");
            return View();
        }

        // POST: Songs/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([Bind("SongId,Title,ImgUrl,Path,Duration,AlbumId,GenreId,TrackNo,Lyrics,DateRelease,Views")] Song song)
        {
            if (ModelState.IsValid)
            {
                _context.Song.Add(song);
                _context.SaveChanges();
                return RedirectToAction(nameof(Index));
            }
            ViewData["AlbumId"] = new SelectList(_context.Album, "AlbumId", "AlbumId", song.AlbumId);
            ViewData["GenreId"] = new SelectList(_context.Genre, "GenreId", "GenreId", song.GenreId);
            return View(song);
        }

        // GET: Songs/Edit/5
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
            ViewData["AlbumId"] = new SelectList(_context.Album, "AlbumId", "AlbumId", song.AlbumId);
            ViewData["GenreId"] = new SelectList(_context.Genre, "GenreId", "Name", song.GenreId);
            return View(song);
        }

        // POST: Songs/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(int id, [Bind("SongId,Title,ImgUrl,Path,Duration,AlbumId,GenreId,TrackNo,Lyrics,DateRelease,Views")] Song song)
        {
            if (id != song.SongId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
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

        // GET: Songs/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var song = await _context.Song
                .Include(s => s.Album)
                .Include(s => s.Genre)
                .FirstOrDefaultAsync(m => m.SongId == id);
            if (song == null)
            {
                return NotFound();
            }

            return View(song);
        }

        // POST: Songs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var song = await _context.Song.FindAsync(id);
            _context.Song.Remove(song);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool SongExists(int id)
        {
            return _context.Song.Any(e => e.SongId == id);
        }
    }
}
