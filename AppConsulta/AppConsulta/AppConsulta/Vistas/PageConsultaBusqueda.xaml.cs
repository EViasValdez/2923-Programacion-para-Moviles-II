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
    public partial class PageConsultaBusqueda : ContentPage
    {
        HTTPeticion peticion = new HTTPeticion();
        
        public PageConsultaBusqueda()
        {
            InitializeComponent();
        }

        private void Button_Clicked(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtBusqueda.Text))
            {
                DisplayAlert("Error", "Debe llenar el campo", "Aceptar");
            }
            else
            {
                string busqueda = txtBusqueda.Text;
                if (peticion.ConsultaNombre(busqueda) == null)
                {
                    DisplayAlert("Error", "Fallo consulta al WebService", "Aceptar");
                }
                lstProductos.ItemsSource = peticion.ConsultaNombre(busqueda);
            }
        }
    }
}