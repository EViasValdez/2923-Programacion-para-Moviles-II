using System;
using System.Collections.Generic;
using System.Text;

namespace PracticaSQL.Modelos
{
    internal class Grupo
    {
        public int ID { get; set; }
        public String Nombre { get; set; }
        public String Matricula { get; set; }
        public int GrupoID { get; set; }
        public virtual Grupo grupo { get; set; }
    }
}
