using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;

namespace L2M.Models
{
    [Table("user_artist")]
    public class User_Artist
    {
        [Key, Column("user_artist_id")]
        public int UserArtistId { get; set; }

        [Required, Column("user_id")]
        public int UserId { get; set; }
        [ForeignKey("UserId")]
        public virtual User User { get; set; }

        [Required, Column("artist_id")]
        public int ArtistId { get; set; }
        [ForeignKey("ArtistId")]
        public virtual Artist Artist { get; set; }
    }
}
