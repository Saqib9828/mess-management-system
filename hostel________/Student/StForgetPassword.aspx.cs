using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace hostel________
{
    public partial class StForgetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["hRegistrationConnectionString"].ConnectionString);
            conn.Open();
            String checkuser = "Select count(*) from StudentData where Enrollment_No ='" + TextBox1.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();
                string DOB = "select DOB from StudentData  where Enrollment_No='" + TextBox1.Text + "'";
                SqlCommand cmd1 = new SqlCommand(DOB, conn);
                SqlDataReader sdr1 = cmd1.ExecuteReader();

                while (sdr1.Read())
                {
                    TextBox6.Text = sdr1["DOB"].ToString();
                }
                conn.Close();

                conn.Open();
                string Mother_Name = "select Mother_Name from StudentData  where Enrollment_No='" + TextBox1.Text + "'";
                SqlCommand cmd2 = new SqlCommand(Mother_Name, conn);
                SqlDataReader sdr2 = cmd2.ExecuteReader();

                while (sdr2.Read())
                {
                    TextBox7.Text = sdr2["Mother_Name"].ToString();
                }
                conn.Close();


                conn.Open();
                if (TextBox2.Text == TextBox6.Text)
                {
                    if (TextBox3.Text == TextBox7.Text)
                    {

                        String Edituser = "Update StudentData set StudentPassword='" + TextBox4.Text + "' where Enrollment_No='" + TextBox1.Text + "'";
                        SqlCommand com2 = new SqlCommand(Edituser, conn);
                        com2.ExecuteNonQuery();

                        {

                            Label1.Text = "Password Created Succesfully. And go to the Login Page to login.";

                        }
                    }
                    else
                    {
                        Label1.Text = "Confirmation Password Failed.";
                    }
                }
                else
                {
                    Label1.Text = "Incorrect Date Of Birth.";
                }

                conn.Close();
            }
        }
    }
}