using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using Xamarin.Essentials;
using System.Numerics;
using System.Threading;

namespace Sensor
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();

            if (Accelerometer.IsMonitoring)
                return;
            Accelerometer.ReadingChanged += Accelerometer_ReadingChanged;
            Accelerometer.ShakeDetected += Accelerometer_ShakeDetected;
            Accelerometer.Start(SensorSpeed.Game);
        }
        private void Accelerometer_ShakeDetected(object sender, EventArgs e)
        {
            Accelerometer.Stop();
            for (int contador = 0; contador <= 5; contador++)
            {
                Thread.Sleep(5000);
            }
        }
        private void Accelerometer_ReadingChanged(object sender, AccelerometerChangedEventArgs e)
        {
            Vector3 vector = new Vector3();
            vector.Y = e.Reading.Acceleration.Y;
            vector.X = e.Reading.Acceleration.X;
            vector.Z = e.Reading.Acceleration.Z;

            if (0 < vector.Y)
            {
                if (0 < vector.X)
                {
                    if (0 < vector.Z)
                    {
                        ColorFondo.BackgroundColor = Color.FromRgb(0, 204, 0);
                    }
                    else
                    {
                        ColorFondo.BackgroundColor = Color.FromRgb(255, 233, 72);
                    }
                }
                else
                {
                    if (0 < vector.Z)
                    {
                        ColorFondo.BackgroundColor = Color.FromRgb(0, 204, 0);
                    }
                    else
                    {
                        ColorFondo.BackgroundColor = Color.FromRgb(255, 233, 72);
                    }
                }
            }
            else
            {
                if (0 < vector.X)
                {
                    if (0 < vector.Z)
                    {
                        ColorFondo.BackgroundColor = Color.FromRgb(0, 204, 0);
                    }
                    else
                    {
                        ColorFondo.BackgroundColor = Color.FromRgb(255, 0, 0);
                    }
                }
                else
                {

                    if (0 < vector.Z)
                    {
                        ColorFondo.BackgroundColor = Color.FromRgb(0, 204, 0);
                    }
                    else
                    {
                        ColorFondo.BackgroundColor = Color.FromRgb(255, 0, 0);
                    }
                }
            }
            String text = "Y : " + vector.Y.ToString() + "\nX : " + vector.X.ToString() + "\nZ : " + vector.Z.ToString();
            LabelCoordenadas.Text = text;
        }
    }
}