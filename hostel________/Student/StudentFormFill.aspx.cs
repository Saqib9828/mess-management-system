using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

namespace hostel________.Student
{
    public partial class StudentFormFill : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["hRegistrationConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {

                conn.Open();
                string name = "select Name from StudentData  where Enrollment_No='" + Session["New"] + "' ";
                SqlCommand cmd1 = new SqlCommand(name, conn);
                SqlDataReader sdr1 = cmd1.ExecuteReader();
                while (sdr1.Read())
                {
                    TextBox14.Text = sdr1["Name"].ToString();

                }
                conn.Close();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
               string pic = "~/Student/pro_images/" + FileUpload1.FileName;
               FileUpload1.SaveAs(Server.MapPath("~/Student/pro_images/" + FileUpload1.FileName ));


                conn.Open();
                String insertQuery = "UPDATE StudentData SET Room_No='"+TextBox13.Text+"' , Sex = '" + RadioButtonListSex.Text+"', SplCat= '" + TextBox9.Text + "', DOB='"+ TextBox7.Text+"', Photo ='"+ pic +"', Father_Name='" + TextBox3.Text+ "', Occuption = '" + TextBox4.Text +"', Mother_Name= '" + TextBox5.Text +"' ,Permanent_Address ='"+TextBox10.Text+"' , Home_Phone_No = '"+ TextBox6.Text+"' ,District ='"+TextBox11.Text+ "',State ='"+TextBox1.Text+"' ,MobileNo='"+TextBox8.Text+"' ,Faculty='"+DropDownList2.SelectedItem+ "',Fauculty_No='"+TextBox12.Text+"' ,Department='"+DropDownList3.SelectedItem+"',Batch='"+DropDownList5.SelectedItem+"' ,Course='"+DropDownList4.SelectedItem+"' ,Semester='"+TextBox15.Text+"',Hostel='"+DropDownList1.SelectedItem+"' where Enrollment_No='" + Session["New"] + "' ";
                SqlCommand com = new SqlCommand(insertQuery, conn);


               com.ExecuteNonQuery();
               
 
                conn.Close();

                Label1.Text = "Profile Updated Successfuly";


                 }
            }


        
    }
 
