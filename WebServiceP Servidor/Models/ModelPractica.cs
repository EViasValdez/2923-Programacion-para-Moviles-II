using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace WebServiceP.Models
{
    public partial class ModelPractica : DbContext
    {
        public ModelPractica()
            : base("name=ModelPractica")
        {
        }


        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
        }

        public virtual DbSet<Producto> Productos { get; set; }
    }
}