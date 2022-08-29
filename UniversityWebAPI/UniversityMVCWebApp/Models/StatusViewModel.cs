using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace UniversityMVCWebApp.Models
{
    public class StatusViewModel
    {
        
        //[ForeignKey("Id")]
        
        //public int Id { get; set; }
        [Key]
        [Required]
        [MaxLength(50)]
        public string Email { get; set; }

        //[Required]
        //[MaxLength(20)]
        //public string PanNumber { get; set; }

        //[Required]
        //[MinLength(8)]
        //[MaxLength(100)]
        //public string Password { get; set; }

        //[Required]
        //[MinLength(8)]
        //[MaxLength(100)]
        //public string ConfirmPassword { get; set; }

        //[Required]
        //[MaxLength(20)]
        //public string RoleName { get; set; }
        public string Status { get; set; }
    }
}
