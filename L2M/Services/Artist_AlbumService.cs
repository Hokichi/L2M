using L2M.Models;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace L2M.Services
{
    public class Artist_AlbumService : BaseService
    {
        public static IEnumerable<Artist_Album> GetArtist_Album()
        {
            return _context.Artist_Album.AsNoTracking().Include(aa=> aa.Artist)
                                    .Include(aa => aa.Album).ToList();
        }

        public static Artist_Album GetArtist_Album(int id)
        {
            var artistAlbum = _context.Artist_Album.Include(aa => aa.Artist)
                                    .Include(aa => aa.Album).FirstOrDefault(aa => aa.ArtistAlbumId == id);
            return artistAlbum;
        }

        public static IEnumerable<Artist_Album> GetByAlbumId(int id)
        {
            var artistAlbum = _context.Artist_Album.Where(aa => aa.AlbumId == id)
                .Include(aa => aa.Album).Include(aa => aa.Artist).ToList();
            return artistAlbum;
        }

        public static IEnumerable<Artist_Album> GetByArtistId(int id)
        {
            var artistAlbum = _context.Artist_Album.Where(aa => aa.ArtistId == id)
                    .Include(aa => aa.Album).Include(aa => aa.Artist).ToList();
            return artistAlbum;
        }

        public static int PostArtist_Album(Artist_Album artistAlbum)
        {
            _context.Artist_Album.Add(artistAlbum);
            int count = _context.SaveChanges();
            if (!Artist_AlbumExists(artistAlbum.ArtistAlbumId))
            {
                return 0;
            }
            return count;
        }

        public static int PostListArtist_Album(List<Artist_Album> artistAlbum)
        {
            artistAlbum.ForEach(aa => _context.Artist_Album.Add(aa));
            int count = _context.SaveChanges();
            return count;
        }

        public static int PutArtist_Album(Artist_Album artistAlbum)
        {
            int count = 0;
            try
            {
                _context.Artist_Album.Update(artistAlbum);
                count = _context.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!Artist_AlbumExists(artistAlbum.ArtistAlbumId))
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

        public static int DeleteArtist_Album(int id)
        {
            var artistAlbum = _context.Artist_Album.Find(id);

            if (artistAlbum == null)
            {
                return 0;
            }
            _context.Artist_Album.Remove(artistAlbum);
            int count = _context.SaveChanges();
            return count;
        }

        public static int DeleteListArtist_Album(List<int> ids)
        {
            ids.ForEach(id =>
            {
                var artistAlbum = _context.Artist_Album.Find(id);
                if (artistAlbum != null)
                {
                    _context.Artist_Album.Remove(artistAlbum);
                }
                
            });
            int count = _context.SaveChanges();
            return count;
        }

        public static bool Artist_AlbumExists(int id)
        {
            return _context.Artist_Album.Any(e => e.ArtistAlbumId == id);
        }

        public static bool Artist_AlbumExists(int? artistId, int? albumId)
        {
            return _context.Artist_Album.Any(e => e.ArtistId == artistId && e.AlbumId == albumId);
        }
    }
}
