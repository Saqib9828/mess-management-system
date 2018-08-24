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
    public partial class munshi_start_stop : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["hRegistrationConnectionString"].ConnectionString);


        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            conn.Open();
            string name = "select sr,activity from start_stop_data  where enrol='" + TextBox1.Text + "' order by sr asc";
            SqlCommand cmd1 = new SqlCommand(name, conn);
            SqlDataReader sdr1 = cmd1.ExecuteReader();
            while (sdr1.Read())
            {
                Label1.Text = sdr1["activity"].ToString();
                if (int.Parse(Label1.Text) == 2 || int.Parse(Label1.Text) == 0)
                {
                    Button3.Visible = true;
                    Button2.Visible = false;
                    Label1.Text = "Not Started";
                }
                else
                {
                    Button2.Visible = true;
                    Button3.Visible = false;
                    Label1.Text = "Started";
                }


            }
            conn.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            DateTime day_On = DateTime.Now;
            try
            {
                SqlConnection Fconn = new SqlConnection(ConfigurationManager.ConnectionStrings["hRegistrationConnectionString"].ConnectionString);
                Fconn.Open();



                String insertQuery = "insert into start_stop_data (enrol,activity,datee)  values(@enrol,@activity,@datee)";
                SqlCommand com = new SqlCommand(insertQuery, Fconn);
                com.Parameters.AddWithValue("@enrol", TextBox1.Text);
                com.Parameters.AddWithValue("@activity", 1);
                com.Parameters.AddWithValue("@datee", day_On);


                com.ExecuteNonQuery();


                {

                    Label1.Text = "Your Dining Started Successfully";
                    Button2.Visible = false;
                    Button3.Visible = false;

                }

                Fconn.Close();


            }
                catch (Exception ex)
                {
                    Response.Write("Error" + ex.ToString());
                }
            }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DateTime day_On = DateTime.Now;
            try
            {
                SqlConnection Fconn = new SqlConnection(ConfigurationManager.ConnectionStrings["hRegistrationConnectionString"].ConnectionString);
                Fconn.Open();



                String insertQuery = "insert into start_stop_data (enrol,activity,datee)  values(@enrol,@activity,@datee)";
                SqlCommand com = new SqlCommand(insertQuery, Fconn);
                com.Parameters.AddWithValue("@enrol", TextBox1.Text);
                com.Parameters.AddWithValue("@activity", 0);
                com.Parameters.AddWithValue("@datee", day_On);


                com.ExecuteNonQuery();


                {

                    Label1.Text = "Your Dining Closed Successfully";
                    Button2.Visible = false;
                    Button3.Visible = false;

                }

                Fconn.Close();


            }
            catch (Exception ex)
            {
                Response.Write("Error" + ex.ToString());
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            double remaining_days = 0;
            DateTime startdate;
            DateTime enddate;
            conn.Open();
            string name = "select * from start_stop_data  where enrol='" + TextBox1.Text + "' order by sr asc";
            SqlCommand cmd1 = new SqlCommand(name, conn);
            SqlDataReader sdr1 = cmd1.ExecuteReader();
            while (sdr1.Read())
            {
                Label1.Text = sdr1["activity"].ToString();
                if (int.Parse(Label1.Text) == 1)
                {
                    Label2.Text = sdr1["Datee"].ToString();
                }
                else if(int.Parse(Label1.Text) == 0)
                {
                    enddate = DateTime.Parse(sdr1["Datee"].ToString());
                    startdate = DateTime.Parse(Label2.Text);
                    double diff = (enddate - startdate).TotalDays;
                    remaining_days = remaining_days + diff;
                }

            }
            conn.Close();
            Label2.Text = Convert.ToString(remaining_days);
            Label2.Visible = true;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            conn.Open();
            String Edituser = "Update diningclose set IsSeen=1";
            SqlCommand com2 = new SqlCommand(Edituser, conn);
            com2.ExecuteNonQuery();

            {
                Label3.Text = "Cleared";
                GridView1.Visible = false;

            }
            conn.Close();

        }
        
    }
}