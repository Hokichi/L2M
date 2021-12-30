using L2M.Models;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace L2M.Services
{
    public class User_LikePlaylistService : BaseService
    {
        public static IEnumerable<User_LikePlaylist> GetUser_LikePlaylist()
        {
            return _context.User_LikePlaylist.Include(a => a.User)
                                    .Include(a => a.Playlist).ToList();
        }

        public static User_LikePlaylist GetUser_LikePlaylist(int id)
        {
            var artist_Album = _context.User_LikePlaylist.Include(a => a.User)
                                    .Include(a => a.Playlist).FirstOrDefault(a => a.UserLikePlaylistId == id);
            return artist_Album;
        }

        public static int PostUser_LikePlaylist(User_LikePlaylist userLikePlaylist)
        {
            _context.User_LikePlaylist.Add(userLikePlaylist);
            int count = _context.SaveChanges();
            if (!User_LikePlaylistExists(userLikePlaylist.UserLikePlaylistId))
            {
                return 0;
            }
            return count;
        }

        public static int PutUser_LikePlaylist(int id, User_LikePlaylist userLikePlaylist)
        {
            int count = 0;
            try
            {
                _context.User_LikePlaylist.Update(userLikePlaylist);
                count = _context.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!User_LikePlaylistExists(userLikePlaylist.UserLikePlaylistId))
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

        public static int DeleteUser_LikePlaylist(int id)
        {
            var userLikePlaylist = _context.Artist_Song.Find(id);

            if (userLikePlaylist == null)
            {
                return 0;
            }
            _context.Artist_Song.Remove(userLikePlaylist);
            int count = _context.SaveChanges();

            return count;
        }

        public static bool User_LikePlaylistExists(int id)
        {
            return _context.User_LikePlaylist.Any(e => e.UserLikePlaylistId == id);
        }

        public static bool User_LikePlaylistExists(int? userId, int? playlistId)
        {
            return _context.User_LikePlaylist.Any(e => e.UserId == userId && e.PlaylistId == playlistId);
        }
    }
}
