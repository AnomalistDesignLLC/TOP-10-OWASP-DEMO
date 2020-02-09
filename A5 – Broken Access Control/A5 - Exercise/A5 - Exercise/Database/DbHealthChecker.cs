﻿using Microsoft.EntityFrameworkCore;

namespace A5___Exercise.Database
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