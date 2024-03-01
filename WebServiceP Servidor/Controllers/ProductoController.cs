using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using WebServiceP.Migrations;
using WebServiceP.Models;

namespace WebServiceP.Controllers
{
    public class ProductoController : ApiController
    {
        ModelPractica BD = new ModelPractica();

        [ActionName("VerProductos")]
        [HttpGet]
        public List<ProductoDTO> VerProductos()
        {
            try
            {
                var producto = from Producto in BD.Productos
                               select new ProductoDTO
                               {
                                   ID = Producto.ID,
                                   Nombre = Producto.Nombre,
                                   Descripcion = Producto.Descripcion,
                                   Precio = Producto.Precio
                               };

                return producto.ToList();
            }
            catch (Exception ex)
            {
                throw new Exception("Error al obtener los registros de alumnos.", ex);
            }
        }

        [ActionName("MenorProducto")]
        [HttpGet]
        public List<ProductoDTO> MenorProducto(int id)
        {
            try
            {
                var productos = from Producto in BD.Productos
                                where Producto.Precio <= id
                                select new ProductoDTO
                                {
                                    ID = Producto.ID,
                                    Nombre = Producto.Nombre,
                                    Descripcion = Producto.Descripcion,
                                    Precio = Producto.Precio
                                };

                return productos.ToList();
            }
            catch (Exception ex)
            {
                throw new Exception("Error al obtener los registros de alumnos.", ex);
            }
        }

        [ActionName("NombreProducto")]
        [HttpGet]
        public List<ProductoDTO> NombreProducto(string id)
        {
            try
            {
                var productos = from Producto in BD.Productos
                                where Producto.Nombre.ToLower().Contains(id.ToLower())
                                || Producto.Descripcion.ToLower().Contains(id.ToLower())
                                select new ProductoDTO
                                {
                                    ID = Producto.ID,
                                    Nombre = Producto.Nombre,
                                    Descripcion = Producto.Descripcion,
                                    Precio = Producto.Precio
                                };

                return productos.ToList();
            }
            catch (Exception ex)
            {
                throw new Exception("Error al obtener los registros de alumnos.", ex);
            }
        }

        [ActionName("Insertar")]
        [HttpPost]
        public bool Insertar(Producto producto)
        {
            try
            {
                BD.Productos.Add(producto);
                BD.SaveChangesAsync();

                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        [ActionName("Actualizar")]
        [HttpPut]
        public bool Actualizar(Producto producto)
        {
            try
            {
                var consulta = BD.Productos.Where(c => c.ID == producto.ID).FirstOrDefault();

                if (consulta != null)
                {
                    consulta.Nombre = producto.Nombre;
                    consulta.Descripcion = producto.Descripcion;
                    consulta.Precio = producto.Precio;
                    BD.Productos.AddOrUpdate(consulta);
                    BD.SaveChangesAsync();
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        [ActionName("Eliminar")]
        [HttpDelete]
        public bool Eliminar(Producto producto)
        {
            try
            {
                var consulta = BD.Productos.Where(c => c.ID == producto.ID).FirstOrDefault();

                if (consulta != null)
                {
                    BD.Productos.Remove(consulta);
                    BD.SaveChangesAsync();
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                return false;
            }
        }
    }
}
