using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using A10___Exercise1.Models;
using Microsoft.AspNetCore.Hosting;
using System.Data;
using System.Data.SqlClient;
using A10___Exercise1.Database;

namespace A10___Exercise1.Controllers
{
    public class Demo1Controller : Controller
    {
        private readonly DatabaseContext _databaseContext;
        private readonly IHostingEnvironment _environment;
        public Demo1Controller(DatabaseContext databaseContext, IHostingEnvironment hostingEnvironment)
        {
            _databaseContext = databaseContext;
            _environment = hostingEnvironment;
        }

        public IActionResult Index(Boolean success = false)
        {
            var BankAccount = new BankAccount();
            BankAccount.success = success;
            return View(BankAccount);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Index(BankAccount bankAccount)
        {
            if (ModelState.IsValid)
            {
                var connection = "Data Source=.;Initial Catalog=OWASP;User ID=sa;Password=QI7OWv38MLwP2M2S;";

                using (SqlConnection con = new SqlConnection(connection))
                {
                    con.Open();

                    // Inline Query
                    var query = string.Format("insert into BankAccount(Name) values('{0}')", bankAccount.Name);
                    SqlCommand cmd = new SqlCommand(query, con) { CommandType = CommandType.Text };
                    cmd.ExecuteNonQuery();
                    con.Close();

                    // Parameterized Query
                    /*var query = "insert into BankAccount(Name) values(@name)";
                    SqlCommand cmd = new SqlCommand(query, con) { CommandType = CommandType.Text };
                    cmd.Parameters.AddWithValue("name", bankAccount.Name);
                    cmd.ExecuteNonQuery();
                    con.Close();*/

                    // Stored procedure
                    /*SqlCommand cmd = new SqlCommand("procCreateAccount", con) { CommandType = CommandType.StoredProcedure };
                    cmd.Parameters.Add("@name",SqlDbType.VarChar,50).Value=bankAccount.Name;
                    cmd.ExecuteNonQuery();
                    con.Close();*/
                }
                return RedirectToAction("Index", new { success = true });
            }
            var BankAccount = new BankAccount();
            BankAccount.success = false;
            return View(BankAccount);
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
