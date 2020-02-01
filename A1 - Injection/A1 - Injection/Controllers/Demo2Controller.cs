using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Threading.Tasks;
using A1___Injection.Database;
using A1___Injection.Models;
using Microsoft.AspNetCore.Mvc;

namespace A1___Injection.Controllers
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
            List<Registration> registrations = new List<Registration>();
            if (id != null)
            {
                registrations = GetUserDetailsbyId(id);
                /*registrations = GetUserDetailsbyId_ParameterizedQuery(id);*/
                /*registrations = GetUserDetailsbyId_StoreProcedure(id);*/
                /*registrations = GetUserDetailsbyId_Entityframework(firstname);*/
                return View(registrations);
            }
            return View(registrations);
        }

        public List<Registration> GetUserDetailsbyId(string registrationId)
        {
            DataTable dt = new DataTable();

            #region connection String
            var connection = "Data Source=.;Initial Catalog=AllSampleCode;Integrated Security=True;";
            #endregion

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

            #region connection String
            var connection = "Data Source=.;Initial Catalog=AllSampleCode;Integrated Security=True;";
            #endregion

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

            #region connection String
            var connection = "Data Source=.;Initial Catalog=AllSampleCode;Integrated Security=True;";
            #endregion

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

        public List<Registration> GetUserDetailsbyId_Entityframework(string firstName)
        {
            try
            {
                var result = (from registration in _databaseContext.Registration
                              where registration.FirstName == firstName
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
    }
}