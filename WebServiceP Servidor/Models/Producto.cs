using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebServiceP.Models
{
    public class Producto
    {
        public int ID { get; set; }
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
        public int Precio { get; set; }
    }

    public class ProductoDTO
    {
        public int ID { get; set; }
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
        public int Precio { get; set; }
    }
}