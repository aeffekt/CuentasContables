using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CuentasContables
{
    public partial class GestorCuentas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAlta_Click(object sender, EventArgs e)
        {            
            int result = SqlCuentas.Insert();
            if (result != 0)
            {
                LabelAlta.Text = "Se agregó el registro: "+ tbCuentaNueva.Text;
                tbCuentaNueva.Text = "";
            }
            else
            {
                LabelAlta.Text = "No se pudo agregar el registro";
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            int result = SqlCuentas.Update();
            if (result != 0)
            {
                LabelMod.Text = "Se modifico el registro: " + tbCuentaExistente.Text;
                tbCuentaExistente.Text="";
            }
            else
            {
                LabelMod.Text = "No se pudo modificar el registro";
            }
        }

        protected void ddlCuentaExistente_SelectedIndexChanged(object sender, EventArgs e)
        {
            tbCuentaExistente.Text = ddlCuentaExistente.SelectedItem.ToString();
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            int result = SqlCuentas.Delete();
            if (result != 0)
            {
                LabelMod.Text = "Se eliminó el registro: " + ddlCuentaExistente.SelectedItem;
                tbCuentaExistente.Text = "";
            }
            else
            {
                LabelMod.Text = "No se pudo eliminar el registro";
            }
        }
    }
}