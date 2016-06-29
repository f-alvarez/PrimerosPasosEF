using AccesoADatos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrimerosPasosEF
{
    public partial class Carga_Empresa : System.Web.UI.Page
    {
        PracticaEFEntities1 ctx = new PracticaEFEntities1();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var empleados = ctx.Empleado.ToList();
                checksEmpleado.DataSource = empleados;
               
                checksEmpleado.DataTextField = "Nombre";
                checksEmpleado.DataValueField = "id";

                checksEmpleado.DataBind();
            }
        }

        protected void btnCrear_Click(object sender, EventArgs e)
        {
            Empresa emp = new Empresa();
            emp.nombre = txtNombre.Text;
            ctx.Empresa.Add(emp);
            foreach (ListItem item in checksEmpleado.Items)
            {
                if(item.Selected)
                {
                    int idEmpleado = Int32.Parse(item.Value);
                    Empleado empleado = ctx.Empleado.First(o => o.id == idEmpleado);
                    emp.Empleado.Add(empleado);
                }
            }
            ctx.SaveChanges();
        }
    }
}