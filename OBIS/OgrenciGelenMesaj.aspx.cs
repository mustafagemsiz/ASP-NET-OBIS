﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OBIS
{
    public partial class OgrenciGelenMesaj : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Session["NUMARA"].ToString();

            DataSet1TableAdapters.TBL_MESAJTableAdapter dt = new DataSet1TableAdapters.TBL_MESAJTableAdapter();
            Repeater1.DataSource = dt.OgrenciMesajGetir(id);
            Repeater1.DataBind();
        }
    }
}