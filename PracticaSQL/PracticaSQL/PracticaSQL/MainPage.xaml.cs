using PracticaSQL.Modelos;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace PracticaSQL
{
    public partial class MainPage : ContentPage
    {
        ModeloBD BasedeDatos = new ModeloBD();
        public MainPage()
        {
            InitializeComponent();
        }
        private void BInsertar_Clicked(object sender, EventArgs s)
        {
            Alumno alumno = new Alumno
            {
                Nombre = ENombre.Text,
                Apellidos = EApellidos.Text,
                Matricula = EMatricula.Text,
                Codigo = ECodigo.Text
            };
            BasedeDatos.Alumno.Add(alumno);
            BasedeDatos.SaveChanges();
        }
        private void BConsultar_Clicked(object sender, EventArgs s)
        {
            {
                var alumno = BasedeDatos.Alumno.ToList();
            };
        }
        private void BInsertarGrupo_Clicked(object sender, EventArgs s)
        {
            {
                Grupo grupo = new Grupo
                {
                    Nombre = EGrupo.Text
                };

                BasedeDatos.Grupo.Add(grupo);
            };
        }
        private void BConsultarGrupo_Clicked(object sender, EventArgs s)
        {
            {
                var grupos = BasedeDatos.Grupo.ToList();
            };
        }
    }
}