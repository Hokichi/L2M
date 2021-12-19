using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;

namespace L2M.Models
{
    [Table("song")]
    public class Song
    {
        [Key]
        [Column("song_id")]
        public int SongId { get; set; }
        public string Title { get; set; }
        public string Img_Url { get; set; }
        public string Path { get; set; }
        public float Duration { get; set; }

        [Column("album_id")]
        public int AlbumId { get; set; }
        [ForeignKey("AlbumId")]
        public virtual Album Album { get; set; }

        [ForeignKey("genre_id")]
        public int GenreID { get; set; }
        [ForeignKey("GenreID")]
        public virtual Genre Genre { get; set; }

        public int Track_no { get; set; }

        public ICollection<Artist_Song> Artist_Song { get; set; }
    }
}
