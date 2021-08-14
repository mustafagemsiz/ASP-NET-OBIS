using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OBIS
{
    public partial class DersGuncelle : System.Web.UI.Page
    {
        DataSet1TableAdapters.TBL_DERSTableAdapter dt = new DataSet1TableAdapters.TBL_DERSTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
            if (Page.IsPostBack == false)
            {
                int id = Convert.ToInt32(Request.QueryString["DERSID"].ToString());
                TxtDersId.Text = id.ToString();
                TxtDersAd.Text = dt.DersGetir(id)[0].DERSAD.ToString();    
            }
            }
            catch (Exception)
            {
                Response.Redirect("DersListesi.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
            dt.DersGuncelle(TxtDersAd.Text, Convert.ToInt32(TxtDersId.Text));
            Response.Redirect("DersListesi.aspx");
            }
            catch (Exception)
            {
                Response.Redirect("DersListesi.aspx");
            }
        }
    }
}