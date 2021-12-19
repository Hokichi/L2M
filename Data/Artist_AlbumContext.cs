using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using L2M.Models;

namespace L2M.Data
{
    public class Artist_AlbumContext : DbContext
    {
        public Artist_AlbumContext (DbContextOptions<Artist_AlbumContext> options)
            : base(options)
        {
        }

        public DbSet<L2M.Models.Artist_Album> Artist_Album { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Artist_Album>().HasKey(u => new
            {
                u.ArtistId,
                u.AlbumId
            });
        }
    }
}
