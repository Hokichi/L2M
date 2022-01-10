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
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<Genre>()
                .HasMany(e => e.Songs)
                .WithOne(e => e.Genre).OnDelete(DeleteBehavior.SetNull);

            modelBuilder.Entity<User>()
                .HasMany(e => e.Playlists)
                .WithOne(e => e.User).OnDelete(DeleteBehavior.SetNull);

            //modelBuilder.Entity<Artist_Album>().HasKey(t => new { t.ArtistId, t.AlbumId });
            modelBuilder.Entity<Album>()
                .HasMany(e => e.Artists)
                .WithMany(e => e.Albums).UsingEntity<Artist_Album>(
                    a => a.HasOne(m => m.Artist).WithMany(m => m.Artist_Album),
                    a => a.HasOne(m => m.Album).WithMany(m => m.Artist_Album)
                );
            modelBuilder.Entity<Album>()
               .Property(u => u.Type)
               .HasMaxLength(10)
               .HasConversion(v => v.ToString(),
                               v => (AlbumType)Enum.Parse(typeof(AlbumType), v))
               .IsUnicode(false);
            //modelBuilder.Entity<Artist_Song>().HasKey(t => new { t.ArtistId, t.SongId });
            modelBuilder.Entity<Song>()
                .HasMany(e => e.Artists)
                .WithMany(e => e.Songs).UsingEntity<Artist_Song>(
                    a => a.HasOne(m => m.Artist).WithMany(m => m.Artist_Song),
                    a => a.HasOne(m => m.Song).WithMany(m => m.Artist_Song)
                );

            //modelBuilder.Entity<Playlist_Song>().HasKey(t => new { t.PlaylistId, t.SongId });
            modelBuilder.Entity<Song>()
                .HasMany(e => e.Playlists)
                .WithMany(e => e.Songs).UsingEntity<Playlist_Song>(
                    a => a.HasOne(m => m.Playlist).WithMany(m => m.Playlist_Song),
                    a => a.HasOne(m => m.Song).WithMany(m => m.Playlist_Song)
                );
            modelBuilder.Entity<Song>()
                .Property(u => u.Upload)
                .HasMaxLength(10)
                .HasConversion(v => v.ToString(),
                                v => (UploadType)Enum.Parse(typeof(UploadType), v))
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(u => u.Provider)
                .HasMaxLength(10)
                .HasConversion(v => v.ToString(),
                                v => (ProviderType)Enum.Parse(typeof(ProviderType), v))
                .IsUnicode(false);

            modelBuilder.Entity<User>()
                .Property(u => u.Role)
                .HasMaxLength(10)
                .HasConversion(v => v.ToString(),
                                v => (RoleType)Enum.Parse(typeof(RoleType), v))
                .IsUnicode(false);

            //modelBuilder.Entity<User_Album>().HasKey(t => new { t.UserId, t.AlbumId });
            modelBuilder.Entity<User>()
                .HasMany(e => e.Albums)
                .WithMany(e => e.Users).UsingEntity<User_Album>(
                    a => a.HasOne(m => m.Album).WithMany(m => m.User_Album),
                    a => a.HasOne(m => m.User).WithMany(m => m.User_Album)
                );

            //modelBuilder.Entity<User_Artist>().HasKey(t => new { t.UserId, t.ArtistId });
            modelBuilder.Entity<User>()
                .HasMany(e => e.Artists)
                .WithMany(e => e.Users).UsingEntity<User_Artist>(
                    a => a.HasOne(m => m.Artist).WithMany(m => m.User_Artist),
                    a => a.HasOne(m => m.User).WithMany(m => m.User_Artist)
                );

            //modelBuilder.Entity<User_LikePlaylist>().HasKey(t => new { t.UserId, t.PlaylistId });
            modelBuilder.Entity<User>()
                .HasMany(e => e.LikePlaylists)
                .WithMany(e => e.Users).UsingEntity<User_LikePlaylist>(
                    a => a.HasOne(m => m.Playlist).WithMany(m => m.User_LikePlaylist),
                    a => a.HasOne(m => m.User).WithMany(m => m.User_LikePlaylist)
                );

            //modelBuilder.Entity<User_Song>().HasKey(t => new { t.UserId, t.SongId });
            modelBuilder.Entity<User>()
                .HasMany(e => e.Songs)
                .WithMany(e => e.Users).UsingEntity<User_Song>(
                    a => a.HasOne(m => m.Song).WithMany(m => m.User_Song),
                    a => a.HasOne(m => m.User).WithMany(m => m.User_Song)
                );
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder
                .LogTo(Console.WriteLine, Microsoft.Extensions.Logging.LogLevel.Trace)
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

        public DbSet<Artist_Album> Artist_Album { get; set; }
        public DbSet<Artist_Song> Artist_Song { get; set; }
        public DbSet<Playlist_Song> Playlist_Song { get; set; }
          
        public DbSet<User_Album> User_Album { get; set; }
        public DbSet<User_Artist> User_Artist { get; set; }
        public DbSet<User_LikePlaylist> User_LikePlaylist { get; set; }
        public DbSet<User_Song> User_Song { get; set; }

        public DbSet<T> GetDbSet<T>() where T : class => (DbSet<T>)this.GetType().GetMethod("Set", types: Type.EmptyTypes).MakeGenericMethod(typeof(T)).Invoke(this, null);
    }
}
