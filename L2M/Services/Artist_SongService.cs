using L2M.Models;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace L2M.Services
{
    public class Artist_SongService : BaseService
    {
        public static IEnumerable<Artist_Song> GetArtist_Song()
        {
            return _context.Artist_Song.AsNoTracking().Include(a => a.Artist)
                                    .Include(a => a.Song).ToList();
        }

        public static Artist_Song GetArtist_Song(int id)
        {
            var artist_Album = _context.Artist_Song.Include(a => a.Artist)
                                    .Include(a => a.Song).FirstOrDefault(a => a.ArtistSongId == id);
            return artist_Album;
        }
        public static IEnumerable<Artist_Song> GetBySongId(int id)
        {
            var artistSong = _context.Artist_Song.AsNoTracking().Where(aa => aa.SongId == id)
                .Include(aa => aa.Song).Include(aa => aa.Artist).ToList();
            return artistSong;
        }
        public static int PostArtist_Song(Artist_Song artistSong)
        {
            _context.Artist_Song.Add(artistSong);
            int count = _context.SaveChanges();
            if (!Artist_SongExists(artistSong.ArtistSongId))
            {
                return 0;
            }
            return count;
        }

        public static int PostListArtist_Song(List<Artist_Song> artistSong)
        {
            artistSong.ForEach(aa => _context.Artist_Song.Add(aa));
            int count = _context.SaveChanges();
            return count;
        }

        public static int PutArtist_Song(int id, Artist_Song artistSong)
        {
            int count = 0;
            try
            {
                _context.Artist_Song.Update(artistSong);
                count = _context.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!Artist_SongExists(artistSong.ArtistSongId))
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

        public static int DeleteArtist_Song(int id)
        {
            var artistSong = _context.Artist_Song.Find(id);

            if (artistSong == null)
            {
                return 0;
            }
            _context.Artist_Song.Remove(artistSong);
            int count = _context.SaveChanges();

            return count;
        }
        public static int DeleteListArtist_Song(List<int> ids)
        {
            ids.ForEach(id =>
            {
                var artistSong = _context.Artist_Song.Find(id);
                if (artistSong != null)
                {
                    _context.Artist_Song.Remove(artistSong);
                }

            });
            int count = _context.SaveChanges();
            return count;
        }
        public static bool Artist_SongExists(int id)
        {
            return _context.Artist_Song.Any(e => e.ArtistSongId == id);
        }

        public static bool Artist_SongExists(int? artistId, int? songId)
        {
            return _context.Artist_Song.Any(e => e.ArtistId == artistId && e.SongId == songId);
        }
    }
}
