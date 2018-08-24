using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data;

namespace hostel________.Admin
{
    public partial class Account_registery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["hRegistrationConnectionString"].ConnectionString);
            conn.Open();

            String Edituser = "Update StudentData set Admission_Fee ='" + TextBoxMF.Text + "' where Enrollment_No='" + TextBoxEnNo.Text + "'";
            SqlCommand com = new SqlCommand(Edituser, conn);
            com.ExecuteNonQuery();

            String Edituser2 = "Update StudentData set Admissionfee_RecieptNo ='" + TextBoxRNo1.Text + "' where Enrollment_No='" + TextBoxEnNo.Text + "'";
            SqlCommand com2 = new SqlCommand(Edituser2, conn);
            com2.ExecuteNonQuery();

            String Edituser3 = "Update StudentData set Hostel_Dues ='" + TextBoxHD.Text + "' where Enrollment_No='" + TextBoxEnNo.Text + "'";
            SqlCommand com3 = new SqlCommand(Edituser3, conn);
            com3.ExecuteNonQuery();

            String Edituser4 = "Update StudentData set Halldues_RecieptNo  ='" + TextBoxRNo2.Text + "' where Enrollment_No='" + TextBoxEnNo.Text + "'";
            SqlCommand com4 = new SqlCommand(Edituser4, conn);
            com4.ExecuteNonQuery();

           

            String Edituser6 = "Update StudentData set Paid_Fee  ='" + RadioButtonListPF.Text + "' where Enrollment_No='" + TextBoxEnNo.Text + "'";
            SqlCommand com6 = new SqlCommand(Edituser6, conn);
            com6.ExecuteNonQuery();
            
            {
                Label1.Text = "Process complete.....";
            }

            conn.Close();
            
           CleartextBoxes(this);
        }
        public void CleartextBoxes(Control parent)
        {

            foreach (Control c in parent.Controls)
            {
                if ((c.GetType() == typeof(TextBox)))
                {

                    ((TextBox)(c)).Text = "";
                }

                if (c.HasControls())
                {
                    CleartextBoxes(c);
                }
            }
        }

        protected void TextBoxMF_TextChanged(object sender, EventArgs e)
        {

        }
    }
}








   
        
        