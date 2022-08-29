using System.ComponentModel.DataAnnotations;

namespace UniversityMVCWebApp.Models
{
    public class AdminViewModel
    {
        internal string UserName;
        [Key]
        [Required]
        public int Id { get; set; }
       
        [Required]
        [MaxLength(50)]
        public string Email { get; set; }

        [Required]
        [MaxLength(20)]
        public string PanNumber { get; set; }

        [Required]
        [MinLength(8)]
        [MaxLength(10)]
        public string Password { get; set; }

        [Required]
        [MinLength(8)]
        [MaxLength(10)]
        public string ConfirmPassword { get; set; }

        [Required]
        [MaxLength(20)]
        public string RoleName { get; set; }
       
        
    }
}
