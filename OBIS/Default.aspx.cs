﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OBIS
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
            DataSet1TableAdapters.TBL_OGRENCITableAdapter dt= new DataSet1TableAdapters.TBL_OGRENCITableAdapter();
            Repeater1.DataSource = dt.OgrenciListesi();
            Repeater1.DataBind();
            }
            catch (Exception)
            {
                Response.Redirect("ErrorPage.aspx");
            }

        }
    }
}