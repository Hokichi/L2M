using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace L2M.Models
{
    [Table("album")]
    public class Album
    {
        [Key, Column("album_id")]
        public int AlbumId { get; set; }

        [Required, StringLength(80)]
        public string Title { get; set; }

        [Column("img_url")]
        public string? ImgUrl { get; set; }

        [Column("date_release")]
        //[DataType(DataType.Date)]
        public int? DateRelease { get; set; }

#nullable enable
        [EnumDataType(typeof(AlbumType))]
        public AlbumType? Type { get; set; }

        public bool Featured { get; set; }

        [Column("created_at")]
        public DateTime createdAt { get; set; }

        [NotMapped]
        public int[]? ArtistIds { get; set; }
        [NotMapped]
        public IEnumerable<SelectListItem>? ArtistsListSelected { get; set; }

        public ICollection<Song>? Songs { get; set; }
        public ICollection<PlaySong>? PlaySongs { get; set; }

        //Many to Many
        public ICollection<Artist>? Artists { get; set; }
        public ICollection<User>? Users { get; set; }

        public ICollection<Artist_Album>? Artist_Album { get; set; }
        public ICollection<User_Album>? User_Album { get; set; }
    }

    public enum AlbumType
    {
        [Display(Name = "Album")] Album,
        [Display(Name = "Ep")] Ep,
        [Display(Name = "Single")] Single
    }

}
