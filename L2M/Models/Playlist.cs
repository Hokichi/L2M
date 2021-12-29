using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;

namespace L2M.Models
{
    [Table("playlist")]
    public class Playlist
    {
        [Key, Column("playlist_id")]
        public int PlaylistId { get; set; }

        [Required, StringLength(80)]
        public string Title { get; set; }

        [Column("user_id")]
        public int? UserId { get; set; }
        [ForeignKey("UserId")]
        public virtual User User { get; set; }

        [Column("img_url")]
        public string? ImgUrl { get; set; }

        public string? Description { get; set; }

        public ICollection<Playlist_Song> Playlist_Song { get; set; }
        public ICollection<PlaySong> PlaySong { get; set; }
        public ICollection<User_Playlist> User_Playlist { get; set; }
    }
}
