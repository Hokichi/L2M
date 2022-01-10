using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;

namespace L2M.Models
{
    public enum UploadType
    {
        [Display(Name = "Audio")] Audio,
        [Display(Name = "Link")] Link
    }
    [Table("song")]
    public class Song
    {
        [Key, Column("song_id")]
        public int SongId { get; set; }

        [Required, StringLength(70)]
        public string Title { get; set; }

        [Column("img_url")]
        public string? ImgUrl { get; set; }
        [NotMapped]
        public int[]? ArtistIds { get; set; }

        [Column("upload_type")]
        [EnumDataType(typeof(UploadType))]
        public UploadType? Upload { get; set; }
        public string? Path { get; set; }
        public string? Duration { get; set; }

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

        public string? Lyrics { get; set; }

        [Column("date_release")]
        //[DataType(DataType.Date)]
        //[DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:MM/dd/yyyy}")]
        public int? DateRelease { get; set; }

        public int? Views { get; set; }

        public bool Featured { get; set; }

        [Column("created_at")]
        public DateTime createdAt { get; set; }

        [NotMapped]
        public bool? UserLiked { get; set;}

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
