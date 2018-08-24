using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;



namespace hostel________.Student
{
    public partial class StudentChangePass : System.Web.UI.Page
    {
      protected void Page_Load(object sender, EventArgs e)
       {
           if (Session["New"] != null)
           {
               TextBox1.Text += Session["New"].ToString();
               SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["hRegistrationConnectionString"].ConnectionString);
               conn.Open();
               string name = "select Name from StudentData  where Enrollment_No='" + TextBox1.Text + "'";
               SqlCommand cmd = new SqlCommand(name, conn);
               SqlDataReader sdr = cmd.ExecuteReader();

               while (sdr.Read())
               {
                   Label1.Text = sdr["Name"].ToString();
               }
               conn.Close();

               conn.Open();
               string pass = "select StudentPassword from StudentData  where Enrollment_No='" + TextBox1.Text + "'";
               SqlCommand cmd2 = new SqlCommand(pass, conn);
               SqlDataReader sdrB = cmd2.ExecuteReader();

               while (sdrB.Read())
               {
                   TextBox7.Text = sdrB["StudentPassword"].ToString();
               }
               conn.Close();
           }
        }

        protected void Button1_Click(object sender, EventArgs e)

        {
           SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["hRegistrationConnectionString"].ConnectionString);
            conn.Open();
            if (TextBox3.Text == TextBox7.Text)
            {
                if (TextBox6.Text == TextBox5.Text)
                {
                    
                    String Edituser =  "Update StudentData set StudentPassword='" + TextBox6.Text + "' where Enrollment_No='" + TextBox2.Text + "'";
                    SqlCommand com2 = new SqlCommand(Edituser, conn);
                    com2.ExecuteNonQuery();

                    {

                        Label4.Text = "Password Changed Succesfully.";

                    }
                }
                else
                {
                    Label4.Text = "Confirmation Password Failed.";
                }
            }
            else
            {
                Label4.Text = "Incorrect Old Password.";
            }

            conn.Close();

         }
 
    
    
     }
        
}