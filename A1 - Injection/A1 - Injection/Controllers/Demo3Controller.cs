using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using A1___Injection.Models;
using A1___Injection.Database;
using Microsoft.AspNetCore.Hosting;
using System.Data;
using System.Data.SqlClient;

namespace A1___Injection.Controllers
{
    public class Demo3Controller : Controller
    {
        private readonly DatabaseContext _databaseContext;
        private readonly IHostingEnvironment _environment;
        public Demo3Controller(DatabaseContext databaseContext, IHostingEnvironment hostingEnvironment)
        {
            _databaseContext = databaseContext;
            _environment = hostingEnvironment;
        }

        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Register(BankAccount bankAccount)
        {
            /*if (ModelState.IsValid)
            {*/
                #region connection String
                var connection = "Data Source=.;Initial Catalog=OWASP;Integrated Security=True;";
                #endregion

                using (SqlConnection con = new SqlConnection(connection))
                {
                    con.Open();

                // Inline Query
                var query = string.Format("insert into BankAccount(Name) values('{0}')", bankAccount.Name);
                SqlCommand cmd = new SqlCommand(query, con) { CommandType = CommandType.Text };
                cmd.ExecuteNonQuery();
                con.Close();

                // Paraeterized Query
                /*var query = "insert into BankAccount(Name) values(@name)";
                SqlCommand cmd = new SqlCommand(query, con) { CommandType = CommandType.Text };
                cmd.Parameters.AddWithValue("name", bankAccount.Name);
                cmd.ExecuteNonQuery();
                con.Close();*/

                // Stored proc
                /*SqlCommand cmd = new SqlCommand("procCreateAccount", con) { CommandType = CommandType.StoredProcedure };
                cmd.Parameters.Add("@name",SqlDbType.VarChar,50).Value=bankAccount.Name;
                cmd.ExecuteNonQuery();
                con.Close();*/
            }
                return RedirectToAction("Index", "Demo3");
            /*}
            return View("Index");*/
        }

        [HttpGet]
        public IActionResult RecreateDatabase()
        {
            var connection = "Data Source=.;Initial Catalog=OWASP;Integrated Security=True;";
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
