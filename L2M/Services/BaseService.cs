using L2M.Data;
using Microsoft.EntityFrameworkCore;
using System;
using System.Configuration;

namespace L2M.Services
{
    public class BaseService
    {
        protected static L2MContext _context;

        public static void getContext()
        {
            //var connectString = ConfigurationManager.GetSection("ConnectionStrings:DefaultConnection").ToString();
            var connectString = "server=127.0.0.1;user id=root;password=;port=3306;database=musicplayer1;Convert Zero Datetime=True; Treat Tiny As Boolean=True";
            //Console.WriteLine("hsisdasdh" + connectString);
            var contextOption = new DbContextOptionsBuilder<L2MContext>();
            contextOption.UseMySQL(connectString);
            _context = new L2MContext(contextOption.Options);
        }

    }
}

