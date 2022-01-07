using L2M.Data;
using L2M.Models;
using L2M.Services;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace L2M.Controllers
{
    public class AdminController : Controller
    {

        public AdminController(L2MContext context)
        {
            GenreService.getContext();
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Artist()
        {
            return View();
        }

        public IActionResult UpsertArtist(int? id)
        {
            return View();
        }

        [HttpDelete]
        public async Task<IActionResult> DeleteArtist(int id)
        {
            //var bookFromDb = await _db.Books.FirstOrDefaultAsync(u => u.Id == id);
            //if (bookFromDb == null)
            //{
            //    return Json(new { success = false, message = "Error while Deleting" });
            //}
            //_db.Books.Remove(bookFromDb);
            //await _db.SaveChangesAsync();
            return Json(new { success = true, message = "Delete successful" });
        }

        public IActionResult Genre()
        {
            return View();
        }

        public IActionResult UpsertGenre(int? id)
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult UpsertGenre([Bind("GenreId,Name,ImgUrl,Description")] Genre genre)
        {
            if (ModelState.IsValid)
            {
                int count = GenreService.PostGenre(genre);
                if (count > 0)
                    return RedirectToAction(nameof(UpsertGenre));
                else
                    return View(genre);
            }

            return View(genre);
        }

        public IActionResult Album()
        {
            return View();
        }
        public IActionResult UpsertAlbum(int? id)
        {
            return View();
        }


        public IActionResult Song()
        {
            return View();
        }

        public IActionResult UpsertSong(int? id)
        {
            return View();
        }

        public IActionResult Playlist()
        {
            return View();
        }

        public IActionResult UpsertPlaylist(int? id)
        {
            return View();
        }

        public IActionResult ListSongOfPlaylist(int? id)
        {
            return View();
        }
        //public IActionResult User()
        //{
        //    return View();
        //}

        public IActionResult UpsertUser(int? id)
        {
            return View();
        }

    }
}
