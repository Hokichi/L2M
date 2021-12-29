using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;

namespace L2M.Models
{
    [Table("album")]
    public class Album
    {
        [Key, Column("album_id")]
        public int AlbumId { get; set; }

        [Required, StringLength(80)]
        public string Title { get; set; }

        [Required, Column("img_url")]
        public string ImgUrl { get; set; }

        [Column("date_release")]
        public DateTime? DateRelease { get; set; }

        [StringLength(50)]
        public string? Type { get; set; }

        public ICollection<Song> Songs { get; set; }
        public ICollection<PlaySong> PlaySongs { get; set; }

        public ICollection<Artist_Album> Artist_Albums { get; set; }
        public ICollection<User_Album> User_Albums { get; set; }
    }
}
