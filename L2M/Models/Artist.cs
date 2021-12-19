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
        public string Name { get; set; }
        public string Bio { get; set; }
        public string Type { get; set; }
        public string Img_Url { get; set; }

        public ICollection<Artist_Album> Artist_Albums { get; set; }
    }
}
