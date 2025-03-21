﻿using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Xamarin.Essentials;

namespace SQLiteXamarin.Modelo
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
            string dbPath = Path.Combine(FileSystem.AppDataDirectory, "bdRecorridos2.db3");

            optionsBuilder
                .UseSqlite($"Filename={dbPath}");
        }

        public virtual DbSet<Alumno> Alumno { get; set; }
        public virtual DbSet<Grupo> Grupo { get; set; }
    }
}