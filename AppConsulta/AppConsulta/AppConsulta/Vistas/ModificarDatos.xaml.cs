using AppConsulta.Clases;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace AppConsulta.Vistas
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class ModificarDatos : ContentPage
	{
        HTTPeticion peticion = new HTTPeticion();
        private int idProducto;

		public ModificarDatos (Productos producto)
		{
			InitializeComponent ();
            MostrarRegistros(producto);
            idProducto = producto.ID;
        }

        public ModificarDatos()
        {
            InitializeComponent();
            this.btnEliminar.IsVisible = false;
            this.btnActualizar.IsVisible = false;
            this.btnAgregar.IsVisible = true;
            this.lblTitulo.Text = "Agregar Producto";
        }

        private async void btnActualizar_Clicked(object sender, EventArgs e)
        {
            bool respuesta = await DisplayAlert("Confirmación", "¿Deseas actualizar el producto?", "Sí", "No");

            if (respuesta)
            {
                // El usuario seleccionó "Sí", continuar con el proceso
                Productos producto = new Productos
                {
                    ID= idProducto,
                    Nombre = txtNombre.Text,
                    Descripcion = txtDescripcion.Text,
                    Precio = int.Parse(txtPrecio.Text),
                };

                peticion.ActualizarProducto(producto);
                await Navigation.PopModalAsync();
            }
        }

        private async void btnEliminar_Clicked(object sender, EventArgs e)
        {
            bool respuesta = await DisplayAlert("Confirmación", "¿Deseas eliminar el producto?", "Sí", "No");

            if (respuesta)
            {
                Productos producto = new Productos
                {
                    ID = idProducto,
                };
                peticion.EliminarProducto(producto);
                await Navigation.PopModalAsync();
            }
        }

        private void MostrarRegistros(Productos producto)
        {
            txtNombre.Text = producto.Nombre;
            txtDescripcion.Text = producto.Descripcion;
            txtPrecio.Text = producto.Precio.ToString();
        }

        private async void btnAgregar_Clicked(object sender, EventArgs e)
        {
            bool respuesta = await DisplayAlert("Confirmación", "¿Deseas Agregar el Producto?", "Sí", "No");

            if (respuesta)
            {
                // El usuario seleccionó "Sí", continuar con el proceso
                Productos producto = new Productos
                {
                    Nombre = txtNombre.Text,
                    Descripcion = txtDescripcion.Text,
                    Precio = int.Parse(txtPrecio.Text),
                };

                peticion.AgregarProducto(producto);
                await Navigation.PopModalAsync();
            }
        }
    }
}