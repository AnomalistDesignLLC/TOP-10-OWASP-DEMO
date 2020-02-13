using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using A7___Demo.Models;
using Microsoft.AspNetCore.Hosting;
using System.Data;
using System.Data.SqlClient;
using A7___Demo.Database;

namespace A7___Demo.Controllers
{
    public class SearchController : Controller
    {
        private readonly DatabaseContext _databaseContext;
        private readonly IHostingEnvironment _environment;
        public SearchController(DatabaseContext databaseContext, IHostingEnvironment hostingEnvironment)
        {
            _databaseContext = databaseContext;
            _environment = hostingEnvironment;
        }

        public IActionResult Index(string keyword = "")
        {
            var Search = new Search();
            if (keyword == "free stuff") {
                Search.message = "Free Laptops";
            } else {
                Search.message = "No results for: " + keyword;
            }
            return View(Search);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Index(Search search)
        {
            if (ModelState.IsValid)
            {
                
                return View(search.keyword);
            }
            return View(search.keyword);
        }

        [HttpGet]
        public IActionResult RecreateDatabase()
        {
            var connection = "Data Source=.;Initial Catalog=OWASP;User ID=sa;Password=QI7OWv38MLwP2M2S;";
            using (SqlConnection con = new SqlConnection(connection))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("reCreateBankAccount", con) { CommandType = CommandType.StoredProcedure };
                cmd.ExecuteNonQuery();
                con.Close();
            }

            return RedirectToAction("Index");
        }
    }
}
