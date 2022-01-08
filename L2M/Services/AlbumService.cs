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
            var artists = Artist_AlbumService.GetByAlbumId(album.AlbumId);
            album.ArtistIds = artists.Select(a => a.ArtistId).ToArray();
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
            else
            {
                int albumId = album.AlbumId;
                List< Artist_Album> listAA = new List<Artist_Album>();
                if (album.ArtistIds != null && album.ArtistIds.Length > 0)
                {
                    album.ArtistIds.ToList().ForEach(id =>
                    {
                        listAA.Add(new Artist_Album { AlbumId = albumId, ArtistId = id });
                    });
                    count += Artist_AlbumService.PostListArtist_Album(listAA);
                }
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
                    int albumId = album.AlbumId;
                    var listAA = Artist_AlbumService.GetByAlbumId(album.AlbumId).ToList();
                    List<Artist_Album> listAA_Add = new List<Artist_Album>();
                    List<int> listAA_Remove = new List<int>();
                    if (album.ArtistIds != null && album.ArtistIds.Length > 0)
                    {
                        var listArtistOld = listAA.Select(aa => aa.ArtistId).ToList();
                        album.ArtistIds.ToList().ForEach(id =>
                        {
                            if (!listArtistOld.Contains(id))
                            {
                                listAA_Add.Add(new Artist_Album { AlbumId = albumId, ArtistId = id });
                            }
                            
                        });
                        var listArtistNew = album.ArtistIds.ToList();
                        listAA.ToList().ForEach(id =>
                        {
                            if (!listArtistNew.Contains(id.ArtistId))
                            {
                                listAA_Remove.Add(id.ArtistAlbumId);
                            }

                        });
                        count += Artist_AlbumService.DeleteListArtist_Album(listAA_Remove);
                        count += Artist_AlbumService.PostListArtist_Album(listAA_Add);
                    }
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
            var listAAId = Artist_AlbumService.GetByAlbumId(album.AlbumId).Select(aa => aa.ArtistAlbumId).ToList();
            if(listAAId.Count > 0)
            {
                int count = Artist_AlbumService.DeleteListArtist_Album(listAAId);
                count += _context.SaveChanges();
                return count;
            }
            else
            {
                return _context.SaveChanges();
            }
        }

        public static bool AlbumExists(int id)
        {
            return _context.Album.Any(e => e.AlbumId == id);
        }
    }
}
