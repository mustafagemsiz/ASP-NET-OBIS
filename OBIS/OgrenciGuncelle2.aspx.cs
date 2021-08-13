using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OBIS
{
    public partial class OgrenciGuncelle2 : System.Web.UI.Page
    {
        DataSet1TableAdapters.TBL_OGRENCI1TableAdapter dt = new DataSet1TableAdapters.TBL_OGRENCI1TableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (TextBox1.Text == TextBox2.Text)
                {
                    string id = Session["NUMARA"].ToString();

                    dt.OgrenciSifreGuncelle(TextBox1.Text, id);

                    Response.Redirect("OgrenciDefault.aspx?Numara=" + id);
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Hatalı deneme şifreler eşleşmiyor. Tekrar deneyiniz.')", true);

                }

            }
            catch (Exception)
            {

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Sistem Hatası Yöneticinizle İletişime Geçiniz.')", true);
                Response.Redirect("Login.aspx");

            }

        }
    }
}