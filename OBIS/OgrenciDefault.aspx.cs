using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OBIS
{
    public partial class OgrenciDefault : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                string id = Session["NUMARA"].ToString();
            TextBox1.Text ="ÖĞRENCİ NUMARASI: "+ id.ToString();
            DataSet1TableAdapters.TBL_OGRENCI1TableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCI1TableAdapter();
            TextBox2.Text ="AD SOYAD: "+ dt.OgrenciGetir(id)[0].OGRAD+" "+dt.OgrenciGetir(id)[0].OGRSOYAD;
            TextBox3.Text = "MAIL: " + dt.OgrenciGetir(id)[0].OGRMAIL;
            TextBox4.Text = "TELEFON: " + dt.OgrenciGetir(id)[0].OGRTELEFON;
            TextBox5.Text = "ŞİFRE: " + dt.OgrenciGetir(id)[0].OGRSIFRE;
            TextBox6.Text = "FOTOĞRAF: " + dt.OgrenciGetir(id)[0].OGRFOTOGRAF;
            }
            catch (Exception)
            {
                Response.Redirect("Login.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["NUMARA"];
            Response.Redirect("OgrenciGuncelle2.aspx?NUMARA="+id);
        }
    }
}