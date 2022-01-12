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
            var listSong = _context.Song.AsNoTracking().Include(s => s.Album).Include(s => s.Genre).ToList();
            listSong.ForEach(s => { 
                if(s.ImgUrl == null || s.ImgUrl == "" || s.ImgUrl == "~/img/defaultImg.png")
                {
                    s.ImgUrl = s.Album?.ImgUrl;
                }
            });
            return listSong;
        }
        public static IEnumerable<Song> GetSongWithListArtist()
        {
            var listSong = _context.Song
                .AsNoTracking()
                .Include(s => s.Album).Include(s => s.Genre)
                .Include(a => a.Artists)
                .ToList();
            listSong.ForEach(s => {
                if (s.ImgUrl == null || s.ImgUrl == "" || s.ImgUrl == "~/img/defaultImg.png")
                {
                    s.ImgUrl = s.Album?.ImgUrl;
                }
            });
            return listSong;
        }

        public static Song GetSong(int id)
        {
            var song = _context.Song.Include(s => s.Album)
                                .Include(s => s.Genre)
                                .FirstOrDefault(m => m.SongId == id);
            var artists = Artist_SongService.GetBySongId(song.SongId);
            song.ArtistIds = artists.Select(a => a.ArtistId).ToArray();
            if (song.ImgUrl == null)
            {
                song.ImgUrl = song.Album?.ImgUrl;
            }
            return song;
        }

        public static IEnumerable<Song> SearchSongs(string keyword)
        {
            keyword = keyword.ToLower();
            var listSong = _context.Song.AsNoTracking().Include(s => s.Album)
                                .Include(s => s.Genre)
                                .Where(m => m.Title.ToLower().Contains(keyword)).ToList();
            listSong.ForEach(s =>
            {
                if (s.ImgUrl == null || s.ImgUrl == "" || s.ImgUrl == "~/img/defaultImg.png")
                {
                    s.ImgUrl = s.Album?.ImgUrl;
                }
            });
            return listSong;
        }

        public static IEnumerable<Song> GetFeaturedSongs()
        {
            var listSong = _context.Song.AsNoTracking()
                        .Where(s => s.Featured == true)
                        .Include(s => s.Album)
                        .Include(s => s.Artists).Take(10).ToList();
            listSong.ForEach(s =>
            {
                if (s.ImgUrl == null || s.ImgUrl == "" || s.ImgUrl == "~/img/defaultImg.png")
                {
                    s.ImgUrl = s.Album?.ImgUrl;
                }
            });
            return listSong;
        }

        public static IEnumerable<Song> GetTopSongs()
        {
            var listSong = _context.Song.AsNoTracking().OrderByDescending(s => s.Views)
                .Include(s => s.Artists).Include(s => s.Album).Take(5).ToList();
            listSong.ForEach(s =>
            {
                if (s.ImgUrl == null || s.ImgUrl == "" || s.ImgUrl == "~/img/defaultImg.png")
                {
                    s.ImgUrl = s.Album?.ImgUrl;
                }
            });
            return listSong;
        }

        public static IEnumerable<Song> GetMostLikedLikeSongs()
        {
            var query = _context.Song.AsNoTracking().Include(s => s.Artists)
                .Include(s => s.Users).Include(s => s.Album).ToList();
            var listSong = query
                .OrderByDescending(s => s.Users.Count()).Take(5).ToList();
            listSong.ForEach(s =>
            {
                if (s.ImgUrl == null || s.ImgUrl == "" || s.ImgUrl == "~/img/defaultImg.png")
                {
                    s.ImgUrl = s.Album?.ImgUrl;
                }
            });
            return listSong;
        }

        public static IEnumerable<Song> GetNewSongs()
        {
            var listSong = _context.Song.AsNoTracking().OrderByDescending(s => s.createdAt)
                .Include(s =>s.Artists).Include(s => s.Album).Take(5).ToList();
            listSong.ForEach(s =>
            {
                if (s.ImgUrl == null || s.ImgUrl == "" || s.ImgUrl == "~/img/defaultImg.png")
                {
                    s.ImgUrl = s.Album?.ImgUrl;
                }
            });
            return listSong;
        }

        public static IEnumerable<Song> GetSongByGenre(int id)
        {
            var listSong = _context.Song.Include(g => g.Genre).Include(s => s.Album)
                .Where(g => g.GenreId == id).ToList();
            listSong.ForEach(s =>
            {
                if (s.ImgUrl == null || s.ImgUrl == "" || s.ImgUrl == "~/img/defaultImg.png")
                {
                    s.ImgUrl = s.Album?.ImgUrl;
                }
            });
            return listSong;
        }

        public static Song GetSongToEdit(int id)
        {
            var obj = _context.Song.AsNoTracking().FirstOrDefault(u => u.SongId == id);
            return obj;
        }

        public static int GetTotal()
        {
            int count = _context.Song.AsNoTracking().Count();
            return count;
        }

        public static int PostSong(Song song)
        {
            _context.Song.Add(song);
            int count = _context.SaveChanges();
            if (!SongExists(song.SongId))
            {
                return 0;
            }
            else
            {
                int songId = song.SongId;
                List<Artist_Song> listAS = new List<Artist_Song>();
                if (song.ArtistIds != null && song.ArtistIds.Length > 0)
                {
                    song.ArtistIds.ToList().ForEach(id =>
                    {
                        listAS.Add(new Artist_Song { SongId = songId, ArtistId = id });
                    });
                    count += Artist_SongService.PostListArtist_Song(listAS);
                }
            }
            return count;
        }

        public static int PutSong(Song song)
        {
            int count = 0;
            try
            {
                _context.Update(song);
                count = _context.SaveChanges();
                if (!SongExists(song.SongId))
                {
                    return 0;
                }
                else
                {
                    int songId = song.SongId;
                    var listAA = Artist_SongService.GetBySongId(song.SongId).ToList();
                    List<Artist_Song> listAS_Add = new List<Artist_Song>();
                    List<int> listAS_Remove = new List<int>();
                    if (song.ArtistIds != null && song.ArtistIds.Length > 0)
                    {
                        var listArtistOld = listAA.Select(aa => aa.ArtistId).ToList();
                        song.ArtistIds.ToList().ForEach(id =>
                        {
                            if (!listArtistOld.Contains(id))
                            {
                                listAS_Add.Add(new Artist_Song { SongId = songId, ArtistId = id });
                            }

                        });
                        var listArtistNew = song.ArtistIds.ToList();
                        listAA.ToList().ForEach(id =>
                        {
                            if (!listArtistNew.Contains(id.ArtistId))
                            {
                                listAS_Remove.Add(id.ArtistSongId);
                            }

                        });
                        count += Artist_SongService.DeleteListArtist_Song(listAS_Remove);
                        count += Artist_SongService.PostListArtist_Song(listAS_Add);
                        return count;
                    }
                }
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
