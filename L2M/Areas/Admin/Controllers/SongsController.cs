using L2M.Data;
using L2M.Models;
using L2M.Services;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;

namespace L2M.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class SongsController : Controller
    {
        private readonly IWebHostEnvironment _webHostEnviroment;
        private readonly L2MContext _context;
        public SongsController(IWebHostEnvironment hostEnvironment, L2MContext context)
        {
            _context = context;
            SongService.getContext();
            this._webHostEnviroment = hostEnvironment;
        }

        // GET: Songs1
        public IActionResult Index()
        {
            var songContext = SongService.GetSongWithListArtist();
            return View(songContext);
        }
        // GET: Songs1/Details/5
        public IActionResult Detail(int? id)
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
        // GET: Songs1/Create
        public IActionResult Create()
        {
            ViewData["AlbumId"] = new SelectList(AlbumService.GetAlbum(), "AlbumId", "Title");
            ViewData["ArtistId"] = new MultiSelectList(ArtistService.GetArtist(), "ArtistId", "Name");
            ViewData["GenreId"] = new SelectList(GenreService.GetGenre(), "GenreId", "Name");
            return View();
        }

        // POST: Songs1/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([Bind("SongId,Title,ImgUrl,Path,Duration,AlbumId,GenreId,Lyrics,DateRelease,ArtistIds,UploadType")] Song song, string UploadType)
        {
            if (ModelState.IsValid)
            {
                var files = HttpContext.Request.Form.Files;
                string wwwRootPath = _webHostEnviroment.WebRootPath;
                int countAudio = 0;
                int countImage = 0;
                int indexAudio = -1;
                int indexImg = -1;
                for (int i = 0; i < files.Count; i++)
                {
                    if (files[i].ContentType == "audio/mpeg")
                    {
                        countAudio++;
                        indexAudio = i;
                    }
                    if (files[i].Name == "ImgUrl")
                    {
                        countImage++;
                        indexImg = i;
                    }
                } 
                if (UploadType == "Audio")
                {
                    if (countAudio == 0)
                    {
                        return View(song);
                    } else
                    {
                        string fileNameAudio = Path.GetFileName(files[indexAudio].FileName);
                        string pathToSave = wwwRootPath + "/audio";
                        using (var fileStream = new FileStream(Path.Combine(pathToSave, fileNameAudio), FileMode.Create))
                        {
                            files[indexAudio].CopyTo(fileStream);
                        }
                        song.Path = "~/audio/" + fileNameAudio;
                        song.Upload = Models.UploadType.Audio;
                    }                 
                } else if (UploadType == "Link")
                {
                    if (song.Path == null || song.Path == "")
                    {
                        return View(song);
                    }
                    song.Upload = Models.UploadType.Link;
                }
                if (countImage == 0)
                {
                    song.ImgUrl = "~/img/defaultImg.png";
                } else
                {
                    string path = wwwRootPath + "/img/song/";
                    string fileName = Path.GetFileNameWithoutExtension(files[indexImg].FileName);
                    string extension = Path.GetExtension(files[0].FileName);
                    fileName = fileName + DateTime.Now.ToString("yymmssfff") + extension;
                    using (var fileStream = new FileStream(Path.Combine(path, fileName), FileMode.Create))
                    {
                        files[indexImg].CopyTo(fileStream);
                    }
                    song.ImgUrl = "~/img/song/" + fileName;
                }
                int count = SongService.PostSong(song);
                if (count > 0)
                {
                    TempData["Success"] = "Added";
                    return RedirectToAction(nameof(Index));
                }
                else
                {
                    TempData["Error"] = "Error add";
                    return View(song);
                }
            }
            ViewData["AlbumId"] = new SelectList(AlbumService.GetAlbum(), "AlbumId", "Title");
            ViewData["ArtistId"] = new MultiSelectList(ArtistService.GetArtist(), "ArtistId", "Name");
            ViewData["GenreId"] = new SelectList(GenreService.GetGenre(), "GenreId", "Name");
            return View(song);
        }

        // GET: Songs1/Edit/5
        public IActionResult Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var song = SongService.GetSong((int)id);
            ViewData["AlbumId"] = new SelectList(AlbumService.GetAlbum(), "AlbumId", "Title");
            ViewData["ArtistId"] = new MultiSelectList(ArtistService.GetArtist(), "ArtistId", "Name");
            ViewData["GenreId"] = new SelectList(GenreService.GetGenre(), "GenreId", "Name");
            if (song == null)
            {
                return NotFound();
            }

            return View(song);
        }

        // POST: Songs1/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(int id, [Bind("SongId,Title,ImgUrl,Path,Duration,AlbumId,GenreId,TrackNo,Lyrics,DateRelease,Upload")] Song song)
        {
            if (ModelState.IsValid)
            {
                var oldObj = SongService.GetSongToEdit(song);
                if (oldObj.ImgUrl == "" || oldObj.ImgUrl == null)
                {
                    oldObj.ImgUrl = "~/img/defaultImg.png";
                }
                string wwwRootPath = _webHostEnviroment.WebRootPath;
                string oldFileName = Path.GetFileNameWithoutExtension(oldObj.ImgUrl);
                string oldFileNameExtension = Path.GetExtension(oldObj.ImgUrl);
                var files = HttpContext.Request.Form.Files;
                int countAudio = 0;
                int countImage = 0;
                int indexAudio = -1;
                int indexImg = -1;
                for (int i = 0; i < files.Count; i++)
                {
                    if (files[i].ContentType == "audio/mpeg")
                    {
                        countAudio++;
                        indexAudio = i;
                    }
                    if (files[i].Name == "ImgUrl")
                    {
                        countImage++;
                        indexImg = i;
                    }
                }
                if (countImage > 0)
                {
                    string path = wwwRootPath + "/img/song/";
                    string fileName = Path.GetFileNameWithoutExtension(files[indexImg].FileName);
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
                        files[indexImg].CopyTo(fileStream);
                    }
                    song.ImgUrl = "~/img/song/" + fileName;
                }
                else if (countImage == 0)
                {
                    song.ImgUrl = oldObj.ImgUrl;
                }
                if (countAudio > 0 && song.Upload.ToString() == "Audio")
                {
                    string pathToSave = wwwRootPath + "/audio";                    
                    UploadType oldUploadType = oldObj.Upload.Value;
                    if (oldUploadType.ToString() == "Audio")
                    {
                        oldFileName = Path.GetFileNameWithoutExtension(oldObj.Path);
                        oldFileNameExtension = Path.GetExtension(oldObj.Path);
                        oldFileName += oldFileNameExtension;
                        var oldFile = Path.Combine(pathToSave, oldFileName);
                        if (System.IO.File.Exists(oldFile))
                        {
                            System.IO.File.Delete(oldFile);
                        }
                    }
                    string fileNameAudio = Path.GetFileName(files[indexAudio].FileName);
                    using (var fileStream = new FileStream(Path.Combine(pathToSave, fileNameAudio), FileMode.Create))
                    {
                        files[indexAudio].CopyTo(fileStream);
                    }
                    song.Path = "~/audio/" + fileNameAudio;
                } else if (song.Upload.ToString() == "Link")
                {
                    if (song.Path == null || song.Path == "")
                    {
                        return View(song);
                    }
                } else
                {
                    return View(song);
                }
                int count = SongService.PutSong(song);
                if (count > 0)
                {
                    TempData["Success"] = "Edited";
                    return RedirectToAction(nameof(Index));
                }    
                else
                {
                    TempData["Error"] = "Error edit";
                    return View(song);
                }   
            }
            ViewData["AlbumId"] = new SelectList(_context.Album, "AlbumId", "AlbumId", song.AlbumId);
            ViewData["GenreId"] = new SelectList(_context.Genre, "GenreId", "GenreId", song.GenreId);
            return View(song);
        }

        //[HttpPost, ActionName("Delete")]
        //[ValidateAntiForgeryToken]
        public IActionResult Delete(int id)
        {
            var obj = SongService.GetSong((int)id);
            if (obj == null)
            {
                TempData["Error"] = "Error";
                return RedirectToAction("Index");
            }
            string wwwRootPath = _webHostEnviroment.WebRootPath;
            string path = wwwRootPath + "/img/song/";
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
            if (obj.Upload.ToString() == "Audio")
            {
                string pathToSave = wwwRootPath + "/audio";
                UploadType oldUploadType = obj.Upload.Value;
                if (oldUploadType.ToString() == "Audio")
                {
                    oldFileName = Path.GetFileNameWithoutExtension(obj.Path);
                    oldFileNameExtension = Path.GetExtension(obj.Path);
                    oldFileName += oldFileNameExtension;
                    var oldFile = Path.Combine(pathToSave, oldFileName);
                    if (System.IO.File.Exists(oldFile))
                    {
                        System.IO.File.Delete(oldFile);
                    }
                }
            }
            int count = SongService.DeleteSong(id);
            if (count > 0)
            {
                TempData["Success"] = "Deleted";
                return RedirectToAction("Index");
            }
            TempData["Error"] = "Error delete";
            return RedirectToAction(nameof(Index));
        }
    }
}
