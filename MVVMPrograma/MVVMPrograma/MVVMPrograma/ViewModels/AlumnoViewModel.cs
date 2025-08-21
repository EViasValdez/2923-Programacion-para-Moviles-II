using MVVMPrograma.Models;
using System;
using System.Collections.Generic;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace MVVMPrograma.ViewModels
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
                Nombre = "Eduardo"
            };

            InsertarCommand = new Command(Insertar);
        }
        public int ID
        {
            get { return ID; }
            set
            {
                ID = value;
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
            alumno.Nombre = "Miguel";
        }
    }
}