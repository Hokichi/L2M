using L2M.Models;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace L2M.Services
{
    public class User_SongService : BaseService
    {
        public static IEnumerable<User_Song> GetUser_Song()
        {
            return _context.User_Song.Include(a => a.User)
                                    .Include(a => a.Song).ToList();
        }

        public static User_Song GetUser_Song(int id)
        {
            var artist_Album = _context.User_Song.Include(a => a.User)
                                    .Include(a => a.Song).FirstOrDefault(a => a.UserSongId == id);
            return artist_Album;
        }

        public static int PostUser_Song(User_Song userSong)
        {
            _context.User_Song.Add(userSong);
            int count = _context.SaveChanges();
            if (!User_SongExists(userSong.UserSongId))
            {
                return 0;
            }
            return count;
        }

        public static int PutUser_Song(int id, User_Song userSong)
        {
            int count = 0;
            try
            {
                _context.User_Song.Update(userSong);
                count = _context.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!User_SongExists(userSong.UserSongId))
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

        public static int DeleteUser_Song(int id)
        {
            var userSong = _context.Artist_Song.Find(id);

            if (userSong == null)
            {
                return 0;
            }
            _context.Artist_Song.Remove(userSong);
            int count = _context.SaveChanges();

            return count;
        }

        public static bool User_SongExists(int id)
        {
            return _context.User_Song.Any(e => e.UserSongId == id);
        }

        public static bool User_SongExists(int? userId, int? songId)
        {
            return _context.User_Song.Any(e => e.UserId == userId && e.SongId == songId);
        }
    }
}
