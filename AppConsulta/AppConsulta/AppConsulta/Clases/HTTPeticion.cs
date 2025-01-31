using HTTPupt;
using System;
using System.Collections.Generic;
using System.Text;

namespace AppConsulta.Clases
{
    public class HTTPeticion
    {
        PeticionHTTP peticion = new PeticionHTTP("http://upt2923IS.sytes.net");

        /// <summary>
        /// Metodo para consultar los productos
        /// </summary>
        /// <returns>Retorna una lista de todos los productos</returns>
        public List<Productos> ConsultaProductos()
        {
            peticion.PedirComunicacion("Producto/VerProductos", MetodoHTTP.GET, TipoContenido.JSON);
            string json = peticion.ObtenerJson();

            if (json == null)
            {
                // El valor es nulo, no realizar ningún envío
                return null;
            }

            List<Productos> producto = JsonConvertidor.Json_ListaObjeto<Productos>(json);
            return producto;
        }


        /// <summary>
        /// Metodo para consultar los productos por precio
        /// </summary>
        /// <param name="id"></param>
        /// <returns>Retorna una lista con las coincidencias</returns>
        public List<Productos> ConsultaPrecio(int id)
        {
            peticion.PedirComunicacion("Producto/MenorProducto/" + id, MetodoHTTP.GET, TipoContenido.JSON);
            string json = peticion.ObtenerJson();

            if (json == null)
            {
                // El valor es nulo, no realizar ningún envío
                return null;
            }

            List<Productos> producto = JsonConvertidor.Json_ListaObjeto<Productos>(json);
            return producto;
        }

        /// <summary>
        /// Metodo para consultar los productos por nombre
        /// </summary>
        /// <param name="id"></param>
        /// <returns>Retorna una lista con las coincidencias</returns>
        public List<Productos> ConsultaNombre(string id)
        {
            peticion.PedirComunicacion("Producto/NombreProducto/" + id, MetodoHTTP.GET, TipoContenido.JSON);
            string json = peticion.ObtenerJson();

            if (json == null)
            {
                // El valor es nulo, no realizar ningún envío
                return null;
            }

            List<Productos> producto = JsonConvertidor.Json_ListaObjeto<Productos>(json);
            return producto;
        }

        /// <summary>
        /// Elimina el Producto
        /// </summary>
        /// <param name="producto"></param>
        public void EliminarProducto(Productos producto)
        {
            string enviarJson = JsonConvertidor.Objeto_Json(producto);
            peticion.PedirComunicacion("Producto/Eliminar", MetodoHTTP.DELETE, TipoContenido.JSON);
            peticion.enviarDatos(enviarJson);
            string json = peticion.ObtenerJson();
        }


        /// <summary>
        /// Actualiza el Producto
        /// </summary>
        /// <param name="producto"></param>
        public void ActualizarProducto(Productos producto)
        {
            string enviarJson = JsonConvertidor.Objeto_Json(producto);
            peticion.PedirComunicacion("Producto/Actualizar", MetodoHTTP.PUT, TipoContenido.JSON);
            peticion.enviarDatos(enviarJson);
            string json = peticion.ObtenerJson();
        }

        /// <summary>
        /// Agrega un Producto
        /// </summary>
        /// <param name="producto"></param>
        public void AgregarProducto(Productos producto)
        {
            string enviarJson = JsonConvertidor.Objeto_Json(producto);
            peticion.PedirComunicacion("Producto/Insertar", MetodoHTTP.POST, TipoContenido.JSON);
            peticion.enviarDatos(enviarJson);
            string json = peticion.ObtenerJson();
        }
    }
}