using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OBIS
{
    public partial class DuyuruSil : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {

                DataSet1TableAdapters.TBL_DUYURUTableAdapter dt = new DataSet1TableAdapters.TBL_DUYURUTableAdapter();
                int id = Convert.ToInt32(Request.QueryString["DYRID"].ToString());
                dt.DuyuruSil(id);
                Response.Redirect("DuyuruListesi.aspx");
            }
            catch (Exception)
            {

                Response.Redirect("DuyuruListesi.aspx");

            }

        }
    }
}