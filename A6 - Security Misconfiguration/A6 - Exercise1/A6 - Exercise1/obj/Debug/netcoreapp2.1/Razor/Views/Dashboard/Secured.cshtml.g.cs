#pragma checksum "C:\Users\Ken\Documents\work\anomalist\nobleprog\TOP-10-OWASP-DEMO-DEV\A6 - Security Misconfiguration\A6 - Exercise1\A6 - Exercise1\Views\Dashboard\Secured.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "23c27918f92cfa9fd04e0e211db949fca2d08bda"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Dashboard_Secured), @"mvc.1.0.view", @"/Views/Dashboard/Secured.cshtml")]
[assembly:global::Microsoft.AspNetCore.Mvc.Razor.Compilation.RazorViewAttribute(@"/Views/Dashboard/Secured.cshtml", typeof(AspNetCore.Views_Dashboard_Secured))]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#line 1 "C:\Users\Ken\Documents\work\anomalist\nobleprog\TOP-10-OWASP-DEMO-DEV\A6 - Security Misconfiguration\A6 - Exercise1\A6 - Exercise1\Views\_ViewImports.cshtml"
using A6___Exercise1;

#line default
#line hidden
#line 2 "C:\Users\Ken\Documents\work\anomalist\nobleprog\TOP-10-OWASP-DEMO-DEV\A6 - Security Misconfiguration\A6 - Exercise1\A6 - Exercise1\Views\_ViewImports.cshtml"
using A6___Exercise1.Models;

#line default
#line hidden
#line 1 "C:\Users\Ken\Documents\work\anomalist\nobleprog\TOP-10-OWASP-DEMO-DEV\A6 - Security Misconfiguration\A6 - Exercise1\A6 - Exercise1\Views\Dashboard\Secured.cshtml"
using Microsoft.AspNetCore.Http;

#line default
#line hidden
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"23c27918f92cfa9fd04e0e211db949fca2d08bda", @"/Views/Dashboard/Secured.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"270aaf7c17a4da5491ca890de685559610f87654", @"/Views/_ViewImports.cshtml")]
    public class Views_Dashboard_Secured : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#line 2 "C:\Users\Ken\Documents\work\anomalist\nobleprog\TOP-10-OWASP-DEMO-DEV\A6 - Security Misconfiguration\A6 - Exercise1\A6 - Exercise1\Views\Dashboard\Secured.cshtml"
  
    ViewData["Title"] = "Dashboard";
    Layout = "~/Views/Shared/_LayoutAuth.cshtml";

#line default
#line hidden
            BeginContext(125, 25, true);
            WriteLiteral("\n<h2>Dashboard</h2>\n<hr>\n");
            EndContext();
#line 9 "C:\Users\Ken\Documents\work\anomalist\nobleprog\TOP-10-OWASP-DEMO-DEV\A6 - Security Misconfiguration\A6 - Exercise1\A6 - Exercise1\Views\Dashboard\Secured.cshtml"
  if (!string.IsNullOrEmpty(Convert.ToString(@Context.Session.GetString("Username"))))
{

#line default
#line hidden
            BeginContext(239, 16, true);
            WriteLiteral("    <h4>Welcome ");
            EndContext();
            BeginContext(256, 37, false);
#line 11 "C:\Users\Ken\Documents\work\anomalist\nobleprog\TOP-10-OWASP-DEMO-DEV\A6 - Security Misconfiguration\A6 - Exercise1\A6 - Exercise1\Views\Dashboard\Secured.cshtml"
           Write(Context.Session.GetString("Username"));

#line default
#line hidden
            EndContext();
            BeginContext(293, 34, true);
            WriteLiteral(", You are now authenticated!</h4>\n");
            EndContext();
#line 12 "C:\Users\Ken\Documents\work\anomalist\nobleprog\TOP-10-OWASP-DEMO-DEV\A6 - Security Misconfiguration\A6 - Exercise1\A6 - Exercise1\Views\Dashboard\Secured.cshtml"
}
else
{

#line default
#line hidden
            BeginContext(336, 55, true);
            WriteLiteral("    <h4>You are not authorized to view this page!</h4>\n");
            EndContext();
#line 16 "C:\Users\Ken\Documents\work\anomalist\nobleprog\TOP-10-OWASP-DEMO-DEV\A6 - Security Misconfiguration\A6 - Exercise1\A6 - Exercise1\Views\Dashboard\Secured.cshtml"
}

#line default
#line hidden
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; }
    }
}
#pragma warning restore 1591
