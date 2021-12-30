using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;

namespace L2M.Models
{
    [Table("artist_song")]
    public class Artist_Song
    {
        [Key, Column("artist_song_id")]
        public int ArtistSongId { get; set; }

        [Required, Column("artist_id")]
        public int ArtistId { get; set; }
        [ForeignKey("ArtistId")]
        public virtual Artist Artist { get; set; }
        
        [Required, Column("artist_id")]
        public int SongId { get; set; }
        [ForeignKey("SongId")]
        public virtual Song Song { get; set; }
    }
}
