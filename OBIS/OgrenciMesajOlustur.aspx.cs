using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OBIS
{
    public partial class OgrenciMesajOlustur : System.Web.UI.Page
    {
        DataSet1TableAdapters.TBL_MESAJTableAdapter dt = new DataSet1TableAdapters.TBL_MESAJTableAdapter();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
            string id = Session["NUMARA"].ToString();
            TxtMsjGonderen.Text = id;
            }
            catch (Exception)
            {
                Response.Redirect("ErrorPage.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                dt.MesajGonder(TxtMsjGonderen.Text, TxtMsjAlici.Text, TxtMsjBaslik.Text, TxtMsjIcerik.Value);
                Response.Redirect("OgrenciGidenMesaj.aspx");
            }
            catch (Exception)
            {
                Response.Redirect("OgrenciGidenMesaj.aspx");
            }
        }
    }
}