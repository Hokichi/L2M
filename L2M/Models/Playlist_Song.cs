using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;

namespace L2M.Models
{
    [Table("playlist_song")]
    public class Playlist_Song
    {
        [Key, Column("playlist_song_id")]
        public int PlaylistSongId { get; set; }

        [Required, Column("playlist_id")]
        public int PlaylistId { get; set; }
        [ForeignKey("PlaylistId")]
        public virtual Playlist Playlist { get; set; }

        [Required, Column("song_id")]
        public int SongId { get; set; }
        [ForeignKey("SongId")]
        public virtual Song Song { get; set; }
    }
}
