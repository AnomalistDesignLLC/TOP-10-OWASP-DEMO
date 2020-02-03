using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Dapper;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using A1___Injection.Database;
using A1___Injection.Models;
using System.Data;
using System.Data.SqlClient;

namespace A1___Injection.Controllers
{
    public class Demo1Controller : Controller
    {
        private readonly DatabaseContext _context;

        public Demo1Controller(DatabaseContext context)
        {
            _context = context;
        }

        [HttpGet("SearchStudentUnsecure")]
        public async Task<IActionResult> SearchStudentUnsecure(string name)
        {
            var conn = _context.Database.GetDbConnection();
            var query = "SELECT FirstName, LastName FROM Student WHERE FirstName Like '%" + name + "%'";
            IEnumerable<Student> students;

            try
            {
                await conn.OpenAsync();
                students = await conn.QueryAsync<Student>(query);
            }

            finally
            {
                conn.Close();
            }
            return Ok(students);
        }

        [HttpGet("SearchStudentSecure")]
        public async Task<IActionResult> SearchStudentSecure(string name)
        {
            var conn = _context.Database.GetDbConnection();
            var query = "SELECT FirstName, LastName FROM Student WHERE FirstName Like @name";
            IEnumerable<Student> students;

            try
            {
                await conn.OpenAsync();
                students = await conn.QueryAsync<Student>(query, new { name });
            }

            finally
            {
                conn.Close();
            }
            return Ok(students);
        }


        public async Task<IActionResult> Index()
        {
            try
            {
                var students = from s in _context.Students
                               select s;
                return View(await PaginatedList<Student>.CreateAsync(students.AsNoTracking(), 1, 10));
            }
            catch
            {
                return View(new PaginatedList<Student>(new List<Student>(), 1, 1, 10));
            }

        }

        [HttpGet("RecreateDatabase")]
        public IActionResult RecreateDatabase()
        {
            var connection = "Data Source=.;Initial Catalog=OWASP;Integrated Security=True;";
            using (SqlConnection con = new SqlConnection(connection))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("reCreateStudent", con) { CommandType = CommandType.StoredProcedure };
                cmd.ExecuteNonQuery();
                con.Close();
            }

            return RedirectToAction("Index");
        }
    }
}