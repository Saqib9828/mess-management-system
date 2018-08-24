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
    public partial class Df_Notice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
             try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["hRegistrationConnectionString"].ConnectionString);
                conn.Open();
                String insertQuery = "insert into Notice_Data (Notice_Id,Notice_Date,Notice) values(@id,@date,@sms)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@id", TextBox1.Text);
                com.Parameters.AddWithValue("@date", TextBox2.Text);
                com.Parameters.AddWithValue("@sms", TextBox3.Text);
                 
                com.ExecuteNonQuery();
                conn.Close();
            }
             catch (Exception ex)
             {
                 Response.Write("Error" + ex.ToString());
             }

        }
    }
}