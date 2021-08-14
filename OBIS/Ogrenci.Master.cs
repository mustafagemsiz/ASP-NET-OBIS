using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OBIS
{
    public partial class Ogrenci : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string id = Session["NUMARA"].ToString();
                Session.Add("NUMARA", id);
            }
            catch (Exception)
            {

                Response.Redirect("Login.aspx");
            }
        }
    }
}