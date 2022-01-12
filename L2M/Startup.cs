using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using L2M.Data;
using L2M.Controllers;
using L2M.Models;
using L2M.Services;

namespace L2M
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            //services.AddControllers().AddControllersAsServices();

            services.AddControllersWithViews();
            services.AddRazorPages();
            services.AddDistributedMemoryCache();

            services.AddSession((options) =>
            {
                options.Cookie.Name = "CurrentUser";
                options.IdleTimeout = new TimeSpan(2, 0, 0); //hieu luc trong vong 2 tieng
                options.Cookie.HttpOnly = true;
                options.Cookie.IsEssential = true;
            });

            services.AddOptions();
            var mailSettings = Configuration.GetSection("MailSetting");
            services.Configure<MailSettings>(mailSettings);
            services.AddTransient<ISendMailService, SendMailService>();

            //services.AddMvc().AddControllersAsServices();

            services.AddDbContext<L2MContext>(options =>
                    options.UseMySQL(Configuration.GetConnectionString("DefaultConnection")));
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseExceptionHandler("/Home/Error");
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }
            app.UseHttpsRedirection();
            app.UseStaticFiles();

            app.UseSession(); //SessionMiddleware

            app.UseRouting();

            app.UseAuthentication();
            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapRazorPages();
                endpoints.MapControllerRoute(
                    name: "areas",
                    pattern: "{area:exists}/{controller=Home}/{action=Index}/{id?}");

                endpoints.MapControllerRoute(
                    name: "default",
                    pattern: "{controller=Home}/{action=Index}/{id?}");
            });
        }
    }
}
