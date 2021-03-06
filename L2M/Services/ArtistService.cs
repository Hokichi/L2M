using L2M.Models;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace L2M.Services
{
    public class ArtistService : BaseService
    {
        public static IEnumerable<Artist> GetArtist()
        {
            return _context.Artist.AsNoTracking().ToList();
        }

        public static Artist GetArtist(int id)
        {
            var artist = _context.Artist.AsNoTracking().Include(a => a.Songs)
                .Include(a => a.Albums).FirstOrDefault(u => u.ArtistId == id);
            return artist;
        }

        public static Artist GetArtistToEdit(Artist artist)
        {
            var obj = _context.Artist.AsNoTracking().FirstOrDefault(u => u.ArtistId == artist.ArtistId);
            return obj;
        }

        public static int GetTotal()
        {
            int count = _context.Artist.AsNoTracking().Count();
            return count;
        }

        public static int PostArtist(Artist artist)
        {
            _context.Artist.Add(artist);
            int count = _context.SaveChanges();
            if (!ArtistExists(artist.ArtistId))
            {
                return 0;
            }
            return count;
        }

        public static int PutArtist(Artist artist)
        {
            int count = 0;
            try
            {
                _context.Artist.Update(artist);
                count = _context.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ArtistExists(artist.ArtistId))
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

        public static int DeleteArtist(int id)
        {
            var artist = _context.Artist.Find(id);

            if (artist == null)
            {
                return 0;
            }
            _context.Artist.Remove(artist);
            int count = _context.SaveChanges();

            return count;
        }

        public static bool ArtistExists(int id)
        {
            return _context.Artist.Any(e => e.ArtistId == id);
        }
    }
}
