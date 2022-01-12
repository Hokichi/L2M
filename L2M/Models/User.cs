using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using System.Security.Cryptography;
using System.Text;

namespace L2M.Models
{
    public enum ProviderType
    {
        [Display(Name = "Local")] local,
        [Display(Name = "Google")] google,
        [Display(Name = "Facebook")] facebook
    }

    public enum RoleType
    {
        Admin,
        User
    }

    [Table("user")]
    public class User
    {
        [Key, Column("user_id")]
        public int UserId { get; set; }

        [StringLength(70)]
        public string? UserName { get; set; }

        [Required, StringLength(100), EmailAddress]
        //[RegularExpression("^[a-zA-Z0-9_\\.-]+@([a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$"
        //    , ErrorMessage = "Email is not valid")]
        public string Email { get; set; }

        [Required, StringLength(70)]
        [DataType(DataType.Password)]
        [RegularExpression(@"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8}$",
          ErrorMessage = "Password must be at least 8 characters")]
        public string Password { get; set; }

        [Required]
        [DataType(DataType.Password)]
        [Compare("Password")]
        [NotMapped]
        public string ConfirmPassword { get; set; }

        [EnumDataType(typeof(RoleType))]
        public RoleType Role { get; set; }

        [Column("img_url")]
        public string? ImgUrl { get; set; }

        [Column("is_actived")]
        public bool IsActived { get; set; }

        [EnumDataType(typeof(ProviderType))]
        public ProviderType Provider { get; set; }

        [Column("created_at")]
        public DateTime createdAt { get; set; }

        public ICollection<PlaySong> PlaySongs { get; set; }
        public ICollection<Session_User> Session_Users { get; set; }
        public ICollection<Playlist> Playlists { get; set; }

        //Many to Many
        public ICollection<Album> Albums { get; set; }
        public ICollection<Artist> Artists { get; set; }
        public ICollection<Playlist> LikePlaylists { get; set; }
        public ICollection<Song> Songs { get; set; }

        public ICollection<User_Album> User_Album { get; set; }
        public ICollection<User_Artist> User_Artist { get; set; }
        public ICollection<User_LikePlaylist> User_LikePlaylist { get; set; }
        public ICollection<User_Song> User_Song { get; set; }

        public static string getHashSHA1(string value)
        {
            MD5 sha1 = MD5.Create();
            byte[] Bytes = Encoding.ASCII.GetBytes(value);
            byte[] hash = sha1.ComputeHash(Bytes);
            StringBuilder sb = new StringBuilder();
            for (var i = 0; i < hash.Length; i++)
            {
                sb.Append(hash[i].ToString("X2"));
            }
            return sb.ToString();
        }
    }
}
