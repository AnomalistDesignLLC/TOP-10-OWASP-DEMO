using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc.Filters;

namespace A5___Demo.Models
{
  public class CanReadAccount : IAuthorizationRequirement
  {

  }

  public class CanReadAccountHandler : AuthorizationHandler<CanReadAccount>
  {
    protected override Task HandleRequirementAsync(AuthorizationHandlerContext context, CanReadAccount requirement)
    {
      if (context.Resource is AuthorizationFilterContext mvcContext)
      {
        var id = Convert.ToInt32(mvcContext.RouteData.Values["id"]);
        if (id == 1 && context.User.Identity.Name == "matthew@example.com")
        {
          context.Succeed(requirement);
        }
        else
        {
          context.Fail();
        }
      }

      return Task.CompletedTask;
    }
  }
}
