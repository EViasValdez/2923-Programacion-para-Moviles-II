﻿using AppMQTT.Views;
using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace AppMQTT
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();

            MainPage = new main();
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