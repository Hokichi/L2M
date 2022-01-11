using L2M.Data;
using L2M.Models;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace L2M.Services
{
    public class Session_UserService : BaseService
    {
        public static IEnumerable<Session_User> GetSession()
        {
            return _context.Session_User.Include(s => s.User).ToList();
        }

        public static Session_User GetSession(int id)
        {
            var sessionUser = _context.Session_User.Include(s => s.User)
                                    .FirstOrDefault(s => s.SessionUserId == id);
            return sessionUser;
        }

        public static int PostSession(Session_User sessionUser)
        {
            _context.Session_User.Add(sessionUser);
            int count = _context.SaveChanges();
            if (!Session_UserExists(sessionUser.SessionUserId))
            {
                return 0;
            }
            return count;
        }

        public static int PutSession(int id, Session_User sessionUser)
        {
            int count = 0;
            try
            {
                _context.Session_User.Update(sessionUser);
                count = _context.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!Session_UserExists(sessionUser.SessionUserId))
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

        public static int DeleteSession_User(int id)
        {
            var sessionUser = _context.Session_User.Find(id);

            if (sessionUser == null)
            {
                return 0;
            }
            _context.Session_User.Remove(sessionUser);
            int count = _context.SaveChanges();

            return count;
        }

        public static bool Session_UserExists(int id)
        {
            return _context.Session_User.Any(e => e.SessionUserId == id);
        }
    }
}
