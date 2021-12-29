using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.EntityFrameworkCore;
using L2M.Models;

namespace L2M.Data
{
    public class L2MContext : DbContext
    {
        public L2MContext(DbContextOptions<L2MContext> options)
            : base(options)
        {
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Genre>()
                .HasMany(e => e.Songs)
                .WithOne(e => e.Genre).OnDelete(DeleteBehavior.SetNull);

            modelBuilder.Entity<User>()
                .HasMany(e => e.Playlist)
                .WithOne(e => e.User).OnDelete(DeleteBehavior.SetNull);

            modelBuilder.Entity<User>()
                .Property(u => u.Provider)
                .HasMaxLength(10)
                .HasConversion(v => v.ToString(),
                                v => (ProviderType)Enum.Parse(typeof(ProviderType), v))
                .IsUnicode(false);

            base.OnModelCreating(modelBuilder);
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder
                .LogTo(Console.WriteLine, Microsoft.Extensions.Logging.LogLevel.Debug)
                .EnableSensitiveDataLogging();
            base.OnConfiguring(optionsBuilder);
        }

        public DbSet<Album> Album { get; set; }
        public DbSet<Artist> Artist { get; set; }
        public DbSet<Genre> Genre { get; set; }
        public DbSet<Playlist> Playlist { get; set; }
        public DbSet<PlaySong> PlaySong { get; set; }
        public DbSet<Session> Session { get; set; }
        public DbSet<Song> Song { get; set; }
        public DbSet<User> User { get; set; }

        public DbSet<T> GetDbSet<T>() where T : class => (DbSet<T>)this.GetType().GetMethod("Set", types: Type.EmptyTypes).MakeGenericMethod(typeof(T)).Invoke(this, null);

        //AlbumContext
        public IEnumerable<Album> GetAlbum()
        {
            return this.Album.ToList();
        }

        public Album GetAlbum(int id)
        {
            var album = this.Album.Find(id);
            return album;
        }

        public int PostAlbum(Album album)
        {
            this.Album.Add(album);
            int count = this.SaveChanges();
            if (!AlbumExists(album.AlbumId))
            {
                return 0;
            }
            return count;
        }

        public int PutAlbum(int id, Album album)
        {
            int count = 0;
            try
            {
                this.Album.Update(album);
                count = this.SaveChanges();
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
        //AlbumContext

        //ArtistContext
        public IEnumerable<Artist> GetArtist()
        {
            return this.Artist.ToList();
        }

        public Artist GetArtist(int id)
        {
            var artist = this.Artist.Find(id);
            return artist;
        }

        public int PostArtist(Artist artist)
        {
            this.Artist.Add(artist);
            int count = this.SaveChanges();
            if (!ArtistExists(artist.ArtistId))
            {
                return 0;
            }
            return count;
        }

        public int PutArtist(int id, Artist artist)
        {
            int count = 0;
            try
            {
                this.Artist.Update(artist);
                count = this.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ArtistExists(artist.ArtistId))
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
        //ArtistContext

        //GenreContext
        public IEnumerable<Genre> GetGenre()
        {
            return this.Genre.ToList();
        }

        public Genre GetGenre(int id)
        {
            var genre = this.Genre.Find(id);
            return genre;
        }

        public IEnumerable<Song> GetSongByGenre(int id)
        {
            var genre = this.Genre.Include(g => g.Songs).FirstOrDefault(g => g.GenreId == id);
            return genre.Songs;
        }

        public int PostGenre(Genre genre)
        {
            this.Genre.Add(genre);
            int count =  this.SaveChanges();
            if (!GenreExists(genre.GenreId))
            {
                return 0;
            }
            return count;
        }

        public int PutGenre(int id, Genre genre)
        {
            int count = 0;
            try
            {
                this.Genre.Update(genre);
                count = this.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!GenreExists(genre.GenreId))
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

        public int DeleteGenre(int id)
        {
            var genre = this.Genre.Find(id);

            if (genre == null)
            {
                return 0;
            }
            this.Genre.Remove(genre);
            int count =  this.SaveChanges();

            return count;
        }
        //GenreContext

        //PlaylistContext
        public IEnumerable<Playlist> GetPlaylist()
        {
            return this.Playlist.Include(p => p.User).ToList();
        }

        public Playlist GetPlaylist(int id)
        {
            var playlist = this.Playlist.Include(p => p.User)
                                .FirstOrDefault(p => p.PlaylistId == id);
            return playlist;
        }

        public int PostPlaylist(Playlist playlist)
        {
            this.Playlist.Add(playlist);
            int count = this.SaveChanges();
            if (!PlaylistExists(playlist.PlaylistId))
            {
                return 0;
            }
            return count;
        }

        public int PutPlaylist(int id, Playlist playlist)
        {
            int count = 0;
            try
            {
                this.Playlist.Update(playlist);
                count = this.SaveChanges();
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
        //PlaylistContext

        //PlaySongContext
        public IEnumerable<PlaySong> GetPlaySong()
        {
            return this.PlaySong.Include(p => p.User)
                                .Include(p => p.Song)
                                .Include(p => p.Session)
                                .Include(p => p.Song)
                                .Include(p => p.Playlist)
                                .Include(p => p.Album)
                                .ToList();
        }

        public PlaySong GetPlaySong(int id)
        {
            var playSong = this.PlaySong.Include(p => p.User)
                                        .Include(p => p.Song)
                                        .Include(p => p.Session)
                                        .Include(p => p.Song)
                                        .Include(p => p.Playlist)
                                        .Include(p => p.Album).FirstOrDefault(p => p.PlaySongId == id);
            return playSong;
        }

        public int PostPlaySong(PlaySong playSong)
        {
            this.PlaySong.Add(playSong);
            int count = this.SaveChanges();
            if (!PlaySongExists(playSong.PlaySongId))
            {
                return 0;
            }
            return count;
        }

        public int PutPlaySong(int id, PlaySong playSong)
        {
            int count = 0;
            try
            {
                this.PlaySong.Update(playSong);
                count = this.SaveChanges();
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
        //PlaySongContext

        //SessionContext
        public IEnumerable<Session> GetSession()
        {
            return this.Session.Include(s=> s.User).ToList();
        }

        public Session GetSession(int id)
        {
            var session = this.Session.Include(s => s.User)
                                    .FirstOrDefault(s => s.SessionId == id);
            return session;
        }

        public int PostSession(Session session)
        {
            this.Session.Add(session);
            int count = this.SaveChanges();
            if (!SessionExists(session.SessionId))
            {
                return 0;
            }
            return count;
        }

        public int PutSession(int id, Session session)
        {
            int count = 0;
            try
            {
                this.Session.Update(session);
                count = this.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!SessionExists(session.SessionId))
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
        //SessionContext

        //SongContext
        public IEnumerable<Song> GetSong()
        {
            return this.Song.Include(s => s.Album).Include(s => s.Genre).ToList();
        }

        public Song GetSong(int id)
        {
            var song = this.Song.Include(s => s.Album)
                                .Include(s => s.Genre)
                                .FirstOrDefault(m => m.SongId == id);
            return song;
        }

        public int PostSong(Song song)
        {
            this.Song.Add(song);
            int count = this.SaveChanges();
            if (!SongExists(song.SongId))
            {
                return 0;
            }
            return count;
        }

        public int PutSong(int id, Song song)
        {
            int count = 0;
            try
            {
                this.Song.Update(song);
                count = this.SaveChanges();
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
        //SongContext

        //UserContext
        public IEnumerable<User> GetUser()
        {
            return this.User.ToList();
        }

        public User GetUser(int id)
        {
            var user = this.User.Find(id);
            return user;
        }

        public int PostUser(User user)
        {
            this.User.Add(user);
            int count = this.SaveChanges();
            if (!UserExists(user.UserId))
            {
                return 0;
            }
            return count;
        }

        public int PutUser(int id, User user)
        {
            int count = 0;
            try
            {
                this.User.Update(user);
                count = this.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!UserExists(user.UserId))
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
        //UserContext

        //Check data exist
        private bool AlbumExists(int id)
        {
            return this.Album.Any(e => e.AlbumId == id);
        }

        private bool ArtistExists(int id)
        {
            return this.Artist.Any(e => e.ArtistId == id);
        }

        private bool GenreExists(int id)
        {
            return this.Genre.Any(e => e.GenreId == id);
        }

        private bool PlaylistExists(int id)
        {
            return this.Playlist.Any(e => e.PlaylistId == id);
        }
        
        private bool PlaySongExists(int id)
        {
            return this.PlaySong.Any(e => e.PlaySongId == id);
        }
        
        private bool SessionExists(int id)
        {
            return this.Session.Any(e => e.SessionId == id);
        }

        private bool SongExists(int id)
        {
            return this.Song.Any(e => e.SongId == id);
        }
        
        private bool UserExists(int id)
        {
            return this.User.Any(e => e.UserId == id);
        }
    }
}
