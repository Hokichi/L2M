using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;

namespace L2M.Models
{
    public enum ProviderType
    {
        [Display(Name = "Local")] local,
        [Display(Name = "Google")] google,
        [Display(Name = "Facebook")] facebook
    }

    [Table("user")]
    public class User
    {
        [Key, Column("user_id")]
        public int UserId { get; set; }

        [StringLength(70)]
        public string? UserName { get; set; }

        [Required, StringLength(100), EmailAddress]
        public string Email { get; set; }

        [Required, StringLength(70)]
        public string Password { get; set; }

        public int Role { get; set; }

        [Column("img_url")]
        public string? ImgUrl { get; set; }

        [Column("is_actived")]
        public int IsActived { get; set; }

        [EnumDataType(typeof(ProviderType))]
        public ProviderType Provider { get; set; }

        public ICollection<PlaySong> PlaySong { get; set; }
        public ICollection<Session> Session { get; set; }
        public ICollection<Playlist> Playlist { get; set; }

        public ICollection<User_Album> User_Album { get; set; }
        public ICollection<User_Artist> User_Artist { get; set; }
        public ICollection<User_Playlist> User_Playlist { get; set; }
        public ICollection<User_Song> User_Song { get; set; }
    }
}
