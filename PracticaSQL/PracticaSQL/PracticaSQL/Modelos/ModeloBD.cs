using System;
using System.Collections.Generic;
using System.Text;
using System.IO;
using Microsoft.EntityFrameworkCore;
using Xamarin.Essentials;

namespace PracticaSQL.Modelos
{
    class ModeloBD : DbContext
    {
        public ModeloBD()
        {
            SQLitePCL.Batteries_V2.Init();

            this.Database.EnsureCreated();
        }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            string dbPath = Path.Combine(FileSystem.AppDataDirectory, "dbUPT.db3");

            optionsBuilder.UseSqlite($"Filename={dbPath}");
        }
        public virtual DbSet<Alumno> Alumno { get; set; }
        public virtual DbSet<Grupo> Grupo { get; set; }
    }
}
