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
        }
    }
}