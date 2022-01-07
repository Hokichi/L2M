using L2M.Data;
using L2M.Models;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace L2M.Services
{
    public class SongService : BaseService
    {
        public static IEnumerable<Song> GetSong()
        {
            return _context.Song.Include(s => s.Album).Include(s => s.Genre).ToList();
        }

        public static Song GetSong(int id)
        {
            var song = _context.Song.Include(s => s.Album)
                                .Include(s => s.Genre)
                                .FirstOrDefault(m => m.SongId == id);
            return song;
        }
        public static Song GetSongToEdit(Song song)
        {
            var obj = _context.Song.AsNoTracking().FirstOrDefault(u => u.SongId == song.SongId);
            return obj;
        }

        public static int PostSong(Song song)
        {
            _context.Song.Add(song);
            int count = _context.SaveChanges();
            if (!SongExists(song.SongId))
            {
                return 0;
            }
            return count;
        }

        public static int PutSong(Song song)
        {
            int count = 0;
            try
            {
                _context.Song.Update(song);
                count = _context.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!SongExists(song.SongId))
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

        public static int DeleteSong(int id)
        {
            var song = _context.Song.Find(id);

            if (song == null)
            {
                return 0;
            }
            _context.Song.Remove(song);
            int count = _context.SaveChanges();

            return count;
        }

        public static bool SongExists(int id)
        {
            return _context.Song.Any(e => e.SongId == id);
        }
    }
}
