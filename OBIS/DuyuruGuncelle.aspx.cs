using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OBIS
{
    public partial class DuyuruGuncelle : System.Web.UI.Page
    {
        int id;
        DataSet1TableAdapters.TBL_DUYURUTableAdapter dt = new DataSet1TableAdapters.TBL_DUYURUTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Page.IsPostBack == false)
                {
                    id = Convert.ToInt32(Request.QueryString["DYRID"].ToString());
                    TxtDyrId.Text = id.ToString();
                    TxtDyrBaslik.Text = dt.DuyuruSec(id)[0].DYRBASLIK;
                    TxtDyrIcerik.Value = dt.DuyuruSec(id)[0].DYRICERIK;

                }
            }
            catch (Exception)
            {
                Response.Redirect("DuyuruListesi.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                dt.DuyuruGuncelle(TxtDyrBaslik.Text, TxtDyrIcerik.Value, Convert.ToInt32(TxtDyrId.Text));
                Response.Redirect("DuyuruListesi.aspx");
            }
            catch (Exception)
            {
                Response.Redirect("DuyuruListesi.aspx");
            }

        }
    }
}