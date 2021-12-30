using L2M.Data;
using L2M.Models;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace L2M.Services
{
    public class SessionService : BaseService
    {
        public static IEnumerable<Session> GetSession()
        {
            return _context.Session.Include(s => s.User).ToList();
        }

        public static Session GetSession(int id)
        {
            var session = _context.Session.Include(s => s.User)
                                    .FirstOrDefault(s => s.SessionId == id);
            return session;
        }

        public static int PostSession(Session session)
        {
            _context.Session.Add(session);
            int count = _context.SaveChanges();
            if (!SessionExists(session.SessionId))
            {
                return 0;
            }
            return count;
        }

        public static int PutSession(int id, Session session)
        {
            int count = 0;
            try
            {
                _context.Session.Update(session);
                count = _context.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!SessionExists(session.SessionId))
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

        public static int DeleteSession(int id)
        {
            var session = _context.Session.Find(id);

            if (session == null)
            {
                return 0;
            }
            _context.Session.Remove(session);
            int count = _context.SaveChanges();

            return count;
        }

        public static bool SessionExists(int id)
        {
            return _context.Session.Any(e => e.SessionId == id);
        }
    }
}
