using L2M.Data;
using L2M.Models;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace L2M.Services
{
    public class PlaylistService : BaseService
    {
        public static IEnumerable<Playlist> GetPlaylist()
        {
            return _context.Playlist.Include(p => p.User).ToList();

        }

        public static Playlist GetPlaylist(int id)
        {
            var playlist = _context.Playlist.Include(p => p.User).Include(a => a.Songs)
                                .FirstOrDefault(p => p.PlaylistId == id);
            return playlist;
        }

        public static Playlist GetPlaylistWithListSong(int id)
        {
            var playlist = _context.Playlist.Include(p => p.User)
                                .FirstOrDefault(p => p.PlaylistId == id);
            var songs = Playlist_SongService.GetByPlaylistId(playlist.PlaylistId);
            return playlist;
        }

        public static Playlist GetPlaylistToEdit(Playlist playlist)
        {
            var obj = _context.Playlist.AsNoTracking().FirstOrDefault(u => u.PlaylistId == playlist.PlaylistId);
            return obj;
        }
        //public static int CountTotalSongOfPlaylist(Playlist playlist)
        //{
        //    //int count = 
        //    //    return count;
        //}
        public static int PostPlaylist(Playlist playlist)
        {
            _context.Playlist.Add(playlist);
            int count = _context.SaveChanges();
            if (!PlaylistExists(playlist.PlaylistId))
            {
                return 0;
            }
            return count;
        }

        public static int PutPlaylist(Playlist playlist)
        {
            int count = 0;
            try
            {
                _context.Playlist.Update(playlist);
                count = _context.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!PlaylistExists(playlist.PlaylistId))
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

        public static int DeletePlaylist(int id)
        {
            var playlist = _context.Playlist.Find(id);

            if (playlist == null)
            {
                return 0;
            }
            _context.Playlist.Remove(playlist);
            int count = _context.SaveChanges();

            return count;
        }

        public static bool PlaylistExists(int id)
        {
            return _context.Playlist.Any(e => e.PlaylistId == id);
        }
    }
}
