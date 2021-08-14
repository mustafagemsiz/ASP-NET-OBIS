using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OBIS
{
    public partial class Ogretmen : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
            string id = Session["OGRTNUMARA"].ToString();
            Session.Add("OGRTNUMARA", id);
            }
            catch (Exception)
            {

                Response.Redirect("Login.aspx");
            }
        }
    }
}