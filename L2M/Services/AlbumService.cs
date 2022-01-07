using L2M.Data;
using L2M.Models;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace L2M.Services
{
    public class AlbumService : BaseService
    {
        public static IEnumerable<Album> GetAlbum()
        {
            return _context.Album.ToList();
        }

        public static Album GetAlbum(int id)
        {
            var album = _context.Album.Find(id);
            return album;
        }
        public static Album GetAlbumToEdit(Album album)
        {
            var obj = _context.Album.AsNoTracking().FirstOrDefault(u => u.AlbumId == album.AlbumId);
            return obj;
        }

        public static int PostAlbum(Album album)
        {
            _context.Album.Add(album);
            int count = _context.SaveChanges();
            if (!AlbumExists(album.AlbumId))
            {
                return 0;
            }
            return count;
        }

        public static int PutAlbum(Album album)
        {
            int count = 0;
            try
            {
                _context.Album.Update(album);
                count = _context.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!AlbumExists(album.AlbumId))
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

        public static int DeleteAlbum(int id)
        {
            var album = _context.Album.Find(id);

            if (album == null)
            {
                return 0;
            }
            _context.Album.Remove(album);
            int count = _context.SaveChanges();

            return count;
        }

        public static bool AlbumExists(int id)
        {
            return _context.Album.Any(e => e.AlbumId == id);
        }
    }
}
