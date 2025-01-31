using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using Xamarin.Essentials;

namespace MagnetoEjemplo
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();

            // Suscribirse al evento de lectura del magnetómetro
            Magnetometer.ReadingChanged += Magnetometer_ReadingChanged;
            // Iniciar la lectura del magnetómetro
            Magnetometer.Start(SensorSpeed.Default);
        }

        private void Magnetometer_ReadingChanged(object sender, MagnetometerChangedEventArgs e)
        {
            // Obtener los datos del magnetómetro
            var data = e.Reading.MagneticField;

            // Actualizar los Labels con los datos del magnetómetro
            Device.BeginInvokeOnMainThread(() =>
            {
                LabelX.Text = $"Valor X: {data.X}";
                LabelY.Text = $"Valor Y: {data.Y}";
                LabelZ.Text = $"Valor Z: {data.Z}";
            });
        }

        protected override void OnDisappearing()
        {
            base.OnDisappearing();

            // Detener la lectura del magnetómetro
            Magnetometer.Stop();
            // Desuscribirse del evento de lectura del magnetómetro
            Magnetometer.ReadingChanged -= Magnetometer_ReadingChanged;
        }

    }
}