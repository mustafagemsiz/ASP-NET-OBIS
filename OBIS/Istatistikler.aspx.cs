using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OBIS
{
    public partial class Istatistikler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.DataTable1TableAdapter dt = new DataSet1TableAdapters.DataTable1TableAdapter();
            TextBox1.Text = "Toplam Öğrenci Sayısı: " + dt.IstatistikOgrenciSayisi().ToString();
            TextBox2.Text = "Toplam Öğretmen Sayısı: " + dt.IstatistikOgretmenSayisi().ToString();
            TextBox3.Text = "Toplam Ders Sayısı: " + dt.IstatistikDersSayisi().ToString();
            TextBox4.Text = "Matematik En İyi Ortalamaya Sahip Öğrenci: " + dt.IstatistikMatematik().ToString();
            TextBox5.Text = "Fizik En İyi Ortalamaya Sahip Öğrenci: " + dt.IstatistikFizik().ToString();
            TextBox6.Text = "Kimya En İyi Ortalamaya Sahip Öğrenci: " + dt.IstatistikKimya().ToString();
            TextBox7.Text = "Dil Anlatım En İyi Ortalamaya Sahip Öğrenci: " + dt.IstatistikDilAnlatim().ToString();
            TextBox8.Text = "Felsefe En İyi Ortalamaya Sahip Öğrenci: " + dt.IstatistikFelsefe().ToString();
            TextBox9.Text = "Tarih En İyi Ortalamaya Sahip Öğrenci: " + dt.IstatistikTarih().ToString();
            TextBox10.Text = "Coğrafya En İyi Ortalamaya Sahip Öğrenci: " + dt.IstatistikCografya().ToString();
            TextBox11.Text = "Görsel Sanatlar En İyi Ortalamaya Sahip Öğrenci: " + dt.IstatistikGorselSanatlar().ToString();
            TextBox12.Text = "Biyoloji En İyi Ortalamaya Sahip Öğrenci: " + dt.IstatistikBiyoloji().ToString();

        }
    }
}