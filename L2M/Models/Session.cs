using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;

namespace L2M.Models
{
    [Table("session")]
    public class Session
    {
        [Key, Column("session_id")]
        public int SessionId { get; set; }

        [Required, Column("user_id")]
        public int UserId { get; set; }
        [ForeignKey("UserId")]
        public virtual User User { get; set; }

        public ICollection<PlaySong> PlaySong { get; set; }
    }
}
