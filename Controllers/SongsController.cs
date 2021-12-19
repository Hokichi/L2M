﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using L2M.Data;
using L2M.Models;
using Microsoft.Extensions.Logging;

namespace L2M.Controllers
{
    public class SongsController : Controller
    {
        private readonly SongContext _context;
        private readonly ILogger<SongsController> _logger;

        public SongsController(ILogger<SongsController> logger, SongContext context)
        {
            _context = context;
            _logger = logger;
        }

        // GET: Songs
        public async Task<IActionResult> Index()
        {
            var songContext = _context.Song.Include(s => s.Album).Include(s => s.Genre);
            return View(await songContext.ToListAsync());
        }

        // GET: Songs/Details/5
        public async Task<IActionResult> Details(int? id)
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

        // GET: Songs/Create
        public IActionResult Create()
        {
            ViewData["AlbumId"] = new SelectList(_context.Set<Album>(), "AlbumId", "AlbumId");
            ViewData["GenreID"] = new SelectList(_context.Set<Genre>(), "GenreId", "GenreId");
            return View();
        }

        // POST: Songs/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("SongId,Title,Img_Url,Path,Duration,AlbumId,GenreID,Track_no")] Song song)
        {
            if (ModelState.IsValid)
            {
                _context.Add(song);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["AlbumId"] = new SelectList(_context.Set<Album>(), "AlbumId", "AlbumId", song.AlbumId);
            ViewData["GenreID"] = new SelectList(_context.Set<Genre>(), "GenreId", "GenreId", song.GenreID);
            return View(song);
        }

        // GET: Songs/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var song = await _context.Song.FindAsync(id);
            if (song == null)
            {
                return NotFound();
            }
            ViewData["AlbumId"] = new SelectList(_context.Set<Album>(), "AlbumId", "AlbumId", song.AlbumId);
            ViewData["GenreID"] = new SelectList(_context.Set<Genre>(), "GenreId", "GenreId", song.GenreID);
            return View(song);
        }

        // POST: Songs/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("SongId,Title,Img_Url,Path,Duration,AlbumId,GenreID,Track_no")] Song song)
        {
            if (id != song.SongId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(song);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!SongExists(song.SongId))
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
            ViewData["AlbumId"] = new SelectList(_context.Set<Album>(), "AlbumId", "AlbumId", song.AlbumId);
            ViewData["GenreID"] = new SelectList(_context.Set<Genre>(), "GenreId", "GenreId", song.GenreID);
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
