using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;

namespace L2M.Models
{
    [Table("song")]
    public class Song
    {
        [Key, Column("song_id")]
        public int SongId { get; set; }

        [Required, StringLength(70)]
        public string Title { get; set; }

        [Column("img_url")]
        public string? ImgUrl { get; set; }

        public string Path { get; set; }
        public float? Duration { get; set; }

        [Column("album_id")]
        public int? AlbumId { get; set; }
        [ForeignKey("AlbumId")]
        public virtual Album Album { get; set; }

        [Column("genre_id")]
        public int? GenreID { get; set; }
        [ForeignKey("GenreID")]
        public virtual Genre Genre { get; set; }

        [Column("track_no")]
        public int? TrackNo { get; set; }

        public int? Lyrics { get; set; }

        [Column("date_release")]
        public DateTime? DateRelease { get; set; }

        public int Views { get; set; }

        public ICollection<Artist_Song> Artist_Song { get; set; }
        public ICollection<Playlist_Song> Playlist_Song { get; set; }
        public ICollection<PlaySong> PlaySong { get; set; }
        public ICollection<User_Song> User_Song { get; set; }
    }
}
