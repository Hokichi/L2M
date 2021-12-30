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

        [Required]
        public string Path { get; set; }
        public float? Duration { get; set; }

        [Column("album_id")]
        public int? AlbumId { get; set; }
        [ForeignKey("AlbumId")]
        public virtual Album Album { get; set; }

        [Column("genre_id")]
        public int? GenreId { get; set; }
        [ForeignKey("GenreId")]
        public virtual Genre Genre { get; set; }

        [Column("track_no")]
        public int? TrackNo { get; set; }

        public int? Lyrics { get; set; }

        [Column("date_release")]
        [DataType(DataType.Date)]
        //[DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:MM/dd/yyyy}")]
        public DateTime? DateRelease { get; set; }

        [Required]
        public int Views { get; set; }

        public ICollection<PlaySong> PlaySongs { get; set; }

        //Many to Many
        public ICollection<Artist> Artists { get; set; }
        public ICollection<Playlist> Playlists { get; set; }
        public ICollection<User> Users { get; set; }

        public ICollection<Artist_Song> Artist_Song { get; set; }
        public ICollection<Playlist_Song> Playlist_Song { get; set; }
        public ICollection<User_Song> User_Song { get; set; }
    }
}
