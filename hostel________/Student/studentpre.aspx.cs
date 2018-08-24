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
    public partial class studentpre : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["hRegistrationConnectionString"].ConnectionString);
        string str;

        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
            string name1 = "select Father_Name from StudentData  where Enrollment_No='" + Session["New"] + "'";
            SqlCommand cmd2 = new SqlCommand(name1, conn);
            SqlDataReader sdr2 = cmd2.ExecuteReader();
            while (sdr2.Read())
            {
                str = sdr2["Father_Name"].ToString();
                Label1.Text = sdr2["Father_Name"].ToString();

            }
            conn.Close();



            if (Label1.Text == null || Label1.Text == "")
            {
                Response.Redirect("StudentFormFill.aspx");
            }
            else
            {
                Response.Redirect("Student_Info.aspx");
                
            }



                 
        }
    }
}