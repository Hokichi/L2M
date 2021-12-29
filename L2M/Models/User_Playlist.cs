using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;

namespace L2M.Models
{
    [Table("user_playlist")]
    public class User_Playlist
    {
        [Key, Column("user_playlist_id")]
        public int UserPlaylistId { get; set; }

        [Required, Column("user_id")]
        public int UserId { get; set; }
        [ForeignKey("UserId")]
        public virtual User User { get; set; }

        [Required, Column("playlist_id")]
        public int PlaylistId { get; set; }
        [ForeignKey("PlaylistId")]
        public virtual Playlist Playlist { get; set; }
    }
}
