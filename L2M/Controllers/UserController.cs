using L2M.Services;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace L2M.Controllers
{
    public class UserController : Controller
    {
        public UserController()
        {
            UserService.getContext();
        }
        public IActionResult Index(int id)
        {
            var user = UserService.GetUserDetail((int)id);
            var songs = user.Songs;
            var playlists = user.LikePlaylists;
            var albums = user.Albums;
            var artists = user.Artists;
            ViewData["songs"] = songs;
            ViewData["playlists"] = playlists;
            ViewData["albums"] = albums;
            ViewData["artists"] = artists;
            if (user == null)
            {
                return NotFound();
            }
            return View(user);
        }
    }
}
