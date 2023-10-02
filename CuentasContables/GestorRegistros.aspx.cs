using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CuentasContables
{
    public partial class GestorRegistros : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAlta_Click(object sender, EventArgs e)
        {
            if (tbMonto.Text != "" && bitTipo.SelectedIndex != -1)
            {
                int result = SqlRegistros.Insert();
                if (result != 0)
                {
                    LabelAlta.Text = "Se agregó el registro.";
                    tbMonto.Text = "";
                    bitTipo.SelectedIndex = -1;
                    GridView1.DataBind();
                }
                else
                {
                    LabelAlta.Text = "No se pudo agregar el registro";
                }
            }
            else
            {
                LabelAlta.Text = "Debe ingresar un monto y seleccionar tipo de registro.";
            }
            
        }

        
    }
}