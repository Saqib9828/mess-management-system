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
    public partial class checkActiveDining : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["hRegistrationConnectionString"].ConnectionString);


        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
            //int count = 0;
            string name = "select count(*) as cnt from start_stop_data where sr in (select max(sr) as cnt from start_stop_data group by enrol) and activity=1";
            SqlCommand cmd1 = new SqlCommand(name, conn);
            SqlDataReader sdr1 = cmd1.ExecuteReader();
            while (sdr1.Read())
            {
                Label1.Text = sdr1["cnt"].ToString();
                //if (sdr1["activity"].ToString() == "1") count++;

            }
            //Label1.Text = Convert.ToString(count);
            conn.Close();
        }
    }
}