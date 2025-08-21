using MVVM2923IS.Views;
using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace MVVM2923IS
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();

            MainPage = new AlumnoView();
        }

        protected override void OnStart()
        {
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }
    }
}