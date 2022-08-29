using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;

namespace UniversityMVCWebApp.Areas.Identity.Data;

// Add profile data for application users by adding properties to the UniversityMVCWebAppUser class
public class UniversityMVCWebAppUser : IdentityUser
{
    [Required]
    [StringLength(10, ErrorMessage = "PAN Number is required")]
    //[RegularExpression("^([A-Za-z]){5}([0-9]){4}([A-Za-z]){1}$", ErrorMessage = "Invalid PAN Number")]
    public string PanNumber { get; set; }
    
}

