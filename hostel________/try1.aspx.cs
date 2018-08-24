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
    public partial class try1 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["hRegistrationConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();
            string pic = "/Student/pro_images/" + FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath("/Student/pro_images/" + FileUpload1.FileName));

            String insertQuery = "UPDATE try set extra = '" +TextBox1.Text +"' , abd = '"+ TextBox2.Text +"' , pic = '"+ pic +"' where name = '102' ";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            
           
            com.ExecuteNonQuery();


            Label1.Text = "updated";
    


            conn.Close();


        }
    }
}