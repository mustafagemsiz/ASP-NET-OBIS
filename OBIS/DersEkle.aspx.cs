using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OBIS
{
    public partial class DersEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnDersEkle_Click(object sender, EventArgs e)
        {
            try
            {
                DataSet1TableAdapters.TBL_DERSTableAdapter dt = new DataSet1TableAdapters.TBL_DERSTableAdapter();
                dt.DersEkle(TxtDersAd.Text);
                Response.Redirect("DersListesi.aspx");
            }
            catch (Exception)
            {

                Response.Redirect("DersListesi.aspx");
            }

        }
    }
}