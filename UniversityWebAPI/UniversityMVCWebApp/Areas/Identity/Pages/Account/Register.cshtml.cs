// Licensed to the .NET Foundation under one or more agreements.
// The .NET Foundation licenses this file to you under the MIT license.
#nullable disable

using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Text.Encodings.Web;
using System.Threading;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.UI.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.WebUtilities;
using Microsoft.Extensions.Logging;
using UniversityMVCWebApp.Areas.Identity.Data;
using UniversityMVCWebApp.Data;
using UniversityMVCWebApp.Models;

namespace UniversityMVCWebApp.Areas.Identity.Pages.Account
{
    public class RegisterModel : PageModel
    {
        private readonly SignInManager<UniversityMVCWebAppUser> _signInManager;
        private readonly UserManager<UniversityMVCWebAppUser> _userManager;
        private readonly IUserStore<UniversityMVCWebAppUser> _userStore;
        private readonly IUserEmailStore<UniversityMVCWebAppUser> _emailStore;
        private readonly ILogger<RegisterModel> _logger;
        private readonly IEmailSender _emailSender;
        private readonly RoleManager<IdentityRole> _roleManager;
        private readonly UniversityMVCWebAppContext _universityMVCWebAppContext;
       

      public RegisterModel(
            UserManager<UniversityMVCWebAppUser> userManager,
            IUserStore<UniversityMVCWebAppUser> userStore,
            SignInManager<UniversityMVCWebAppUser> signInManager,
            ILogger<RegisterModel> logger, RoleManager<IdentityRole> roleManager,
            IEmailSender emailSender, UniversityMVCWebAppContext universityMVCWebAppContext)
        {
            _userManager = userManager;
            _userStore = userStore;
            _emailStore = GetEmailStore();
            _signInManager = signInManager;
            _logger = logger;
            _emailSender = emailSender;
            _roleManager = roleManager;
            _universityMVCWebAppContext=universityMVCWebAppContext;
        }

        /// <summary>
        ///     This API supports the ASP.NET Core Identity default UI infrastructure and is not intended to be used
        ///     directly from your code. This API may change or be removed in future releases.
        /// </summary>
        [BindProperty]
        public InputModel Input { get; set; }

        /// <summary>
        ///     This API supports the ASP.NET Core Identity default UI infrastructure and is not intended to be used
        ///     directly from your code. This API may change or be removed in future releases.
        /// </summary>
        public string ReturnUrl { get; set; }

        /// <summary>
        ///     This API supports the ASP.NET Core Identity default UI infrastructure and is not intended to be used
        ///     directly from your code. This API may change or be removed in future releases.
        /// </summary>
        public IList<AuthenticationScheme> ExternalLogins { get; set; }

        /// <summary>
        ///     This API supports the ASP.NET Core Identity default UI infrastructure and is not intended to be used
        ///     directly from your code. This API may change or be removed in future releases.
        /// </summary>
        public class InputModel
        {
            //internal readonly string RoleName;

            /// <summary>
            ///     This API supports the ASP.NET Core Identity default UI infrastructure and is not intended to be used
            ///     directly from your code. This API may change or be removed in future releases.
            /// </summary>
            [Required]
            [EmailAddress]
            [Display(Name = "Email")]
            public string Email { get; set; }
            [Required]
            [StringLength(10, ErrorMessage = "PAN Number is required")]
            //[RegularExpression("^([A-Za-z]){5}([0-9]){4}([A-Za-z]){1}$", ErrorMessage = "Invalid PAN Number")]
            public string PanNumber { get; set; }
            public string Status { get; set; }
            public string RoleName { get; set; }



            /// <summary>
            ///     This API supports the ASP.NET Core Identity default UI infrastructure and is not intended to be used
            ///     directly from your code. This API may change or be removed in future releases.
            /// </summary>
            [Required]
            [StringLength(100, ErrorMessage = "The {0} must be at least {2} and at max {1} characters long.", MinimumLength = 6)]
            [DataType(DataType.Password)]
            [Display(Name = "Password")]
            public string Password { get; set; }

            /// <summary>
            ///     This API supports the ASP.NET Core Identity default UI infrastructure and is not intended to be used
            ///     directly from your code. This API may change or be removed in future releases.
            /// </summary>
            [DataType(DataType.Password)]
            [Display(Name = "Confirm password")]
            [Compare("Password", ErrorMessage = "The password and confirmation password do not match.")]
            public string ConfirmPassword { get; set; }
        }


        public async Task OnGetAsync(string returnUrl = null)
        {
            ViewData["roles"] = _roleManager.Roles.ToList();
            ReturnUrl = returnUrl;
            ExternalLogins = (await _signInManager.GetExternalAuthenticationSchemesAsync()).ToList();
        }

        public async Task<IActionResult> OnPostAsync(string returnUrl = null)
        {

            returnUrl ??= Url.Content("~/");
           var role =_roleManager.FindByIdAsync(Input.RoleName).Result;
            ExternalLogins = (await _signInManager.GetExternalAuthenticationSchemesAsync()).ToList();
            
            if (ModelState.IsValid)
            {
                
                var user = CreateUser();
                user.PanNumber = Input.PanNumber;
                var data = new AdminViewModel()
                {
                    Email = Input.Email,
                    PanNumber = Input.PanNumber,
                    Password = Input.Password,
                    ConfirmPassword = Input.ConfirmPassword,
                    RoleName ="Operator"
                    //Status="Pending"
                    
                };
                _universityMVCWebAppContext.Approval.Add(data);
                _universityMVCWebAppContext.SaveChanges();
                SendEmail();
                return RedirectToAction("RegisterData", "Admin");

                var data1 = await _universityMVCWebAppContext.Approval.AddAsync(data);
                await _userStore.SetUserNameAsync(user, Input.Email, CancellationToken.None);
                await _emailStore.SetEmailAsync(user, Input.Email, CancellationToken.None);
                var result = await _userManager.CreateAsync(user, Input.Password);

                if (result.Succeeded)
                {
                    SendEmail();
                    _logger.LogInformation("User created a new account with password.");
                    await _userManager.AddToRoleAsync(user, role.ToString());
                    var userId = await _userManager.GetUserIdAsync(user);
                    var code = await _userManager.GenerateEmailConfirmationTokenAsync(user);
                    code = WebEncoders.Base64UrlEncode(Encoding.UTF8.GetBytes(code));
                    var callbackUrl = Url.Page("/Account/confirmEmail",
                        pageHandler: null,
                        values: new { area = "Identity", userId = userId, code, returnUrl = returnUrl });
                    await _emailSender.SendEmailAsync(Input.Email, "Confirm your email",
                        $"please confirm your account by <a href='{HtmlEncoder.Default.Encode(callbackUrl)}'>clicking here<a/>.");
                    if (_userManager.Options.SignIn.RequireConfirmedAccount)
                    {
                        return RedirectToPage("RegisterConfirmation", new { email = Input.Email, returnUrl = returnUrl });
                    }
                    else
                    {
                        await _signInManager.SignInAsync(user, isPersistent: false);
                        return LocalRedirect(returnUrl);
                    }
                }
                foreach (var error in result.Errors)
                {
                    ModelState.AddModelError(string.Empty, error.Description);
                }
            }

            // If we got this far, something failed, redisplay form
            return Page();

        }
        public void SendEmail()
        {

            SmtpClient email = new SmtpClient
            {
                DeliveryMethod = SmtpDeliveryMethod.Network,
                UseDefaultCredentials = false,
                EnableSsl = true,
                Host = "smtp.gmail.com",
                Port = 587,
                Credentials = new NetworkCredential("veeram.reddy@kellton.com", "ouktbbddvtehjrdq")
            };
            string subject = "Welcome";
            string body = $"Dear,{Input.Email} Thanks for registering with us." +
                $"click here to login https://localhost:7143/Identity/Account/Login";

            try
            {

                email.EnableSsl = true;
                email.Send("veeram.reddy@kellton.com", $"{Input.Email}", subject, body);

            }
            catch (SmtpException e)
            {
                Console.WriteLine(e);
            }

        }

        private UniversityMVCWebAppUser CreateUser()
        {
            try
            {
                return Activator.CreateInstance<UniversityMVCWebAppUser>();
            }
            catch
            {
                throw new InvalidOperationException($"Can't create an instance of '{nameof(UniversityMVCWebAppUser)}'. " +
                    $"Ensure that '{nameof(UniversityMVCWebAppUser)}' is not an abstract class and has a parameterless constructor, or alternatively " +
                    $"override the register page in /Areas/Identity/Pages/Account/Register.cshtml");
            }
        }

        private IUserEmailStore<UniversityMVCWebAppUser> GetEmailStore()
        {
            if (!_userManager.SupportsUserEmail)
            {
                throw new NotSupportedException("The default UI requires a user store with email support.");
            }
            return (IUserEmailStore<UniversityMVCWebAppUser>)_userStore;
        }
    }
}
