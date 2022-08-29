using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UniversityClassLiberary.Data.Entities;

namespace UniversityClassLiberary.Data
{
    public class UniversityDBContext : DbContext
    {
        public UniversityDBContext()
        {

        }
        public UniversityDBContext(DbContextOptions options) : base(options) { }
        public DbSet<University> Universities { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder OptionsBuilder)
        {
        
            OptionsBuilder.UseSqlServer(@"Server=RADHIKA;Database=University;Trusted_Connection=True;");
        }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
           modelBuilder.Entity<University>().HasIndex(u => u.UniversityName).IsUnique();
        }
    }
}
