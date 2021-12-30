using L2M.Data;
using L2M.Models;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace L2M.Services
{
    public class PlaySongService : BaseService
    {
        public static IEnumerable<PlaySong> GetPlaySong()
        {
            return _context.PlaySong.Include(p => p.User)
                                .Include(p => p.Song)
                                .Include(p => p.Session)
                                .Include(p => p.Song)
                                .Include(p => p.Playlist)
                                .Include(p => p.Album)
                                .ToList();
        }

        public static PlaySong GetPlaySong(int id)
        {
            var playSong = _context.PlaySong.Include(p => p.User)
                                        .Include(p => p.Song)
                                        .Include(p => p.Session)
                                        .Include(p => p.Song)
                                        .Include(p => p.Playlist)
                                        .Include(p => p.Album).FirstOrDefault(p => p.PlaySongId == id);
            return playSong;
        }

        public static int PostPlaySong(PlaySong playSong)
        {
            _context.PlaySong.Add(playSong);
            int count = _context.SaveChanges();
            if (!PlaySongExists(playSong.PlaySongId))
            {
                return 0;
            }
            return count;
        }

        public static int PutPlaySong(int id, PlaySong playSong)
        {
            int count = 0;
            try
            {
                _context.PlaySong.Update(playSong);
                count = _context.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!PlaySongExists(playSong.PlaySongId))
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

        public static int DeletePlaySong(int id)
        {
            var playSong = _context.PlaySong.Find(id);

            if (playSong == null)
            {
                return 0;
            }
            _context.PlaySong.Remove(playSong);
            int count = _context.SaveChanges();

            return count;
        }

        public static bool PlaySongExists(int id)
        {
            return _context.PlaySong.Any(e => e.PlaySongId == id);
        }
    }
}
