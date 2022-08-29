using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace UniversityMVCWebApp.APIModel
{
    public class UniversityModelApi
    {
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Key]
        public int Id { get; set; }
        [Required]
        [MaxLength(50, ErrorMessage = "University Name Should not be more than 50 character")]
        public string UniversityName { get; set; }
        [Required]
        [MaxLength(50, ErrorMessage = "Location Should not be more than 50 character")]
        public string Location { get; set; }
        [Required]
        [MaxLength(50, ErrorMessage = "Affiliated Under Should not be more than 50 character")]
        public string AffiliatedUnder { get; set; }
        [Required]
        public int EstablishedYear { get; set; }
    }
}
