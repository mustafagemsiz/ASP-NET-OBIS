using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
namespace OBIS
{
    public class SqlBaglantisi
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=MUSTAFA;Initial Catalog=Db_Obis;Integrated Security=True");
            baglan.Open();
            return baglan;
        }
    }
}