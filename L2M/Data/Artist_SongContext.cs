using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using L2M.Models;

namespace L2M.Data
{
    public class Artist_SongContext : DbContext
    {
        public Artist_SongContext (DbContextOptions<Artist_SongContext> options)
            : base(options)
        {
        }

        public DbSet<Artist_Song> Artist_Song { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Artist_Song>().HasKey(u => new
            {
                u.ArtistId,
                u.SongId
            });
        }
    }
}
