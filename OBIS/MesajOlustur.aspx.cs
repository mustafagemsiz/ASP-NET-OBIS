using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OBIS
{
    public partial class MesajOlustur : System.Web.UI.Page
    {
        DataSet1TableAdapters.TBL_MESAJTableAdapter dt = new DataSet1TableAdapters.TBL_MESAJTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            TxtMsjGonderen.Text = "8975";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                dt.MesajGonder(TxtMsjGonderen.Text, TxtMsjAlici.Text, TxtMsjBaslik.Text, TxtMsjIcerik.Value);
                Response.Redirect("GidenMesajlar.aspx");
            }
            catch (Exception)
            { 
            Response.Redirect("GidenMesajlar.aspx");
        }

    }
    }
}