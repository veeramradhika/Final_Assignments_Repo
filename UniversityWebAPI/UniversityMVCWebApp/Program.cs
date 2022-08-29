using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using UniversityMVCWebApp.Areas.Identity.Data;
using UniversityMVCWebApp.Data;
var builder = WebApplication.CreateBuilder(args);
var connectionString = builder.Configuration.GetConnectionString("UniversityMVCWebAppContextConnection") ?? throw new InvalidOperationException("Connection string 'UniversityMVCWebAppContextConnection' not found.");

builder.Services.AddDbContext<UniversityMVCWebAppContext>(options =>
    options.UseSqlServer(connectionString));

builder.Services.AddIdentity<UniversityMVCWebAppUser,IdentityRole>(options => options.SignIn.RequireConfirmedAccount = false)
    .AddDefaultUI().AddEntityFrameworkStores<UniversityMVCWebAppContext>();

builder.Services.AddScoped<UniversityMVCWebAppContext>();


builder.Services.AddAuthorization(options => {
    options.AddPolicy("readonlypolicy",
        builder => builder.RequireRole("Operator"));
    options.AddPolicy("writepolicy",
        builder => builder.RequireRole("Admin"));
});

// Add services to the container.
builder.Services.AddControllersWithViews();

builder.Services.AddAutoMapper(typeof(Program));

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();
app.UseAuthentication();;

app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");
app.MapRazorPages();
app.Run();
