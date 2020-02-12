using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Threading.Tasks;
using A1___Demo.Database;
using A1___Demo.Models;
using Microsoft.AspNetCore.Mvc;

namespace A1___Demo.Controllers
{
    public class Demo2Controller : Controller
    {

        private readonly DatabaseContext _databaseContext;
        public Demo2Controller(DatabaseContext databaseContext)
        {
            _databaseContext = databaseContext;
        }

        public IActionResult Index(string id)
        {
            List<Registration> users = new List<Registration>();
            if (id != null)
            {
                users = GetUserDetailsbyId(id);

                // Parameterized Query
                // users = GetUserDetailsbyId_ParameterizedQuery(id);

                // Stored procedure
                // users = GetUserDetailsbyId_StoreProcedure(id);

                // Entity Framework
                // users = GetUserDetailsbyId_Entityframework(id);
                return View(users);
            } else
            {
                try
                {
                    users = GetUsers();
                }
                catch
                {

                }
            }
            return View(users);
        }

        public List<Registration> GetUsers()
        {
            DataTable dt = new DataTable();

            var connection = "Data Source=.;Initial Catalog=OWASP;Integrated Security=True;";

            using (SqlConnection con = new SqlConnection(connection))
            {
                con.Open();
                //Inline Query
                var query = "select * from Registration;";
                SqlCommand cmd = new SqlCommand(query, con) { CommandType = CommandType.Text };
                SqlDataAdapter da = new SqlDataAdapter { SelectCommand = cmd };
                da.Fill(dt);
            }
            List<Registration> registrations = new List<Registration>();
            var rows = dt.Rows;
            foreach (DataRow row in rows)
            {
                Registration item = GetItem<Registration>(row);
                registrations.Add(item);
            }
            return registrations;
        }

        public List<Registration> GetUserDetailsbyId(string registrationId)
        {
            DataTable dt = new DataTable();

            var connection = "Data Source=.;Initial Catalog=OWASP;Integrated Security=True;";

            using (SqlConnection con = new SqlConnection(connection))
            {
                con.Open();
                //Inline Query
                var query = "select * from Registration where RegistrationId=" + registrationId;
                SqlCommand cmd = new SqlCommand(query, con) { CommandType = CommandType.Text };
                SqlDataAdapter da = new SqlDataAdapter { SelectCommand = cmd };
                da.Fill(dt);
            }
            List<Registration> registrations = new List<Registration>();
            var rows = dt.Rows;
            foreach (DataRow row in rows)
            {
                Registration item = GetItem<Registration>(row);
                registrations.Add(item);
            }
            return registrations;
        }

        public List<Registration> GetUserDetailsbyId_StoreProcedure(string registrationId)
        {
            DataTable dt = new DataTable();

            var connection = "Data Source=.;Initial Catalog=OWASP;Integrated Security=True;";

            using (SqlConnection con = new SqlConnection(connection))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Usp_GetUserDetailsByRegistrationId", con);
                cmd.Parameters.AddWithValue("@RegistrationId", registrationId);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter { SelectCommand = cmd };
                da.Fill(dt);
            }
            List<Registration> registrations = new List<Registration>();
            var rows = dt.Rows;
            foreach (DataRow row in rows)
            {
                Registration item = GetItem<Registration>(row);
                registrations.Add(item);
            }
            return registrations;
        }

        public List<Registration> GetUserDetailsbyId_ParameterizedQuery(string registrationId)
        {
            DataTable dt = new DataTable();

            var connection = "Data Source=.;Initial Catalog=OWASP;Integrated Security=True;";

            using (SqlConnection con = new SqlConnection(connection))
            {
                con.Open();
                var @query = "select * from Registration where RegistrationId=@RegistrationId";
                SqlCommand cmd = new SqlCommand(query, con) { CommandType = CommandType.Text };
                cmd.Parameters.AddWithValue("@RegistrationId", registrationId);
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                da.Fill(dt);
            }
            List<Registration> registrations = new List<Registration>();
            var rows = dt.Rows;
            foreach (DataRow row in rows)
            {
                Registration item = GetItem<Registration>(row);
                registrations.Add(item);
            }
            return registrations;
        }

        public List<Registration> GetUserDetailsbyId_Entityframework(string id)
        {
            try
            {
                var result = (from registration in _databaseContext.Registration
                              where registration.RegistrationId == Convert.ToInt32(id)
                              select registration).ToList();
                return result;
            }
            catch (Exception)
            {
                throw;
            }
        }




        private static List<T> ConvertDataTable<T>(DataTable dt)
        {
            List<T> data = new List<T>();
            foreach (DataRow row in dt.Rows)
            {
                T item = GetItem<T>(row);
                data.Add(item);
            }
            return data;
        }
        private static T GetItem<T>(DataRow dr)
        {
            Type temp = typeof(T);
            T obj = Activator.CreateInstance<T>();

            foreach (DataColumn column in dr.Table.Columns)
            {
                foreach (PropertyInfo pro in temp.GetProperties())
                {
                    if (pro.Name == column.ColumnName)
                        pro.SetValue(obj, dr[column.ColumnName], null);
                    else
                        continue;
                }
            }
            return obj;
        }

        [HttpGet]
        public IActionResult RecreateDatabase()
        {
            var connection = "Data Source=.;Initial Catalog=OWASP;Integrated Security=True;";
            using (SqlConnection con = new SqlConnection(connection))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("reCreateRegistration", con) { CommandType = CommandType.StoredProcedure };
                cmd.ExecuteNonQuery();
                con.Close();
            }

            return RedirectToAction("Index");
        }
    }
}