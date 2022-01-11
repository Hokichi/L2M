using L2M.Models;
using L2M.Services;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;

namespace L2M.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class PlaylistController : Controller
    {
        private readonly IWebHostEnvironment _webHostEnviroment;
        public PlaylistController(IWebHostEnvironment hostEnvironment)
        {
            PlaylistService.getContext();
            this._webHostEnviroment = hostEnvironment;
        }

        // GET: Playlists1
        public IActionResult Index()
        {
            return View(PlaylistService.GetPlaylist());
        }
        // GET: Playlists1/Details/5
        public IActionResult Detail(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var playlist = PlaylistService.GetPlaylist((int)id);

            if (playlist == null)
            {
                return NotFound();
            }

            return View(playlist);
        }
        // GET: Playlists1/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Playlists1/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([Bind("Title,ImgUrl,Description,Featured")] Playlist playlist)
        {
            if (ModelState.IsValid)
            {
                var files = HttpContext.Request.Form.Files;
                if (files.Count == 0)
                {
                    playlist.ImgUrl = "~/img/defaultImg.png";
                }
                else
                {
                    string wwwRootPath = _webHostEnviroment.WebRootPath;
                    string path = wwwRootPath + "/img/playlist/";
                    string fileName = Path.GetFileNameWithoutExtension(files[0].FileName);
                    string extension = Path.GetExtension(files[0].FileName);
                    fileName = fileName + DateTime.Now.ToString("yymmssfff") + extension;
                    using (var fileStream = new FileStream(Path.Combine(path, fileName), FileMode.Create))
                    {
                        files[0].CopyTo(fileStream);
                    }
                    playlist.ImgUrl = "~/img/playlist/" + fileName;
                }
                playlist.UserId = 1;
                int count = PlaylistService.PostPlaylist(playlist);
                if (count > 0)
                {
                    TempData["Success"] = "Added";
                    return RedirectToAction(nameof(Index));
                }
                else
                {
                    TempData["Error"] = "Error add";
                    return View(playlist);
                }
            }
            return View(playlist);
        }

        // GET: Playlists1/Edit/5
        public IActionResult Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }
            var playlist = PlaylistService.GetPlaylist((int)id);
            var songs = SongService.GetSong();
            var playlist_song = Playlist_SongService.GetByPlaylistId(playlist.PlaylistId);
            var songsofplaylist = playlist_song.Select(a => a.Song).ToList();
            ViewData["songs"] = songs;
            ViewData["songsofplaylist"] = songsofplaylist;
            if (playlist == null || songsofplaylist == null || songs == null)
            {
                return NotFound();
            }
            return View(playlist);
        }

        public IActionResult AddToPlaylist(int id1, int id2)
        {
            Playlist_Song ps = new Playlist_Song();
            ps.SongId = id1;
            ps.PlaylistId = id2;
            int count = Playlist_SongService.PostPlaylist_Song(ps);
            if (count > 0)
            {
                TempData["Success"] = "Added";
            }
            else
            {
                TempData["Error"] = "Error add";
            }
            return Redirect(Request.Headers["Referer"].ToString());
        }

        public IActionResult RemoveSongFromPlaylist(int id1, int id2)
        {
            Playlist_Song ps = new Playlist_Song();
            ps = Playlist_SongService.GetPlaylist_SongBy2Id(id1, id2);
            int count = Playlist_SongService.DeletePlaylist_Song(ps.PlaylistSongId);
            if (count > 0)
            {
                TempData["Success"] = "Deleted";
            }
            else
            {
                TempData["Error"] = "Error Delete";
            }
            return Redirect(Request.Headers["Referer"].ToString());
        }

        // POST: Playlists1/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit([Bind("PlaylistId,Title,ImgUrl,UserId,Description,Featured")] Playlist playlist)
        {
            if (ModelState.IsValid)
            {
                var oldObj = PlaylistService.GetPlaylistToEdit(playlist);
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
                    string path = wwwRootPath + "/img/playlist/";
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
                    playlist.ImgUrl = "~/img/playlist/" + fileName;
                }
                else if (files.Count == 0)
                {
                    playlist.ImgUrl = oldObj.ImgUrl;
                }

                int count = PlaylistService.PutPlaylist(playlist);
                if (count > 0)
                {
                    TempData["Success"] = "Edited";
                    return RedirectToAction(nameof(Index));
                }
                else
                {
                    TempData["Error"] = "Error edit";
                    return View(playlist);

                }
            }
            return View(playlist);
        }

        public ActionResult Delete(int id)
        {
            var obj = PlaylistService.GetPlaylist((int)id);
            if (obj == null)
            {
                TempData["Error"] = "Error";
                return RedirectToAction("Index");
            }
            string path = _webHostEnviroment.WebRootPath + "/img/playlist/";
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
            int count = PlaylistService.DeletePlaylist(id);
            if (count > 0)
            {
                TempData["Success"] = "Deleted";
                return RedirectToAction(nameof(Index));
            }
            TempData["Error"] = "Error delete";
            return RedirectToAction(nameof(Index));
        }


        //[HttpPost, ActionName("Delete")]
        //[ValidateAntiForgeryToken]
        //public IActionResult Delete(int id)
        //{
        //    var obj = PlaylistService.GetPlaylist((int)id);
        //    if (obj == null)
        //    {
        //        TempData["Error"] = "Error";
        //        return RedirectToAction("Index");
        //    }
        //    string path = _webHostEnviroment.WebRootPath + "/img/playlist/";
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
        //    PlaylistService.DeletePlaylist(id);
        //    TempData["Success"] = "Success";
        //    return RedirectToAction("Index");
        //}
    }
}
