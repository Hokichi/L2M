using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;

namespace L2M.Models
{
    [Table("playsong")]
    public class PlaySong
    {
        public int PlaySongId { get; set; }
        public int UserId { get; set;}
        public int SongId { get; set; }
        public int SessionId { get; set; }
        public int PlaylistId { get; set; }
        public DateTime StartTime { get; set; }
        public int AlbumId { get; set; }
        public string Location { get; set; }
    }
}
