#pragma checksum "c:\Users\Ken\Documents\work\anomalist\nobleprog\TOP-10-OWASP-DEMO-DEV\A7 - Cross-Site Scripting (XSS)\A7 - Demo\A7 - Demo\Views\Search\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "c31374e77a23cf1159525602af88a346a8f7f919"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Search_Index), @"mvc.1.0.view", @"/Views/Search/Index.cshtml")]
[assembly:global::Microsoft.AspNetCore.Mvc.Razor.Compilation.RazorViewAttribute(@"/Views/Search/Index.cshtml", typeof(AspNetCore.Views_Search_Index))]
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
#line 1 "c:\Users\Ken\Documents\work\anomalist\nobleprog\TOP-10-OWASP-DEMO-DEV\A7 - Cross-Site Scripting (XSS)\A7 - Demo\A7 - Demo\Views\_ViewImports.cshtml"
using A7___Demo;

#line default
#line hidden
#line 2 "c:\Users\Ken\Documents\work\anomalist\nobleprog\TOP-10-OWASP-DEMO-DEV\A7 - Cross-Site Scripting (XSS)\A7 - Demo\A7 - Demo\Views\_ViewImports.cshtml"
using A7___Demo.Models;

#line default
#line hidden
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"c31374e77a23cf1159525602af88a346a8f7f919", @"/Views/Search/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"29978221a6e4cb64471d6cc019021f35f0eb1d00", @"/Views/_ViewImports.cshtml")]
    public class Views_Search_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<A7___Demo.Models.Search>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#line 2 "c:\Users\Ken\Documents\work\anomalist\nobleprog\TOP-10-OWASP-DEMO-DEV\A7 - Cross-Site Scripting (XSS)\A7 - Demo\A7 - Demo\Views\Search\Index.cshtml"
  
    ViewData["Title"] = "Search Page";

#line default
#line hidden
            BeginContext(75, 36, true);
            WriteLiteral("\n<h1>Search Results</h1>\n<hr />\n<h4>");
            EndContext();
            BeginContext(112, 23, false);
#line 8 "c:\Users\Ken\Documents\work\anomalist\nobleprog\TOP-10-OWASP-DEMO-DEV\A7 - Cross-Site Scripting (XSS)\A7 - Demo\A7 - Demo\Views\Search\Index.cshtml"
Write(Html.Raw(Model.message));

#line default
#line hidden
            EndContext();
            BeginContext(135, 5, true);
            WriteLiteral("</h4>");
            EndContext();
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<A7___Demo.Models.Search> Html { get; private set; }
    }
}
#pragma warning restore 1591
