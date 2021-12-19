using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using L2M.Data;
using L2M.Models;

namespace L2M.Controllers
{
    public class Artist_SongController : Controller
    {
        private readonly Artist_SongContext _context;
        private readonly ILogger<Artist_SongController> _logger;

        public Artist_SongController(ILogger<Artist_SongController> logger, Artist_SongContext context)
        {
            _context = context;
            _logger = logger;
        }

        // GET: Artist_Song
        public async Task<IActionResult> Index()
        {
            var artist_SongContext = _context.Artist_Song.Include(a => a.Artist).Include(a => a.Song);
            return View(await artist_SongContext.ToListAsync());
        }

        // GET: Artist_Song/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var artist_Song = await _context.Artist_Song
                .Include(a => a.Artist)
                .Include(a => a.Song)
                .FirstOrDefaultAsync(m => m.ArtistId == id);
            if (artist_Song == null)
            {
                return NotFound();
            }

            return View(artist_Song);
        }

        // GET: Artist_Song/Create
        public IActionResult Create()
        {
            ViewData["ArtistId"] = new SelectList(_context.Set<Artist>(), "ArtistId", "ArtistId");
            ViewData["SongId"] = new SelectList(_context.Set<Song>(), "SongId", "SongId");
            return View();
        }

        // POST: Artist_Song/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("ArtistId,SongId")] Artist_Song artist_Song)
        {
            if (ModelState.IsValid)
            {
                _context.Add(artist_Song);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["ArtistId"] = new SelectList(_context.Set<Artist>(), "ArtistId", "ArtistId", artist_Song.ArtistId);
            ViewData["SongId"] = new SelectList(_context.Set<Song>(), "SongId", "SongId", artist_Song.SongId);
            return View(artist_Song);
        }

        // GET: Artist_Song/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var artist_Song = await _context.Artist_Song.FindAsync(id);
            if (artist_Song == null)
            {
                return NotFound();
            }
            ViewData["ArtistId"] = new SelectList(_context.Set<Artist>(), "ArtistId", "ArtistId", artist_Song.ArtistId);
            ViewData["SongId"] = new SelectList(_context.Set<Song>(), "SongId", "SongId", artist_Song.SongId);
            return View(artist_Song);
        }

        // POST: Artist_Song/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("ArtistId,SongId")] Artist_Song artist_Song)
        {
            if (id != artist_Song.ArtistId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(artist_Song);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!Artist_SongExists(artist_Song.ArtistId))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["ArtistId"] = new SelectList(_context.Set<Artist>(), "ArtistId", "ArtistId", artist_Song.ArtistId);
            ViewData["SongId"] = new SelectList(_context.Set<Song>(), "SongId", "SongId", artist_Song.SongId);
            return View(artist_Song);
        }

        // GET: Artist_Song/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var artist_Song = await _context.Artist_Song
                .Include(a => a.Artist)
                .Include(a => a.Song)
                .FirstOrDefaultAsync(m => m.ArtistId == id);
            if (artist_Song == null)
            {
                return NotFound();
            }

            return View(artist_Song);
        }

        // POST: Artist_Song/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var artist_Song = await _context.Artist_Song.FindAsync(id);
            _context.Artist_Song.Remove(artist_Song);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool Artist_SongExists(int id)
        {
            return _context.Artist_Song.Any(e => e.ArtistId == id);
        }
    }
}
