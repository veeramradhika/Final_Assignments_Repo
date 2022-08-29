using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using UniversityMVCWebApp.Areas.Identity.Data;
using UniversityMVCWebApp.Data;
using UniversityMVCWebApp.Models;

namespace UniversityMVCWebApp.Controllers
{
    [Authorize(policy: "writepolicy")]
    public class AdminController : Controller
    {
        private readonly UniversityMVCWebAppContext _universityMVCWebAppContext;
        private readonly UserManager<UniversityMVCWebAppUser> _userManager;
        private readonly RoleManager<IdentityRole> _roleManager;
        public AdminController(UniversityMVCWebAppContext universityMVCWebAppContext, UserManager<UniversityMVCWebAppUser> userManager, RoleManager<IdentityRole> roleManager)
        {
            _universityMVCWebAppContext = universityMVCWebAppContext;
            _userManager = userManager;
            _roleManager = roleManager;
        }
        public ActionResult RegisterData()
        {
            return View();
            
        }
        public IActionResult Index()
        {
            if (_universityMVCWebAppContext.Approval == null)
            {
                return NotFound();
            }
            List<AdminViewModel> admins = new List<AdminViewModel>();
            admins = _universityMVCWebAppContext.Approval.ToList();
            if (admins == null)
            {
                return NotFound();
            }
            return View(admins);
        }
        [HttpPost]

        public async Task<IActionResult> Approval(int  id)
        {
            var data = _universityMVCWebAppContext.Approval.Find(id);
            if (data == null)
            {
                return NoContent();
            }

            var user = new UniversityMVCWebAppUser()
            {
               Email=data.Email,
                PanNumber = data.PanNumber,
                UserName = data.Email
            };
            var approval = new StatusViewModel()
            {
                //Id = data.Id,
                Email=data.Email,
                //PanNumber=data.PanNumber,   
                //Password=data.Password,
                //ConfirmPassword=data.ConfirmPassword,
                //RoleName=data.RoleName,
                Status = "Success"
            };
            _universityMVCWebAppContext.StatusViewModel.Add(approval);
            var roles = _roleManager.FindByNameAsync(data.RoleName).Result;
            await _userManager.CreateAsync(user, data.Password);
            await _userManager.AddToRoleAsync(user, roles.Name);
            _universityMVCWebAppContext.Approval.Remove(data);
            _universityMVCWebAppContext.SaveChanges();
            return Json("Success");




        }
        public async Task<IActionResult> Rejection(int id)
        {
            var data = _universityMVCWebAppContext.Approval.Find(id);
            if (data == null)
            {
                return NotFound();
            }
            _universityMVCWebAppContext.Approval.Remove(data);
            _universityMVCWebAppContext.SaveChanges();
            var reject = new StatusViewModel()
            {

                //Id = data.Id,
                Email = data.Email,
                //PanNumber = data.PanNumber,
                //Password = data.Password,
                //ConfirmPassword = data.ConfirmPassword,
                //RoleName = data.RoleName,
                Status = "Rejected"
            };
            _universityMVCWebAppContext.StatusViewModel.Add(reject);
            _universityMVCWebAppContext.Approval.Add(data);
            _universityMVCWebAppContext.SaveChanges();
            return Json("Rejected");





        }
    }
}
    
