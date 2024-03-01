using System;
using System.Collections.Generic;
using System.Text;

namespace SQLiteXamarin.Modelo
{
    internal class Alumno
    {
        public int ID { get; set; }
        public String Nombre { get; set; }
        public String Matricula { get; set; }

        public int GrupoID { get; set; }
        public virtual Grupo Grupo { get; set; }
    }
}
