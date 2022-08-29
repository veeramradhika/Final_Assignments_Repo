using AutoMapper;
using UniversityClassLiberary.Data.Entities;
using UniversityWebAPI.APIModels;

namespace UniversityWebAPI.AutoMapping
{
    public class AutoMapperMapping : Profile
    {
        public AutoMapperMapping()
        {
            CreateMap<University, UniversityModelApi>().ReverseMap();
            
        }
    }



}

