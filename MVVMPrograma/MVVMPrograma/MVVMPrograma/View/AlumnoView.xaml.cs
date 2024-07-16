using MVVMPrograma.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace MVVMPrograma.View
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class AlumnoView : ContentPage
    {
        AlumnoViewModel contexto;
        public AlumnoView()
        {
            InitializeComponent();
            contexto = new AlumnoViewModel
            {
                ID = 1,
                Nombre = "Eduardo"
            };

            BindingContext = contexto;
        }
    }
}