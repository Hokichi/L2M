using L2M.Models;
using L2M.Services;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;

namespace L2M.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class UsersController : Controller
    {
        private readonly IWebHostEnvironment _webHostEnviroment;
        public UsersController(IWebHostEnvironment hostEnvironment)
        {
            UserService.getContext();
            this._webHostEnviroment = hostEnvironment;
        }

        // GET: Users1
        public IActionResult Index()
        {
            return View(UserService.GetUser());
        }
        // GET: Users1/Details/5
        public IActionResult Detail(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var user = UserService.GetUser((int)id);

            if (user == null)
            {
                return NotFound();
            }

            return View(user);
        }
        // GET: Users1/Create
        public IActionResult Create()
        {
            return View();
        }

        // GET: Users1/Edit/5
        public IActionResult Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var user = UserService.GetUser((int)id);
            if (user == null)
            {
                return NotFound();
            }
            return View(user);
        }

        // POST: Users1/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit([Bind("UserId,UserName, Role,ImgUrl,Email")] User user)
        {
            ModelState.Remove("Password");
            ModelState.Remove("ConfirmPassword");
            if (ModelState.IsValid)
            {
                var oldObj = UserService.GetUserToEdit(user);
                if (String.IsNullOrEmpty(oldObj.ImgUrl))
                {
                    oldObj.ImgUrl = "~/img/defaultImg.png";
                }
                string oldFileName = Path.GetFileNameWithoutExtension(oldObj.ImgUrl);
                string oldFileNameExtension = Path.GetExtension(oldObj.ImgUrl);
                var files = HttpContext.Request.Form.Files;
                if (files.Count > 0)
                {
                    string wwwRootPath = _webHostEnviroment.WebRootPath;
                    string path = wwwRootPath + "/img/user/";
                    string fileName = Path.GetFileNameWithoutExtension(files[0].FileName);
                    string extension = Path.GetExtension(files[0].FileName);
                    if (oldFileName != "defaultImg" || oldFileName != "")
                    {
                        oldFileName = oldFileName + oldFileNameExtension;
                        var oldFile = Path.Combine(path, oldFileName);
                        if (System.IO.File.Exists(oldFile))
                        {
                            System.IO.File.Delete(oldFile);
                        }
                    }
                    fileName = fileName + DateTime.Now.ToString("yymmssfff") + extension;
                    using (var fileStream = new FileStream(Path.Combine(path, fileName), FileMode.Create))
                    {
                        files[0].CopyTo(fileStream);
                    }
                    user.ImgUrl = "~/img/user/" + fileName;
                }
                else if (files.Count == 0)
                {
                    user.ImgUrl = oldObj.ImgUrl;
                }

                int count = UserService.PutUser(user);
                if (count > 0)
                {
                    TempData["Success"] = "Edited";
                    return RedirectToAction(nameof(Index));
                }
                else
                {
                    TempData["Error"] = "Error edit";
                    return View(user);
                }
            }
            else
            {
                TempData["Error"] = "Error edit";
            }
            return View(user);
        }

        //[HttpPost, ActionName("Delete")]
        //[ValidateAntiForgeryToken]
        public IActionResult Delete(int id)
        {
            var obj = UserService.GetUser((int)id);
            if (obj == null)
            {
                TempData["Error"] = "Error";
                return RedirectToAction("Index");
            }
            string path = _webHostEnviroment.WebRootPath + "/img/user/";
            string oldFileName = Path.GetFileNameWithoutExtension(obj.ImgUrl);
            string oldFileNameExtension = Path.GetExtension(obj.ImgUrl);
            if (oldFileName != "defaultImg" || oldFileName != "")
            {
                oldFileName = oldFileName + oldFileNameExtension;
                var oldFile = Path.Combine(path, oldFileName);
                if (System.IO.File.Exists(oldFile))
                {
                    System.IO.File.Delete(oldFile);
                }
            }
            int count = UserService.DeleteUser(id);
            if (count > 0)
            {
                TempData["Success"] = "Deleted";
                return RedirectToAction(nameof(Index));
            }
            TempData["Error"] = "Error delete";
            return RedirectToAction(nameof(Index));
        }

    }
}
