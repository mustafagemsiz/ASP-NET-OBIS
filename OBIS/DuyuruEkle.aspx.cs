using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OBIS
{
    public partial class DuyuruEkle : System.Web.UI.Page
    {
        DataSet1TableAdapters.TBL_OGRETMENTableAdapter dt = new DataSet1TableAdapters.TBL_OGRETMENTableAdapter();
        DataSet1TableAdapters.TBL_DUYURUTableAdapter dt2 = new DataSet1TableAdapters.TBL_DUYURUTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
            if (Page.IsPostBack==false)
            {
            TxtDyrOgretmen.DataSource = dt.OgretmenListesi();
            TxtDyrOgretmen.DataTextField = "OGRTADSOYAD";
            TxtDyrOgretmen.DataValueField = "OGRTID";
            TxtDyrOgretmen.DataBind();
            }
            }
            catch (Exception)
            {

                Response.Redirect("DuyuruListesi");
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
            dt2.DuyuruEkle(TxtDyrBaslik.Text, TxtDyrIcerik.Value.ToString(), Convert.ToInt32(TxtDyrOgretmen.SelectedValue));
            Response.Redirect("DuyuruListesi.aspx");
            }
            catch (Exception)
            {

                Response.Redirect("DuyuruListesi");
            }

        }
    }
}