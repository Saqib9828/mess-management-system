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
    public partial class hStudentAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label5.Text += Session["New"].ToString();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["hRegistrationConnectionString"].ConnectionString);
            conn.Open();
            string d1 = "select Admission_Fee from StudentData  where Enrollment_No='" + Label5.Text + "'";
            SqlCommand cmd1 = new SqlCommand(d1, conn);
            SqlDataReader sdr1 = cmd1.ExecuteReader();
            while (sdr1.Read())
            {
                Label1.Text = sdr1["Admission_Fee"].ToString();

            }
            conn.Close();
            conn.Open();
            string d2 = "select Admissionfee_RecieptNo from StudentData  where Enrollment_No='" + Label5.Text + "'";
            SqlCommand cmd2 = new SqlCommand(d2, conn);
            SqlDataReader sdr2 = cmd2.ExecuteReader();
            while (sdr2.Read())
            {
                Label2.Text = sdr2["Admissionfee_RecieptNo"].ToString();
            }
            conn.Close();
            conn.Open();
            string d3 = "select Hostel_Dues from StudentData  where Enrollment_No='" + Label5.Text + "'";
            SqlCommand cmd3 = new SqlCommand(d3, conn);
            SqlDataReader sdr3 = cmd3.ExecuteReader();
            while (sdr3.Read())
            {
                Label3.Text = sdr3["Hostel_Dues"].ToString();
            }

            conn.Close();

            conn.Open();
            string d4 = "select Halldues_RecieptNo from StudentData  where Enrollment_No='" + Label5.Text + "'";
            SqlCommand cmd4 = new SqlCommand(d4, conn);
            SqlDataReader sdr4 = cmd4.ExecuteReader();
            while (sdr4.Read())
            {
                Label4.Text = sdr4["Halldues_RecieptNo"].ToString();
            }

            conn.Close();

            conn.Open();
            string d6 = "select Paid_Fee from StudentData  where Enrollment_No='" + Label5.Text + "'";
            SqlCommand cmd6 = new SqlCommand(d6, conn);
            SqlDataReader sdr6 = cmd6.ExecuteReader();
            while (sdr6.Read())
            {
                Label6.Text = sdr6["Paid_Fee"].ToString();
            }

            conn.Close();

        }
    }
}