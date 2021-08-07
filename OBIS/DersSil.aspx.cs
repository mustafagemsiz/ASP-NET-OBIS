using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OBIS
{
    public partial class DersSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                int id = Convert.ToInt32(Request.QueryString["DERSID"].ToString());
                DataSet1TableAdapters.TBL_DERSTableAdapter dt = new DataSet1TableAdapters.TBL_DERSTableAdapter();
                dt.DersSil(id);
                Response.Redirect("DersListesi.aspx");
            }
            catch (Exception)
            {
                Response.Redirect("DersListesi.aspx");
            }

        }
    }
}