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
    public partial class Student_Info : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["hRegistrationConnectionString"].ConnectionString);


        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["New"] != null)
            {
                Label_welcome.Text += Session["New"].ToString();

                conn.Open();
                string name = "select * from StudentData  where Enrollment_No='" + Label_welcome.Text + "'";
                SqlCommand cmd1 = new SqlCommand(name, conn);
                SqlDataReader sdr1 = cmd1.ExecuteReader();
                while (sdr1.Read())
                {
                    LabelN.Text = sdr1["Name"].ToString();
                    LabelDA.Text = sdr1["Date"].ToString();
                    LabelG.Text = sdr1["Sex"].ToString();
                    LabelDB.Text = sdr1["DOB"].ToString();
                    LabelFN.Text = sdr1["Father_Name"].ToString();
                    LabelCN.Text = sdr1["MobileNo"].ToString();
                    LabelE.Text = sdr1["Id"].ToString();
                    Image1.ImageUrl = sdr1["Photo"].ToString();
                    LabelC.Text = sdr1["course"].ToString();
                    LabelCl.Text = sdr1["Semester"].ToString();
                    LabelD.Text = sdr1["Department"].ToString();

                }
                conn.Close();
            }
            else
            {
                Response.Redirect("~/Default.aspx");
            }


            conn.Open();
            string names = "select activity from start_stop_data where sr = (select max(sr) as cnt from start_stop_data where enrol='" + Label_welcome.Text + "')";
            SqlCommand cmd1s = new SqlCommand(names, conn);
            SqlDataReader sdr1s = cmd1s.ExecuteReader();
            while (sdr1s.Read())
            {
                if (sdr1s["activity"].ToString() == "1")
                    Label1.Text = "Continued";
                else if (sdr1s["activity"].ToString() == "0")
                    Label1.Text = "Closed";
                else if (sdr1s["activity"].ToString() == "2")
                    Label1.Text = "Continued";
                else
                    Label1.Text = "No records found about your Dining. Please, contact Munshi.";

            }
            conn.Close();



        }


    }
}
          