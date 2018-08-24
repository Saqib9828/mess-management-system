using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace hostel________.munsi
{
    public partial class munshi_home : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["hRegistrationConnectionString"].ConnectionString);

        string str;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();

            string name2 = "select count(*) as cnt from diningclose  where IsSeen=0";
            SqlCommand cmd2 = new SqlCommand(name2, conn);
            SqlDataReader sdr2 = cmd2.ExecuteReader();
            while (sdr2.Read())
            {
                Label1.Text = sdr2["cnt"].ToString();
                
            }
            conn.Close();
        }
    }
}