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
    public partial class PageCosultaPrecio : ContentPage
    {
        HTTPeticion peticion = new HTTPeticion();
        
        public PageCosultaPrecio()
        {
            InitializeComponent();
        }

        private void Button_Clicked(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtPrecio.Text))
            {
                DisplayAlert("Error", "Debe llenar el campo", "Aceptar");
            }
            else
            {
                int precio = Convert.ToInt32(txtPrecio.Text);
                if (peticion.ConsultaPrecio(precio) == null)
                {
                    DisplayAlert("Error", "Fallo consulta al WebService", "Aceptar");
                }
                lstProductos.ItemsSource = peticion.ConsultaPrecio(precio);
            }
        }
    }
}