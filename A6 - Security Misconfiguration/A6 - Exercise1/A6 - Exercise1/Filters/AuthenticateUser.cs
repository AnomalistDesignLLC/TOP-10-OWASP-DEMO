using Microsoft.AspNetCore.Mvc.Filters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace A6___Exercise1.Filters
{
    public class AuthenticateUser : Attribute, IAuthorizationFilter
    {
        public void OnAuthorization(AuthorizationFilterContext context)
        {
            string tempSession =
                Convert.ToString(context.HttpContext.Session.GetString("AuthenticationToken"));
            string tempAuthCookie =
                Convert.ToString(context.HttpContext.Request.Cookies["AuthenticationToken"]);

            if (tempSession != null && tempAuthCookie != null)
            {
                if (!tempSession.Equals(tempAuthCookie))
                {
                    context.Result = new RedirectResult("/Home");
                }
            }
            else
            {
                context.Result = new RedirectResult("/Home");
            }
        }
    }
}
