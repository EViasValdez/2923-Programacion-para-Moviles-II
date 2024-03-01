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
    public partial class PageConsulta : ContentPage
    {
        HTTPeticion peticion = new HTTPeticion();

        public PageConsulta()
        {
            InitializeComponent();
        }

        private async void lstProductos_ItemSelected(object sender, SelectedItemChangedEventArgs e)
        {
            if (e.SelectedItem == null)
                return;

            // objeto seleccionado del ListView
            var direccion = (Productos)e.SelectedItem;
            await Navigation.PushModalAsync(new ModificarDatos(direccion));
        }

        private void btnModificar_Clicked(object sender, EventArgs e)
        {
            if (peticion.ConsultaProductos() == null)
                DisplayAlert("Error", "Fallo consulta al WebService", "Aceptar");
            else
                lstProductos.ItemsSource = peticion.ConsultaProductos();
        }

        private async void btnAgregar_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushModalAsync(new ModificarDatos());
        }
    }
}