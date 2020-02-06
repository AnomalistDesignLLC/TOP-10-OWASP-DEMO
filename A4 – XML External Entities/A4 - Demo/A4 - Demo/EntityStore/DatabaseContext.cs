using Microsoft.EntityFrameworkCore;
using A4___Demo.Models;

namespace A4___Demo.Database
{
    public class DatabaseContext : DbContext
    {
        public DatabaseContext(DbContextOptions<DatabaseContext> options) : base(options)
        {
        }

        public DbSet<Course> Courses { get; set; }
        public DbSet<Student> Students { get; set; }
        public DbSet<AspNetUser> Users { get; set; }

        public DbSet<Registration> Registration { get; set; }
        public DbSet<AuditTb> AuditTb { get; set; }
        public DbSet<Comments> Comments { get; set; }
        public DbSet<StockTb> StockTb { get; set; }
        public DbSet<BankAccount> BankAccount { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Course>().ToTable("Course");
            modelBuilder.Entity<AspNetUser>().ToTable("AspNetUsers");
            modelBuilder.Entity<Registration>().ToTable("Registration");
            modelBuilder.Entity<AuditTb>().ToTable("AuditTb");
            modelBuilder.Entity<Comments>().ToTable("Comments");
            modelBuilder.Entity<StockTb>().ToTable("StockTb");
            modelBuilder.Entity<BankAccount>().ToTable("BankAccount");
        }
    }
}