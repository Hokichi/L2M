using L2M.Data;
using L2M.Models;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace L2M.Services
{
    public class UserService : BaseService
    {
        public static IEnumerable<User> GetUser()
        {
            return _context.User.ToList();
        }

        public static User GetUser(int id)
        {
            var user = _context.User.Find(id);
            return user;
        }

        public static User GetAllInUser(int id)
        {
            var user = _context.User
                .Include(u => u.Playlists)
                .FirstOrDefault(u => u.UserId == id);
            return user;
        }

        public static int GetTotal()
        {
            int count = _context.User.Count();
            return count;
        }

        public static User GetUserByEmail(string email)
        {
            var user = _context.User.FirstOrDefault(u => u.Email == email);
            return user;
        }

        public static User checkUser(User user)
        {
            var userCheck = GetUserByEmail(user.Email);
            if (userCheck != null)
            {
                if(userCheck.Password == user.Password)
                {
                    return userCheck;
                }
            }
            return null;
        }

        public static int PostUser(User user)
        {
            _context.User.Add(user);
            int count = _context.SaveChanges();
            if (!UserExists(user.UserId))
            {
                return 0;
            }
            return count;
        }

        public static int PutUser(User user)
        {
            int count = 0;
            try
            {
                _context.User.Update(user);
                count = _context.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!UserExists(user.UserId))
                {
                    return 0;
                }
                else
                {
                    throw;
                }
            }
            return count;
        }

        public static int DeleteUser(int id)
        {
            var user = _context.User.Find(id);

            if (user == null)
            {
                return 0;
            }
            _context.User.Remove(user);
            int count = _context.SaveChanges();

            return count;
        }

        public static bool UserExists(int id)
        {
            return _context.User.Any(e => e.UserId == id);
        }

    }
}
