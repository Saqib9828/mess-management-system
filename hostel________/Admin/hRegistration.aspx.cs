using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

namespace hostel________
{
    public partial class hRegistration : System.Web.UI.Page
    {
         
         protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void RadioButtonListFood_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["hRegistrationConnectionString"].ConnectionString);
     
                conn.Open();
                String insertQuery = "insert into StudentData (Name,Date,Id,Enrollment_No,StudentPassword) values(@name,@date,@id,@Enrollmentno,@password)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@name", TextBox3.Text);
                com.Parameters.AddWithValue("@date", TextBox4.Text);
                com.Parameters.AddWithValue("@id", TextBox5.Text);
                com.Parameters.AddWithValue("@Enrollmentno", TextBox1.Text);
                com.Parameters.AddWithValue("@password", TextBox2.Text);
                
                com.ExecuteNonQuery();
               
                
                Session["password"] = TextBox2.Text;
                Session["email_id"] = TextBox5.Text;

                Response.Redirect("PasswordMail.aspx");
                
                conn.Close();



            }

         
            catch (Exception ex)
            {
                Response.Write("Error" + ex.ToString());
            }

        }

    }
}