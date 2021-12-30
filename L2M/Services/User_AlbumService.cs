using L2M.Models;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace L2M.Services
{
    public class User_AlbumService : BaseService
    {
        public static IEnumerable<User_Album> GetUser_Album()
        {
            return _context.User_Album.Include(a => a.User)
                                    .Include(a => a.Album).ToList();
        }

        public static User_Album GetUser_Album(int id)
        {
            var artist_Album = _context.User_Album.Include(a => a.User)
                                    .Include(a => a.Album).FirstOrDefault(a => a.UserAlbumId == id);
            return artist_Album;
        }

        public static int PostUser_Album(User_Album userAlbum)
        {
            _context.User_Album.Add(userAlbum);
            int count = _context.SaveChanges();
            if (!User_AlbumExists(userAlbum.UserAlbumId))
            {
                return 0;
            }
            return count;
        }

        public static int PutUser_Album(int id, User_Album userAlbum)
        {
            int count = 0;
            try
            {
                _context.User_Album.Update(userAlbum);
                count = _context.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!User_AlbumExists(userAlbum.UserAlbumId))
                {
                    return 0;
                }
                else
                {
                    throw;
                }
            }
            return count;
        }

        public static int DeleteUser_Album(int id)
        {
            var userAlbum = _context.Artist_Song.Find(id);

            if (userAlbum == null)
            {
                return 0;
            }
            _context.Artist_Song.Remove(userAlbum);
            int count = _context.SaveChanges();

            return count;
        }

        public static bool User_AlbumExists(int id)
        {
            return _context.User_Album.Any(e => e.UserAlbumId == id);
        }

        public static bool User_AlbumExists(int? userId, int? albumId)
        {
            return _context.User_Album.Any(e => e.UserId == userId && e.AlbumId == albumId);
        }
    }
}
