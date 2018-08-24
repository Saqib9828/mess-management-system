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

namespace hostel________.Admin
{
    public partial class contact_us : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
             try
            {
                SqlConnection Fconn = new SqlConnection(ConfigurationManager.ConnectionStrings["hRegistrationConnectionString"].ConnectionString);
                Fconn.Open();
                String insertQuery = "insert into Feedback (Enrolment_No,Full_Name,Email,Contact_No)  values(@Enrollmentno,@name,@id,@contact)";
                SqlCommand com = new SqlCommand(insertQuery, Fconn);
                com.Parameters.AddWithValue("@Enrollmentno", TextBoxEn.Text);
                com.Parameters.AddWithValue("@name", TextBoxName.Text);
                com.Parameters.AddWithValue("@id", TextBoxEmail.Text);
                com.Parameters.AddWithValue("@contact", TextBoxC_No.Text);

                com.ExecuteNonQuery();


                {

                    Label1.Text = "YOUR MESSAGE IS SAVED";

                }
                  
                Fconn.Close();

                CleartextBoxes(this);

            }
             catch (Exception ex)
             {
                 Response.Write("Error" + ex.ToString());
             }

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
    }
}