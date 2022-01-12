using L2M.Models;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace L2M.Services
{
    public class Playlist_SongService : BaseService
    {
        public static IEnumerable<Playlist_Song> GetPlaylist_Song()
        {
            return _context.Playlist_Song.AsNoTracking().Include(a => a.Playlist)
                                    .Include(a => a.Song).ToList();
        }

        public static Playlist_Song GetPlaylist_Song(int id)
        {
            var artist_Album = _context.Playlist_Song.Include(a => a.Playlist)
                                    .Include(a => a.Song).FirstOrDefault(a => a.PlaylistSongId == id);
            return artist_Album;
        }

        public static Playlist_Song GetPlaylist_SongBy2Id(int playlistId, int songId)
        {
            var artist_Album = _context.Playlist_Song.Include(a => a.Playlist)
                                    .Include(a => a.Song).FirstOrDefault(a => a.PlaylistId == playlistId && a.SongId == songId);
            return artist_Album;
        }

        public static IEnumerable<Playlist_Song> GetByPlaylistId(int id)
        {
            var playlistsong = _context.Playlist_Song.Where(aa => aa.PlaylistId == id)
                .Include(aa => aa.Playlist).Include(aa => aa.Song).ToList();
            return playlistsong;
        }

        public static int AddSongToPlaylist(int playlistId, int songId)
        {
            if(GetPlaylist_SongBy2Id(playlistId,songId) != null)
            {
                return -1;
            }
            int count = PostPlaylist_Song(new Playlist_Song
            {
                PlaylistId = playlistId,
                SongId = songId
            });
            return count;
        }

        public static int PostPlaylist_Song(Playlist_Song playlist_Song)
        {
            _context.Playlist_Song.Add(playlist_Song);
            int count = _context.SaveChanges();
            if (!Playlist_SongExists(playlist_Song.PlaylistSongId))
            {
                return 0;
            }
            return count;
        }

        public static int PutPlaylist_Song(int id, Playlist_Song playlist_Song)
        {
            int count = 0;
            try
            {
                _context.Playlist_Song.Update(playlist_Song);
                count = _context.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!Playlist_SongExists(playlist_Song.PlaylistSongId))
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

        public static int DeletePlaylist_Song(int id)
        {
            var playlist_Song = _context.Playlist_Song.Find(id);

            if (playlist_Song == null)
            {
                return 0;
            }
            _context.Playlist_Song.Remove(playlist_Song);
            int count = _context.SaveChanges();

            return count;
        }

        public static bool Playlist_SongExists(int id)
        {
            return _context.Playlist_Song.Any(e => e.PlaylistSongId == id);
        }

        public static bool Playlist_SongExists(int? playlistId, int? songId)
        {
            return _context.Playlist_Song.Any(e => e.PlaylistId == playlistId && e.SongId == songId);
        }
    }
}
