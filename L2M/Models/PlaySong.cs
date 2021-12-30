using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;

namespace L2M.Models
{
    [Table("playsong")]
    public class PlaySong
    {
        [Key, Column("playsong_id")]
        public int PlaySongId { get; set; }

        [Column("user_id")]
        public int? UserId { get; set; }
        [ForeignKey("UserId")]
        public virtual User User { get; set; }

        [Required, Column("song_id")]
        public int SongId { get; set; }
        [ForeignKey("SongId")]
        public virtual Song Song { get; set; }

        [Required, Column("session_id")]
        public int SessionId { get; set; }
        [ForeignKey("SessionId")]
        public virtual Session Session { get; set; }

        [Required, Column("playlist_id")]
        public int PlaylistId { get; set; }
        [ForeignKey("SessionId")]
        public virtual Playlist Playlist { get; set; }

        [Column("start_time")]
        public DateTime StartTime { get; set; }

        [Required, Column("album_id")]
        public int AlbumId { get; set; }
        [ForeignKey("AlbumId")]
        public virtual Album Album { get; set; }

        [Required]
        public string Location { get; set; }
    }
}
