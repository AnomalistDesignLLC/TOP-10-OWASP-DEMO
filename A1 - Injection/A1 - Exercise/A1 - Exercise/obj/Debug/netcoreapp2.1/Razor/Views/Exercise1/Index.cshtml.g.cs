#pragma checksum "c:\Users\Ken\Desktop\TOP-10-OWASP-DEMO\A1 - Injection\A1 - Exercise\A1 - Exercise\Views\Exercise1\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "36ae041ae49cc93a4d1708edbad0beb90f09f9b0"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Exercise1_Index), @"mvc.1.0.view", @"/Views/Exercise1/Index.cshtml")]
[assembly:global::Microsoft.AspNetCore.Mvc.Razor.Compilation.RazorViewAttribute(@"/Views/Exercise1/Index.cshtml", typeof(AspNetCore.Views_Exercise1_Index))]
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
#line 1 "c:\Users\Ken\Desktop\TOP-10-OWASP-DEMO\A1 - Injection\A1 - Exercise\A1 - Exercise\Views\_ViewImports.cshtml"
using A1___Exercise;

#line default
#line hidden
#line 2 "c:\Users\Ken\Desktop\TOP-10-OWASP-DEMO\A1 - Injection\A1 - Exercise\A1 - Exercise\Views\_ViewImports.cshtml"
using A1___Exercise.Models;

#line default
#line hidden
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"36ae041ae49cc93a4d1708edbad0beb90f09f9b0", @"/Views/Exercise1/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"843bedfa56ee5a0ec3559890f1e89c43f318065c", @"/Views/_ViewImports.cshtml")]
    public class Views_Exercise1_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<PaginatedList<A1___Exercise.Models.Student>>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "RecreateDatabase", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("btn btn-warning"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            BeginContext(52, 2, true);
            WriteLiteral("\r\n");
            EndContext();
#line 3 "c:\Users\Ken\Desktop\TOP-10-OWASP-DEMO\A1 - Injection\A1 - Exercise\A1 - Exercise\Views\Exercise1\Index.cshtml"
  
    ViewData["Title"] = "Exercise1";

#line default
#line hidden
            DefineSection("Scripts", async() => {
                BeginContext(118, 2775, true);
                WriteLiteral(@"
    <script>
        function searchUnsecure() {
            var name = $('#SearchString').val();

            $.getJSON(`http://localhost:5000/SearchStudentUnsecure?name=${name}`
            ).done(function (data) {
                var table = `<table class=""table table-dark"">
                                            <thead>
                                                    <tr>
                                                        <th>
                                                            Last Name
                                                        </th>
                                                        <th>
                                                            First Name
                                                        </th>
                                                    </tr>
                                                </thead>
                                                <tbody>`;

                data.forEach(student => {
           ");
                WriteLiteral(@"         table += `<tr>
                                        <td> ${student.lastName}</td>
                                        <td>${student.firstName}</td>
                                    </tr>`;
                });
                table += `</tbody></table>`;

                $('#unsecureContent').html(table);
            });
        }

        function searchSecure() {
            var name = $('#SecureSearchString').val();

            $.getJSON(`http://localhost:5000/SearchStudentSecure?name=${name}`
            ).done(function (data) {
                var table = `<table class=""table table-dark"">
                                            <thead>
                                                    <tr>
                                                        <th>
                                                            Last Name
                                                        </th>
                                                        <th>
                  ");
                WriteLiteral(@"                                          First Name
                                                        </th>
                                                    </tr>
                                                </thead>
                                                <tbody>`;

                data.forEach(student => {
                    table += `<tr>
                                        <td> ${student.lastName}</td>
                                        <td>${student.firstName}</td>
                                    </tr>`;
                });
                table += `</tbody></table>`;

                $('#unsecureContent').html(table);
            });
        }

    </script>
");
                EndContext();
            }
            );
            BeginContext(2896, 2695, true);
            WriteLiteral(@"<h2>Students</h2>
<br>
<p>
    To exploit the SQL Injection threat, you can try:
    <ul>
        <li>Use <span class=""badge badge-danger"">abc' OR 1=1 --</span> - In this case this is the easiest way to determine that SQL is unsecure</li>
        <li>Going further, you can discover all tables in SQL by using this query <span class=""badge badge-danger"">abc' UNION SELECT [name], cast(max_column_id_used as varchar(5)) FROM sys.Tables --</span> - Now all tables and how many colums each one has will be shown</li>
        <li>
            In a hyphotetical attack, sensitive data could be stolen. Try this: <span class=""badge badge-danger"">abc' UNION SELECT Username, Password FROM AspnetUsers --</span>
        </li>
        <li>
            Now you can try another commands, like:
            <ul>
                <li><span class=""badge badge-danger"">abc' UNION SELECT COLUMN_NAME, DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Course' --</span></li>
                <li>Bob drop table :) - <");
            WriteLiteral(@"span class=""badge badge-danger"">abc' DROP TABLE Student --</span> - After this, click on the button Recreat at the bottom of this page</li>
            </ul>
        </li>
    </ul>
</p>
<hr />
<div class=""row"">
    <div class=""col col-6"">
        <div class=""card text-white mb-3"">
            <div class=""card-header bg-danger"">Unsecure find Student by Name:</div>
            <div class=""card-body"">
                <div class=""input-group"">
                    <input type=""text"" class=""form-control"" id=""SearchString"" />
                    <button type=""button"" class=""btn btn-primary"" onclick=""searchUnsecure()"">Search</button>
                </div>
            </div>
        </div>
    </div>
    <div class=""col col-6"">
        <div class=""card text-white mb-3"">
            <div class=""card-header bg-success"">Secure find Student by Name:</div>
            <div class=""card-body"">
                <div class=""input-group"">
                    <input type=""text"" class=""form-control"" id=""Se");
            WriteLiteral(@"cureSearchString"" />
                    <button type=""button"" class=""btn btn-primary"" onclick=""searchSecure()"">Search</button>
                </div>
                <small style=""color: black"">Through this input it supposed to nothing of these commands works within it</small>
            </div>
        </div>
    </div>
</div>
<div id=""unsecureContent"">
    <table class=""table table-dark"">
        <thead>
            <tr>
                <th>
                    Last Name
                </th>
                <th>
                    First Name
                </th>
            </tr>
        </thead>
        <tbody>
");
            EndContext();
#line 129 "c:\Users\Ken\Desktop\TOP-10-OWASP-DEMO\A1 - Injection\A1 - Exercise\A1 - Exercise\Views\Exercise1\Index.cshtml"
             foreach (var item in Model)
            {

#line default
#line hidden
            BeginContext(5648, 72, true);
            WriteLiteral("                <tr>\r\n                    <td>\r\n                        ");
            EndContext();
            BeginContext(5721, 43, false);
#line 133 "c:\Users\Ken\Desktop\TOP-10-OWASP-DEMO\A1 - Injection\A1 - Exercise\A1 - Exercise\Views\Exercise1\Index.cshtml"
                   Write(Html.DisplayFor(modelItem => item.LastName));

#line default
#line hidden
            EndContext();
            BeginContext(5764, 79, true);
            WriteLiteral("\r\n                    </td>\r\n                    <td>\r\n                        ");
            EndContext();
            BeginContext(5844, 44, false);
#line 136 "c:\Users\Ken\Desktop\TOP-10-OWASP-DEMO\A1 - Injection\A1 - Exercise\A1 - Exercise\Views\Exercise1\Index.cshtml"
                   Write(Html.DisplayFor(modelItem => item.FirstName));

#line default
#line hidden
            EndContext();
            BeginContext(5888, 52, true);
            WriteLiteral("\r\n                    </td>\r\n                </tr>\r\n");
            EndContext();
#line 139 "c:\Users\Ken\Desktop\TOP-10-OWASP-DEMO\A1 - Injection\A1 - Exercise\A1 - Exercise\Views\Exercise1\Index.cshtml"
            }

#line default
#line hidden
            BeginContext(5955, 103, true);
            WriteLiteral("        </tbody>\r\n    </table>\r\n</div>\r\n\r\n<div class=\"row\">\r\n    <div class=\"float-lg-right\">\r\n        ");
            EndContext();
            BeginContext(6058, 78, false);
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "fd872e4c533343608ea1c983b12e9458", async() => {
                BeginContext(6115, 17, true);
                WriteLiteral("Recreate database");
                EndContext();
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_1);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            EndContext();
            BeginContext(6136, 24, true);
            WriteLiteral("\r\n    </div>\r\n\r\n</div>\r\n");
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<PaginatedList<A1___Exercise.Models.Student>> Html { get; private set; }
    }
}
#pragma warning restore 1591
