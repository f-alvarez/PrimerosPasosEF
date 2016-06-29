using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Respositorios;
using AccesoADatos;
 
namespace PrimerosPasosEF
{
    public partial class Carga_Empleado : System.Web.UI.Page
    {
        public EmpleadoRepositorio EmpleadoRepo = new EmpleadoRepositorio();

        protected void Page_Load(object sender, EventArgs e)
        {
           

        }



        protected void darDeAlta_Click(object sender, EventArgs e)
        {
            Empleado emp = new Empleado();
            Empresa ent = new Empresa();
           
            emp.apellido = txtApe.Text;
            emp.nombre = txtNom.Text;       

            emp.fecha_nac = DateTime.Parse(txtFech.Text);
            emp.tipo = Convert.ToByte(tipos.SelectedValue);
            EmpleadoRepo.crear(emp, ent);

        }

        protected void actualizar_Click(object sender, EventArgs e)
        {
            Empleado emp = new Empleado();
            emp.apellido = txtApe.Text;
            emp.nombre = txtNom.Text;
            emp.fecha_nac = DateTime.Parse(txtFech.Text);
            emp.tipo = Convert.ToByte(tipos.SelectedValue);
            EmpleadoRepo.actualizarEmpleado(txtid.Text, emp);
        }

        protected void obtenerEmp_Click(object sender, EventArgs e)
        {
            Empleado empleadoObtenido = EmpleadoRepo.obtenerEmpleadoByID(txtid.Text);
            lblNombreObtenido.Text = empleadoObtenido.nombre;
            lblApellidoObtenido.Text = empleadoObtenido.apellido;
            lblFechaNacObtenido.Text = empleadoObtenido.fecha_nac.ToString();
            lblTipoObtenido.Text = empleadoObtenido.tipo.ToString();
        }

        protected void btnCrearEmpresa_Click(object sender, EventArgs e)
        {
            PracticaEFEntities1 ctx = new PracticaEFEntities1();
            Empresa o = ctx.Empresa.FirstOrDefault(i => i.nombre.ToUpper() == txtEmpresa.Text);

            if (o == null)
            {
                o = new Empresa();
                o.nombre = txtEmpresa.Text;
                ctx.Empresa.Add(o);
            }

            Empleado emp = new Empleado();
            emp.apellido = txtApe.Text;
            emp.nombre = txtNom.Text;
            emp.fecha_nac = DateTime.Parse(txtFech.Text);
            emp.tipo = Convert.ToByte(tipos.SelectedValue);

            emp.Empresa = o;
            ctx.Empleado.Add(emp);
            ctx.SaveChanges();

        }

    }
}