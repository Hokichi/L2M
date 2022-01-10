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

        [Required]
        public string Title { get; set; }

        [Column("user_id")]
        public int? UserId { get; set; }
        [ForeignKey("UserId")]
        public virtual User User { get; set; }

        [Column("img_url")]
        public string? ImgUrl { get; set; }

        public string? Description { get; set; }
        public bool Featured { get; set; }
        //public int? TotalSong { get; set; }

        public ICollection<PlaySong> PlaySongs { get; set; }

        //Many to Many
        public ICollection<Song> Songs { get; set; }
        public ICollection<User> Users { get; set; }

        public ICollection<Playlist_Song> Playlist_Song { get; set; }
        public ICollection<User_LikePlaylist> User_LikePlaylist { get; set; }
    }
}
