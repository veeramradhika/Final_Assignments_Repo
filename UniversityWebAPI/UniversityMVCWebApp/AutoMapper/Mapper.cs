using AutoMapper;
using UniversityMVCWebApp.APIModel;
using UniversityMVCWebApp.Models;

namespace UniversityMVCWebApp.AutoMapper
{
    public class Mapper:Profile
    {
        public Mapper()
        {
            CreateMap<UniversityViewModel, UniversityModelApi>().ReverseMap();

        }
    }
}
