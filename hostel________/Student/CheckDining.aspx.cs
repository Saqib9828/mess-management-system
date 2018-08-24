using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace hostel________.Student
{
    public partial class CheckDining : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["hRegistrationConnectionString"].ConnectionString);
            
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();

            string name2 = "select datee,nofmonth from stdiningdata  where enrol='" + Session["New"] + "'";
            SqlCommand cmd2 = new SqlCommand(name2, conn);
            SqlDataReader sdr2 = cmd2.ExecuteReader();
            while (sdr2.Read())
            {
                Label3.Text = sdr2["datee"].ToString();
                Label4.Text = sdr2["nofmonth"].ToString();


            }
            conn.Close();
            DateTime now = DateTime.Now;
            DateTime Datt = DateTime.Parse(Label3.Text);
            double diff = (now - Datt).TotalDays;
            Label3.Text = Convert.ToString((30 * int.Parse(Label4.Text)) - ((int)diff));




            double remaining_days = 0;
            DateTime startdate;
            DateTime enddate;
            conn.Open();
            string name = "select * from start_stop_data  where enrol='" + Session["New"] + "' order by sr asc";
            SqlCommand cmd1 = new SqlCommand(name, conn);
            SqlDataReader sdr1 = cmd1.ExecuteReader();
            while (sdr1.Read())
            {
                Label1.Text = sdr1["activity"].ToString();
                if (int.Parse(Label1.Text) == 1)
                {
                    Label2.Text = sdr1["Datee"].ToString();
                }
                else if (int.Parse(Label1.Text) == 0)
                {
                    enddate = DateTime.Parse(sdr1["Datee"].ToString());
                    startdate = DateTime.Parse(Label2.Text);
                    double diff2 = (enddate - startdate).TotalDays;
                    remaining_days = remaining_days + diff2;
                }

            }
            conn.Close();
            Label2.Text = Convert.ToString(remaining_days);
            Label2.Visible = true;
        }
    }
}