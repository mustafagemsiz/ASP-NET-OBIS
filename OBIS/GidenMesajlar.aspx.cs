using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OBIS
{
    public partial class GidenMesajlar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.TBL_MESAJTableAdapter dt = new DataSet1TableAdapters.TBL_MESAJTableAdapter();
            Repeater1.DataSource = dt.OgretmenGidenMesajlar();
            Repeater1.DataBind();
        }
    }
}