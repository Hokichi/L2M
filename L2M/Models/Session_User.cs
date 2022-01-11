using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;

namespace L2M.Models
{
    [Table("session_user")]
    public class Session_User
    {
        [Key, Column("session_user_id")]
        public int SessionUserId { get; set; }

        [Required, Column("user_id")]
        public int UserId { get; set; }
        [ForeignKey("UserId")]
        public virtual User User { get; set; }

        public ICollection<PlaySong> PlaySongs { get; set; }
    }
}
