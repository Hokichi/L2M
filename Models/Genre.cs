using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;

namespace L2M.Models
{
    [Table("genre")]
    public class Genre
    {
        [Key]
        [Column("genre_id")]
        public int GenreId { get; set; }
        public string Name { get; set; }
        public string Img_Url { get; set; }

        public ICollection<Song> Song { get; set; }
    }
}
