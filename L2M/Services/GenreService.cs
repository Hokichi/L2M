using L2M.Data;
using L2M.Models;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;

namespace L2M.Services
{
    public class GenreService : BaseService
    {
        public static IEnumerable<Genre> GetGenre()
        {
            return _context.Genre.AsNoTracking().ToList();
        }

        public static Genre GetGenre(int id)
        {
            var genre = _context.Genre.Find(id);
            return genre;
        }

        public static Genre GetGenreByName(string name)
        {
            var genre = _context.Genre.AsNoTracking().FirstOrDefault(u => u.Name == name);
            return genre;
        }

        public static Genre GetGenreToEdit(Genre genre)
        {
            var g = _context.Genre.AsNoTracking().FirstOrDefault(u => u.GenreId == genre.GenreId);
            return g;
        }

        public static int GetTotal()
        {
            int count = _context.Genre.AsNoTracking().Count();
            return count;
        }

        public static int PostGenre(Genre genre)
        {
            _context.Genre.Add(genre);
            int count = _context.SaveChanges();
            if (!GenreExists(genre.GenreId))
            {
                return 0;
            }
            return count;
        }

        public static int PutGenre(Genre genre)
        {
            int count = 0;
            try
            {
                _context.Genre.Update(genre);
                count = _context.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!GenreExists(genre.GenreId))
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

        public static int DeleteGenre(int id)
        {
            var genre = _context.Genre.Find(id);

            if (genre == null)
            {
                return 0;
            }
            _context.Genre.Remove(genre);
            int count = _context.SaveChanges();

            return count;
        }

        public static bool GenreExists(int id)
        {
            return _context.Genre.Any(e => e.GenreId == id);
        }
    }
}
