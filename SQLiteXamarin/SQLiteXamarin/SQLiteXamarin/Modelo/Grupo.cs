using System;
using System.Collections.Generic;
using System.Text;

namespace SQLiteXamarin.Modelo
{
    internal class Grupo
    {
        public int ID { get; set; }
        public String Nombre { get; set; }

        public virtual List<Alumno> Alumnos { get; set; }
    }
}
