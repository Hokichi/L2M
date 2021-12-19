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
        public string Name { get; set; }
        public string Img_Url { get; set; }
        public DateTime Date_Release { get; set; }
        public string Type { get; set; }

        public ICollection<Artist_Album> Artist_Albums { get; set; }
        public ICollection<Song> Song { get; set; }
    }
}
