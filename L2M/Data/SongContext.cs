using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using L2M.Models;

namespace L2M.Data
{
    public class SongContext : DbContext
    {
        public SongContext (DbContextOptions<SongContext> options)
            : base(options)
        {
        }

        public DbSet<L2M.Models.Song> Song { get; set; }
    }
}
