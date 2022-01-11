using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace L2M.Models
{
    [Table("artist_album")]
    public class Artist_Album
    {
        [Key, Column("artist_album_id")]
        public int ArtistAlbumId { get; set; }

        [Required, Column("artist_id")]
        public int ArtistId { get; set; }
        [ForeignKey("ArtistId")]
        public virtual Artist Artist { get; set; }

        [Required, Column("album_id")]
        public int AlbumId { get; set; }
        [ForeignKey("AlbumId")]
        public virtual Album Album { get; set; }
    }
    public class SelectedListModel
    {
        public int[] SelectedIds { get; set; }
        public IEnumerable<MultiSelectList> Items { get; set; }
    }
}
