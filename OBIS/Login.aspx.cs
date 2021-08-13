using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace OBIS
{
    public partial class Login : System.Web.UI.Page
    {
        SqlBaglantisi bgl = new SqlBaglantisi();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed5_Click(object sender, EventArgs e)
        {            
            SqlCommand komut = new SqlCommand("Select * From TBL_OGRENCI Where OGRNUMARA=@P1 and OGRSIFRE=@P2",bgl.baglanti());
            komut.Parameters.AddWithValue("@P1", TxtNumara.Text);
            komut.Parameters.AddWithValue("@P2", TxtSifre.Text);
            SqlDataReader dr = komut.ExecuteReader();
            if (dr.Read())
            {
                Session.Add("NUMARA", TxtNumara.Text);
                Response.Redirect("OgrenciDefault.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Hatalı Öğrenci Numarası veya Şifre Lütfen kontrol ediniz.')", true);
            }
            bgl.baglanti().Close();
        }
    }
}