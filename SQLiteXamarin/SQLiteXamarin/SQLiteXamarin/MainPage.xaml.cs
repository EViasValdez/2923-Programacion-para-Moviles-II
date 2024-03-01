using SQLiteXamarin.Modelo;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace SQLiteXamarin
{
    public partial class MainPage : ContentPage
    {
        ModeloBD bd = new ModeloBD();
        public MainPage()
        {
            InitializeComponent();
        }

        private void btnGuardar_Clicked(object sender, EventArgs e)
        {
            Alumno alumno = new Alumno
            {
                Nombre = "Mejía",
                Matricula = "2345234523",
                GrupoID = 1
            };

            bd.Alumno.Add(alumno);
            bd.SaveChangesAsync();
        }

        private void btnConsultar_Clicked(object sender, EventArgs e)
        {
            var consulta = bd.Alumno.Where(c => c.ID >= 1).ToList();
        }

        private void btnGuardarGrupo_Clicked(object sender, EventArgs e)
        {
            Grupo grupo = new Grupo
            {
                Nombre = "1923IS"
            };

            bd.Grupo.Add(grupo);
            bd.SaveChangesAsync();
        }
    }
}
