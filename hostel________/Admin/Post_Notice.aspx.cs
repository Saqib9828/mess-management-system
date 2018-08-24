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
    public partial class Post_Notice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["hRegistrationConnectionString"].ConnectionString);
                
                 if (FileUpload1.HasFile)
            {
                string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);

                conn.Open();
                String insertQuery = "insert into pdfNotice (Notice_Id,Notice_Date,Notice) values(@nid,@date,@notice )";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@nid", TextBox2.Text);
                com.Parameters.AddWithValue("@date", TextBox1.Text);
                com.Parameters.AddWithValue("@notice", "~/Admin/pdfNotice/" + fileName);
                
                com.ExecuteNonQuery();

                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Admin/pdfNotice/") + fileName);
                Response.Redirect(Request.Url.AbsoluteUri);
                Label1.Text = "Successfully Post";
                conn.Close();

               


            }

            }
            catch (Exception ex)
            {
                Response.Write("Error" + ex.ToString());
            }

            
        }
    }
}