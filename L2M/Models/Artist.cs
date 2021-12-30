using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;

namespace L2M.Models
{
    [Table("artist")]
    public class Artist
    {
        [Key, Column("artist_id")]
        public int ArtistId { get; set; }

        [Required, StringLength(55)]
        public string Name { get; set; }

        public string? Description { get; set; }

        [Required, StringLength(55)]
        public string Type { get; set; }

        [Column("img_url")]
        public string? ImgUrl { get; set; }

        //Many to Many
        public ICollection<Album> Albums { get; set; }
        public ICollection<Song> Songs { get; set; }
        public ICollection<User> Users { get; set; }

        public ICollection<Artist_Album> Artist_Album { get; set; }
        public ICollection<Artist_Song> Artist_Song { get; set; }
        public ICollection<User_Artist> User_Artist { get; set; }
    }
}
