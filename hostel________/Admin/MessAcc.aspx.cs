using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

namespace hostel________.Admin
{
    public partial class MessAcc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void Button1_Click1(object sender, EventArgs e)
        {
                try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["hRegistrationConnectionString"].ConnectionString);
                
                conn.Open();
                String insertQuery = "insert into hMessDetails (Name,Enrollment_No,MessFee,RecieptNo,Month,MessDues,DoS) values(@name,@enrol,@MF,@RN,@Month,@MD,@DoS)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@name", TextBox7.Text);
                com.Parameters.AddWithValue("@enrol", TextBox1.Text);
                com.Parameters.AddWithValue("@MF", TextBox2.Text);
                com.Parameters.AddWithValue("@RN", TextBox5.Text);
                com.Parameters.AddWithValue("@Month", TextBox4.Text);
                com.Parameters.AddWithValue("@MD", TextBox3.Text);               
                com.Parameters.AddWithValue("@DoS", TextBox6.Text);
                com.ExecuteNonQuery();
                conn.Close();
                Label1.Text = "Submition Successful";
                
            }
            catch (Exception ex)
            {
                Response.Write("Error" + ex.ToString());
            }

        

        }
           
        
    }
}