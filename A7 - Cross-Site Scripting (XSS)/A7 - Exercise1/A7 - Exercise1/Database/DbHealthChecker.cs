using Microsoft.EntityFrameworkCore;

namespace A7___Exercise1.Database
{
    public class DbHealthChecker
    {
        public bool TestConnection(DbContext context)
        {

            try
            {
                context.Database.GetPendingMigrations();   // Check the database connection

                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}