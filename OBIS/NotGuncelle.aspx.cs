using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OBIS
{
    public partial class NotGuncelle : System.Web.UI.Page
    {
        int id;
        DataSet1TableAdapters.OgrNotTableAdapter dt = new DataSet1TableAdapters.OgrNotTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Page.IsPostBack == false)
                {
                    id = Convert.ToInt32(Request.QueryString["NOTID"].ToString());
                    TxtDersAd.Text = dt.NotGetir2(id)[0].DERSAD.ToString();
                    TxtOgrId.Text = dt.NotGetir2(id)[0].OGRENCIID.ToString();
                    TxtOgrAdSoyad.Text = dt.NotGetir2(id)[0].OGRADSOYAD.ToString();
                    TxtSinav1.Text = dt.NotGetir2(id)[0].SINAV1.ToString();
                    TxtSinav2.Text = dt.NotGetir2(id)[0].SINAV2.ToString();
                    TxtSinav3.Text = dt.NotGetir2(id)[0].SINAV3.ToString();
                    TxtOrtalama.Text = dt.NotGetir2(id)[0].ORTALAMA.ToString();
                    TxtDurum.Text = dt.NotGetir2(id)[0].DURUM.ToString();
                }
            }
            catch (Exception)
            {
                Response.Redirect("NotListesi.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                double sinav1, sinav2, sinav3;
                double ortalama;
                sinav1 = Convert.ToDouble(TxtSinav1.Text);
                sinav2 = Convert.ToDouble(TxtSinav2.Text);
                sinav3 = Convert.ToDouble(TxtSinav3.Text);
                ortalama = (sinav1 + sinav2 + sinav3) / 3;
                TxtOrtalama.Text = ortalama.ToString("0.00");
                if (ortalama >= 50)
                {
                    TxtDurum.Text = "True";
                }
                else
                {
                    TxtDurum.Text = "False";
                }
            }
            catch (Exception)
            {
                Response.Redirect("NotListesi.aspx");
            }
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            try
            {
                id = Convert.ToInt32(Request.QueryString["NOTID"].ToString());
                dt.NotGuncelle(byte.Parse(TxtSinav1.Text), byte.Parse(TxtSinav2.Text), byte.Parse(TxtSinav3.Text), decimal.Parse(TxtOrtalama.Text), bool.Parse(TxtDurum.Text), id);
                Response.Redirect("NotListesi.aspx");
            }
            catch (Exception)
            {
                Response.Redirect("NotListesi.aspx");
            }


        }
    }
}