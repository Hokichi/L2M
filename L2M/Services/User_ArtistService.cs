using L2M.Models;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace L2M.Services
{
    public class User_ArtistService : BaseService
    {
        public static IEnumerable<User_Artist> GetUser_Artist()
        {
            return _context.User_Artist.Include(a => a.User)
                                    .Include(a => a.Artist).ToList();
        }

        public static User_Artist GetUser_Artist(int id)
        {
            var userArtist = _context.User_Artist.Include(a => a.User)
                                    .Include(a => a.Artist).FirstOrDefault(a => a.UserArtistId == id);
            return userArtist;
        }

        public static int PostUser_Artist(User_Artist userArtist)
        {
            _context.User_Artist.Add(userArtist);
            int count = _context.SaveChanges();
            if (!User_ArtistExists(userArtist.UserArtistId))
            {
                return 0;
            }
            return count;
        }

        public static int PutUser_Artist(int id, User_Artist userArtist)
        {
            int count = 0;
            try
            {
                _context.User_Artist.Update(userArtist);
                count = _context.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!User_ArtistExists(userArtist.UserArtistId))
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

        public static int DeleteUser_Artist(int id)
        {
            var userArtist = _context.User_Artist.Find(id);

            if (userArtist == null)
            {
                return 0;
            }
            _context.User_Artist.Remove(userArtist);
            int count = _context.SaveChanges();

            return count;
        }

        public static bool User_ArtistExists(int id)
        {
            return _context.User_Artist.Any(e => e.UserArtistId == id);
        }

        public static bool User_ArtistExists(int? userId, int? artistId)
        {
            return _context.User_Artist.Any(e => e.UserId == userId && e.ArtistId == artistId);
        }
    }
}
