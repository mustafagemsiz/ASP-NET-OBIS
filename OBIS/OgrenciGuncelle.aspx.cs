using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OBIS
{
    public partial class OgrenciGuncelle : System.Web.UI.Page
    {
        int id;
        DataSet1TableAdapters.TBL_OGRENCITableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCITableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Page.IsPostBack == false)
                {
                    id = Convert.ToInt32(Request.QueryString["OGRID"].ToString());
                    TxtOgrId.Text = id.ToString();
                    TxtOgrAd.Text = dt.OgrenciGetir(id)[0].OGRAD;
                    TxtOgrSoyad.Text = dt.OgrenciGetir(id)[0].OGRSOYAD;
                    TxtOgrTelefon.Text = dt.OgrenciGetir(id)[0].OGRTELEFON;
                    TxtOgrMail.Text = dt.OgrenciGetir(id)[0].OGRMAIL;
                    TxtOgrSifre.Text = dt.OgrenciGetir(id)[0].OGRSIFRE;
                    TxtOgrFoto.Text = dt.OgrenciGetir(id)[0].OGRFOTOGRAF;
                }
            }
            catch (Exception)
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                dt.OgrenciGuncelle(TxtOgrAd.Text, TxtOgrSoyad.Text, TxtOgrTelefon.Text, TxtOgrMail.Text, TxtOgrSifre.Text, TxtOgrFoto.Text, Convert.ToInt32(TxtOgrId.Text));
                Response.Redirect("Default.aspx");
            }
            catch (Exception)
            {

                Response.Redirect("Default.aspx");
            }

        }
    }
}