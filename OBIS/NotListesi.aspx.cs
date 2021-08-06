using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OBIS
{
    public partial class NotListesi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet1TableAdapters.OgrNotTableAdapter dt = new DataSet1TableAdapters.OgrNotTableAdapter();
            Repeater1.DataSource = dt.NotListesi();
            Repeater1.DataBind();
        }


    }
}