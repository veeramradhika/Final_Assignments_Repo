using AutoMapper;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using UniversityClassLiberary.Data;
using UniversityClassLiberary.Data.Entities;
using UniversityWebAPI.APIModels;


namespace UniversityWebAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UniversityController : ControllerBase
    {
        private readonly UniversityDBContext _universityDBContext;
        private readonly IMapper _mapper;
        

        public UniversityController(UniversityDBContext universityDBContext, IMapper mapper)
        {
            _universityDBContext = universityDBContext;
        }

        

        [HttpPost]
        public async Task<ActionResult<University>> Create(University university)
        {
            _universityDBContext.Add(university);
            await _universityDBContext.SaveChangesAsync();
            _mapper.Map<UniversityModelApi>(university);
            return Ok(university);
        }
        [HttpGet]
        public async Task<ActionResult<IEnumerable<University>>> Index()
        {
            return await _universityDBContext.Universities.ToListAsync();
            
        }
        [HttpGet("{id}")]
        public async Task<ActionResult<University>> GetUniversity(int id)
        {
            var University = await _universityDBContext.Universities.FindAsync(id);
            _mapper.Map<UniversityModelApi>(University);

            if (id == null)
            {
                return NotFound();
            }

            return University;
        }
        [HttpPut]
        public async Task<IActionResult> PutUniversity(int Id, University university)
        {
            if (Id != university.Id)
            {
                return BadRequest();
            }

            _universityDBContext.Entry(university).State = EntityState.Modified;
            _mapper.Map<UniversityModelApi>(university);

            try
            {
                await _universityDBContext.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!universityExists(Id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return Ok(_universityDBContext.Universities);
        }

        [HttpDelete("{id}")]
        public async Task<ActionResult<University>> DeleteProducts(int id)
        {
            var university = await _universityDBContext.Universities.FindAsync(id);
            _mapper.Map<UniversityModelApi>(university);
            if (university == null)
            {
                return NotFound();
            }

            _universityDBContext.Universities.Remove(university);
            
            await _universityDBContext.SaveChangesAsync();

            return university;
        }

        private bool universityExists(int Id )
        {
            return _universityDBContext.Universities.Any(e => e.Id == Id);
        }
    }
}
