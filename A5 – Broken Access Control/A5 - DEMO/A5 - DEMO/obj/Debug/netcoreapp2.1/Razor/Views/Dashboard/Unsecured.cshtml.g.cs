#pragma checksum "c:\Users\Ken\Documents\work\anomalist\nobleprog\TOP-10-OWASP-DEMO-DEV\A5 – Broken Access Control\A5 - DEMO\A5 - DEMO\Views\Dashboard\Unsecured.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "9e2ad5aab97643c6dbe10417081fb8f9d5ccc0f5"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Dashboard_Unsecured), @"mvc.1.0.view", @"/Views/Dashboard/Unsecured.cshtml")]
[assembly:global::Microsoft.AspNetCore.Mvc.Razor.Compilation.RazorViewAttribute(@"/Views/Dashboard/Unsecured.cshtml", typeof(AspNetCore.Views_Dashboard_Unsecured))]
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
#line 1 "c:\Users\Ken\Documents\work\anomalist\nobleprog\TOP-10-OWASP-DEMO-DEV\A5 – Broken Access Control\A5 - DEMO\A5 - DEMO\Views\_ViewImports.cshtml"
using A5___DEMO;

#line default
#line hidden
#line 2 "c:\Users\Ken\Documents\work\anomalist\nobleprog\TOP-10-OWASP-DEMO-DEV\A5 – Broken Access Control\A5 - DEMO\A5 - DEMO\Views\_ViewImports.cshtml"
using A5___DEMO.Models;

#line default
#line hidden
#line 1 "c:\Users\Ken\Documents\work\anomalist\nobleprog\TOP-10-OWASP-DEMO-DEV\A5 – Broken Access Control\A5 - DEMO\A5 - DEMO\Views\Dashboard\Unsecured.cshtml"
using Microsoft.AspNetCore.Http;

#line default
#line hidden
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"9e2ad5aab97643c6dbe10417081fb8f9d5ccc0f5", @"/Views/Dashboard/Unsecured.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"4455564117ec0ff19cbd9a22bbae33c6ad14fc67", @"/Views/_ViewImports.cshtml")]
    public class Views_Dashboard_Unsecured : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#line 2 "c:\Users\Ken\Documents\work\anomalist\nobleprog\TOP-10-OWASP-DEMO-DEV\A5 – Broken Access Control\A5 - DEMO\A5 - DEMO\Views\Dashboard\Unsecured.cshtml"
  
    ViewData["Title"] = "Dashboard";
    Layout = "~/Views/Shared/_LayoutAuth.cshtml";

#line default
#line hidden
            BeginContext(130, 28, true);
            WriteLiteral("\r\n<h2>Dashboard</h2>\r\n<hr>\r\n");
            EndContext();
#line 9 "c:\Users\Ken\Documents\work\anomalist\nobleprog\TOP-10-OWASP-DEMO-DEV\A5 – Broken Access Control\A5 - DEMO\A5 - DEMO\Views\Dashboard\Unsecured.cshtml"
  if (!string.IsNullOrEmpty(Convert.ToString(@Context.Session.GetString("Username"))))
{

#line default
#line hidden
            BeginContext(249, 16, true);
            WriteLiteral("    <h4>Welcome ");
            EndContext();
            BeginContext(266, 37, false);
#line 11 "c:\Users\Ken\Documents\work\anomalist\nobleprog\TOP-10-OWASP-DEMO-DEV\A5 – Broken Access Control\A5 - DEMO\A5 - DEMO\Views\Dashboard\Unsecured.cshtml"
           Write(Context.Session.GetString("Username"));

#line default
#line hidden
            EndContext();
            BeginContext(303, 35, true);
            WriteLiteral(", You are now authenticated!</h4>\r\n");
            EndContext();
#line 12 "c:\Users\Ken\Documents\work\anomalist\nobleprog\TOP-10-OWASP-DEMO-DEV\A5 – Broken Access Control\A5 - DEMO\A5 - DEMO\Views\Dashboard\Unsecured.cshtml"
}
else
{

#line default
#line hidden
            BeginContext(350, 56, true);
            WriteLiteral("    <h4>You are not authorized to view this page!</h4>\r\n");
            EndContext();
#line 16 "c:\Users\Ken\Documents\work\anomalist\nobleprog\TOP-10-OWASP-DEMO-DEV\A5 – Broken Access Control\A5 - DEMO\A5 - DEMO\Views\Dashboard\Unsecured.cshtml"
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
