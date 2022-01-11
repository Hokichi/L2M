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
    public class Artist_AlbumController : Controller
    {
        public Artist_AlbumController()
        {

        }

        // GET: Artist_Album1
        public IActionResult Index()
        {
            return View(Artist_AlbumService.GetArtist_Album());
        }

        // GET: Artist_Album1/Details/5
        public IActionResult Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var artist_Album = Artist_AlbumService.GetArtist_Album((int)id);
            if (artist_Album == null)
            {
                return NotFound();
            }

            return View(artist_Album);
        }

        // GET: Artist_Album1/Create
        public IActionResult Create()
        {
            ViewData["AlbumId"] = new SelectList(AlbumService.GetAlbum(), "AlbumId", "Title");
            ViewData["ArtistId"] = new SelectList(ArtistService.GetArtist(), "ArtistId", "Name");
            return View();
        }

        // POST: Artist_Album1/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([Bind("ArtistId,AlbumId")] Artist_Album artist_Album)
        {
            if (ModelState.IsValid)
            {
                Artist_AlbumService.PostArtist_Album(artist_Album);
                return RedirectToAction(nameof(Index));
            }
            ViewData["AlbumId"] = new SelectList(AlbumService.GetAlbum(), "AlbumId", "Title", artist_Album.AlbumId);
            ViewData["ArtistId"] = new SelectList(ArtistService.GetArtist(), "ArtistId", "Name", artist_Album.ArtistId);
            return View(artist_Album);
        }

        // GET: Artist_Album1/Edit/5
        public IActionResult Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var artist_Album = Artist_AlbumService.GetArtist_Album((int)id);
            if (artist_Album == null)
            {
                return NotFound();
            }
            ViewData["AlbumId"] = new SelectList(AlbumService.GetAlbum(), "AlbumId", "Title", artist_Album.AlbumId);
            ViewData["ArtistId"] = new SelectList(ArtistService.GetArtist(), "ArtistId", "Name", artist_Album.ArtistId);
            return View(artist_Album);
        }

        // POST: Artist_Album1/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(int id, [Bind("ArtistAlbumId,ArtistId,AlbumId")] Artist_Album artist_Album)
        {
            if (id != artist_Album.ArtistAlbumId)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                Artist_AlbumService.PutArtist_Album(artist_Album);
                return RedirectToAction(nameof(Index));
            }
            ViewData["AlbumId"] = new SelectList(AlbumService.GetAlbum(), "AlbumId", "Title", artist_Album.AlbumId);
            ViewData["ArtistId"] = new SelectList(ArtistService.GetArtist(), "ArtistId", "Name", artist_Album.ArtistId);
            return View(artist_Album);
        }

        // GET: Artist_Album1/Delete/5
        public IActionResult Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var artist_Album = Artist_AlbumService.GetArtist_Album((int)id);
            if (artist_Album == null)
            {
                return NotFound();
            }

            return View(artist_Album);
        }

        // POST: Artist_Album1/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult DeleteConfirmed(int id)
        {
            Artist_AlbumService.DeleteArtist_Album(id);
            return RedirectToAction(nameof(Index));
        }
    }
}
