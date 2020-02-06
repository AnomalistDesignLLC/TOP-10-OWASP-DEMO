using Microsoft.EntityFrameworkCore;

namespace A1___Demo.Database
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