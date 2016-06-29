using AccesoADatos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Respositorios
{
    public class EmpleadoRepositorio
    {
        PracticaEFEntities1 contexto; 
        public EmpleadoRepositorio()
        {
            contexto = new PracticaEFEntities1();
            
        }

        public void crear(Empleado emp, Empresa ent)
        {
            contexto.Empleado.Add(emp);
            contexto.Empresa.Add(ent);
            contexto.SaveChanges();
        }

        public Empleado obtenerEmpleadoByID(string id)
        {
            int intid = Int32.Parse(id);
            var empleado = (from e in contexto.Empleado where e.id == intid select e).FirstOrDefault();
            return empleado;
        }

        public void actualizarEmpleado(string id, Empleado emp)
        {
            var empleado = obtenerEmpleadoByID(id);
            empleado.nombre = emp.nombre;
            empleado.apellido = emp.apellido;
            empleado.fecha_nac = emp.fecha_nac;
            empleado.tipo = emp.tipo;
            contexto.SaveChanges();
        }
    }
}
