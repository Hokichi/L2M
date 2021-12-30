using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;

namespace L2M.Models
{
    [Table("genre")]
    public class Genre
    {
        [Key, Column("genre_id")]
        public int GenreId { get; set; }

        [Required, StringLength(50)]
        public string Name { get; set; }

        [Column("img_url")]
        public string? ImgUrl { get; set; }

        public string? Description { get; set; }

        public ICollection<Song> Songs { get; set; }
    }
}
