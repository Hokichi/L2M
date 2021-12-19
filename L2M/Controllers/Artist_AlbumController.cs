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
    public class Artist_AlbumController : Controller
    {
        private readonly Artist_AlbumContext _context;
        private readonly ILogger<Artist_AlbumController> _logger;

        public Artist_AlbumController(ILogger<Artist_AlbumController> logger, Artist_AlbumContext context)
        {
            _context = context;
            _logger = logger;
        }

        // GET: Artist_Album
        public async Task<IActionResult> Index()
        {
            var artist_AlbumContext = _context.Artist_Album.Include(a => a.Album).Include(a => a.Artist);
            return View(await artist_AlbumContext.ToListAsync());
        }

        // GET: Artist_Album/Details/5
        public async Task<IActionResult> Details(int? artistId, int? albumId)
        {
            if (artistId == null || albumId == null)
            {
                return NotFound();
            }

            var artist_Album = await _context.Artist_Album
                .Include(a => a.Album)
                .Include(a => a.Artist)
                .FirstOrDefaultAsync(m => m.ArtistId == artistId && m.AlbumId == albumId);
            if (artist_Album == null)
            {
                return NotFound();
            }

            return View(artist_Album);
        }

        // GET: Artist_Album/Create
        public IActionResult Create()
        {
            ViewData["AlbumId"] = new SelectList(_context.Set<Album>(), "AlbumId", "AlbumId");
            ViewData["ArtistId"] = new SelectList(_context.Set<Artist>(), "ArtistId", "ArtistId");
            return View();
        }

        // POST: Artist_Album/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("ArtistId,AlbumId")] Artist_Album artist_Album)
        {
            if (ModelState.IsValid)
            {
                _context.Add(artist_Album);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["AlbumId"] = new SelectList(_context.Set<Album>(), "AlbumId", "AlbumId", artist_Album.AlbumId);
            ViewData["ArtistId"] = new SelectList(_context.Set<Artist>(), "ArtistId", "ArtistId", artist_Album.ArtistId);
            return View(artist_Album);
        }

        // GET: Artist_Album/Edit/
        public async Task<IActionResult> Edit(int? artistId, int? albumId)
        {
            if (artistId == null || albumId == null)
            {
                return NotFound();
            }

            var artist_Album = await _context.Artist_Album.FindAsync(artistId, albumId);
            if (artist_Album == null)
            {
                return NotFound();
            }
            ViewData["AlbumId"] = new SelectList(_context.Set<Album>(), "AlbumId", "AlbumId", artist_Album.AlbumId);
            ViewData["ArtistId"] = new SelectList(_context.Set<Artist>(), "ArtistId", "ArtistId", artist_Album.ArtistId);
            return View(artist_Album);
        }

        // POST: Artist_Album/Edit/
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int artistId, int albumId, [Bind("ArtistId,AlbumId")] Artist_Album artist_Album)
        {
            if (artistId != artist_Album.ArtistId || albumId != artist_Album.AlbumId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(artist_Album);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!Artist_AlbumExists(artist_Album.ArtistId, artist_Album.AlbumId))
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
            ViewData["AlbumId"] = new SelectList(_context.Set<Album>(), "AlbumId", "AlbumId", artist_Album.AlbumId);
            ViewData["ArtistId"] = new SelectList(_context.Set<Artist>(), "ArtistId", "ArtistId", artist_Album.ArtistId);
            return View(artist_Album);
        }

        // GET: Artist_Album/Delete/
        public async Task<IActionResult> Delete(int? artistId, int? albumId)
        {
            if (artistId == null || albumId == null)
            {
                return NotFound();
            }

            var artist_Album = await _context.Artist_Album
                .Include(a => a.Album)
                .Include(a => a.Artist)
                .FirstOrDefaultAsync(m => m.ArtistId == artistId && m.AlbumId == albumId);
            if (artist_Album == null)
            {
                return NotFound();
            }

            return View(artist_Album);
        }

        // POST: Artist_Album/Delete/
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int artistId, int albumId)
        {
            var artist_Album = await _context.Artist_Album.FindAsync(artistId, albumId);
            _context.Artist_Album.Remove(artist_Album);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool Artist_AlbumExists(int? artistId, int? albumId)
        {
            return _context.Artist_Album.Any(e => e.ArtistId == artistId && e.AlbumId == albumId);
        }
    }
}
