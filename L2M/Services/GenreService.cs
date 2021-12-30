﻿using L2M.Data;
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
            return _context.Genre.ToList();
        }

        public static Genre GetGenre(int id)
        {
            var genre = _context.Genre.Find(id);
            return genre;
        }

        public static IEnumerable<Song> GetSongByGenre(int id)
        {
            var genre = _context.Genre.Include(g => g.Songs).FirstOrDefault(g => g.GenreId == id);
            return genre.Songs;
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

        public static int PutGenre(int id, Genre genre)
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
