using MVVM2923IS.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace MVVM2923IS.ViewModels
{
    public class AlumnoViewModel : BaseModel
    {
        AlumnoModel alumno;
        public Command InsertarCommand { get; set; }

        public AlumnoViewModel()
        {
            alumno = new AlumnoModel
            {
                ID = 1,
                Nombre = "Hómer"
            };

            InsertarCommand = new Command(Insertar);
        }

        public int ID
        {
            get { return alumno.ID; }
            set
            {
                alumno.ID = value;
                OnPropertyChanged();
            }
        }

        public String Nombre
        {
            get { return alumno.Nombre; }
            set
            {
                alumno.Nombre = value;
                OnPropertyChanged();
            }
        }

        public void Insertar()
        {
            Nombre = "Miguel";
        }
    }
}
