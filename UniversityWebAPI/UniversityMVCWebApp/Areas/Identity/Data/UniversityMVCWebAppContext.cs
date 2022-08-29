using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using UniversityMVCWebApp.Areas.Identity.Data;
using UniversityMVCWebApp.Models;

namespace UniversityMVCWebApp.Data;

public class UniversityMVCWebAppContext : IdentityDbContext<UniversityMVCWebAppUser>
{
    public UniversityMVCWebAppContext(DbContextOptions<UniversityMVCWebAppContext> options)
        : base(options)
    {
    }
    public DbSet<AdminViewModel> Approval { get; set; }
    public DbSet<StatusViewModel> StatusViewModel { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder OptionsBuilder)
    {

        OptionsBuilder.UseSqlServer(@"Server=RADHIKA;Database=University;Trusted_Connection=True;");
    }
    
    protected override void OnModelCreating(ModelBuilder builder)
    {
        base.OnModelCreating(builder);
        // Customize the ASP.NET Identity model and override the defaults if needed.
        // For example, you can rename the ASP.NET Identity table names and more.
        // Add your customizations after calling base.OnModelCreating(builder);
        builder.ApplyConfiguration(new AplicationUserEntityConfiguration());
        builder.Entity<AdminViewModel>().HasIndex(u => u.Email).IsUnique();
        //builder.Entity<UniversityMVCWebApp>().HasIndex(u => u.Email).IsUnique();
        builder.Entity<StatusViewModel>().HasIndex(u => u.Email).IsUnique();
    }

    public class AplicationUserEntityConfiguration : IEntityTypeConfiguration<UniversityMVCWebAppUser>
    {
        public void Configure(EntityTypeBuilder<UniversityMVCWebAppUser> builder)
        {
            builder.Property(p => p.PanNumber).HasMaxLength(10);
        }
    }
}
