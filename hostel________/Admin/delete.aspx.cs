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
    public partial class delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["hRegistrationConnectionString"].ConnectionString);

            conn.Open();
            String checkuser = "Select count(*) from StudentData where Enrollment_No ='" + TextBox1.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {

                conn.Open();
                string Name = "select Name from StudentData  where Enrollment_No='" + TextBox1.Text + "'";
                SqlCommand cmd2 = new SqlCommand(Name, conn);
                SqlDataReader sdr2 = cmd2.ExecuteReader();
                while (sdr2.Read())
                {
                    TextBox2.Text = sdr2["Name"].ToString();

                }
                conn.Close();

                conn.Open();
                string Date = "select Date from StudentData  where Enrollment_No='" + TextBox1.Text + "'";
                SqlCommand cmd3 = new SqlCommand(Date, conn);
                SqlDataReader sdr3 = cmd3.ExecuteReader();
                while (sdr3.Read())
                {
                    TextBox3.Text = sdr3["Date"].ToString();

                }
                conn.Close();

                conn.Open();
                string Email = "select Id from StudentData  where Enrollment_No='" + TextBox1.Text + "'";
                SqlCommand cmd4 = new SqlCommand(Email, conn);
                SqlDataReader sdr4 = cmd4.ExecuteReader();
                while (sdr4.Read())
                {
                    TextBox4.Text = sdr4["Id"].ToString();

                }
                conn.Close();

                conn.Open();
                string Room = "select Room_No from StudentData  where Enrollment_No='" + TextBox1.Text + "'";
                SqlCommand cmd5 = new SqlCommand(Room, conn);
                SqlDataReader sdr5 = cmd5.ExecuteReader();
                while (sdr5.Read())
                {
                    TextBox5.Text = sdr5["Room_No"].ToString();

                }
                conn.Close();

                conn.Open();
                string Photo = "select Photo from StudentData  where Enrollment_No='" + TextBox1.Text + "'";
                SqlCommand cmd6 = new SqlCommand(Photo, conn);
                SqlDataReader sdr6 = cmd6.ExecuteReader();
                while (sdr6.Read())
                {
                    TextBox6.Text = sdr6["Photo"].ToString();

                }
                conn.Close();

                conn.Open();
                string Sex = "select Sex from StudentData  where Enrollment_No='" + TextBox1.Text + "'";
                SqlCommand cmd7 = new SqlCommand(Sex, conn);
                SqlDataReader sdr7 = cmd7.ExecuteReader();
                while (sdr7.Read())
                {
                    TextBox7.Text = sdr7["Sex"].ToString();

                }
                conn.Close();

                conn.Open();
                string DOB = "select DOB from StudentData  where Enrollment_No='" + TextBox1.Text + "'";
                SqlCommand cmd8 = new SqlCommand(DOB, conn);
                SqlDataReader sdr8 = cmd8.ExecuteReader();
                while (sdr8.Read())
                {
                    TextBox8.Text = sdr8["DOB"].ToString();

                }
                conn.Close();

                conn.Open();
                string father = "select Father_Name from StudentData  where Enrollment_No='" + TextBox1.Text + "'";
                SqlCommand cmd9 = new SqlCommand(father, conn);
                SqlDataReader sdr9 = cmd9.ExecuteReader();
                while (sdr9.Read())
                {
                    TextBox9.Text = sdr9["Father_Name"].ToString();

                }
                conn.Close();

                conn.Open();
                string mother = "select Mother_Name from StudentData  where Enrollment_No='" + TextBox1.Text + "'";
                SqlCommand cmd10 = new SqlCommand(mother, conn);
                SqlDataReader sdr10 = cmd10.ExecuteReader();
                while (sdr10.Read())
                {
                    TextBox10.Text = sdr10["Mother_Name"].ToString();

                }
                conn.Close();

                conn.Open();
                string PA = "select Permanent_Address from StudentData  where Enrollment_No='" + TextBox1.Text + "'";
                SqlCommand cmd11 = new SqlCommand(PA, conn);
                SqlDataReader sdr11 = cmd11.ExecuteReader();
                while (sdr11.Read())
                {
                    TextBox11.Text = sdr11["Permanent_Address"].ToString();

                }
                conn.Close();

                conn.Open();
                string HPN = "select Home_Phone_No from StudentData  where Enrollment_No='" + TextBox1.Text + "'";
                SqlCommand cmd12 = new SqlCommand(HPN, conn);
                SqlDataReader sdr12 = cmd12.ExecuteReader();
                while (sdr12.Read())
                {
                    TextBox12.Text = sdr12["Home_Phone_No"].ToString();

                }
                conn.Close();

                conn.Open();
                string MN = "select MobileNo from StudentData  where Enrollment_No='" + TextBox1.Text + "'";
                SqlCommand cmd13 = new SqlCommand(MN, conn);
                SqlDataReader sdr13 = cmd13.ExecuteReader();
                while (sdr13.Read())
                {
                    TextBox13.Text = sdr13["MobileNo"].ToString();

                }
                conn.Close();

                conn.Open();
                string Faculty = "select Faculty from StudentData  where Enrollment_No='" + TextBox1.Text + "'";
                SqlCommand cmd14 = new SqlCommand(Faculty, conn);
                SqlDataReader sdr14 = cmd14.ExecuteReader();
                while (sdr14.Read())
                {
                    TextBox14.Text = sdr14["Faculty"].ToString();

                }
                conn.Close();

                conn.Open();
                string Department = "select Department from StudentData  where Enrollment_No='" + TextBox1.Text + "'";
                SqlCommand cmd15 = new SqlCommand(Department, conn);
                SqlDataReader sdr15 = cmd15.ExecuteReader();
                while (sdr15.Read())
                {
                    TextBox15.Text = sdr15["Department"].ToString();

                }
                conn.Close();


                conn.Open();
                string Fauculty_No = "select Fauculty_No from StudentData  where Enrollment_No='" + TextBox1.Text + "'";
                SqlCommand cmd16 = new SqlCommand(Fauculty_No, conn);
                SqlDataReader sdr16 = cmd16.ExecuteReader();
                while (sdr16.Read())
                {
                    TextBox16.Text = sdr16["Fauculty_No"].ToString();

                }
                conn.Close();

                conn.Open();
                string batch = "select Batch from StudentData  where Enrollment_No='" + TextBox1.Text + "'";
                SqlCommand cmd17 = new SqlCommand(batch, conn);
                SqlDataReader sdr17 = cmd17.ExecuteReader();
                while (sdr17.Read())
                {
                    TextBox17.Text = sdr17["Batch"].ToString();

                }
                conn.Close();




                conn.Open();
                string Course = "select Course from StudentData  where Enrollment_No='" + TextBox1.Text + "'";
                SqlCommand cmd18 = new SqlCommand(Course, conn);
                SqlDataReader sdr18 = cmd18.ExecuteReader();
                while (sdr18.Read())
                {
                    TextBox18.Text = sdr18["Course"].ToString();

                }
                conn.Close();

                conn.Open();
                string District = "select District from StudentData  where Enrollment_No='" + TextBox1.Text + "'";
                SqlCommand cmd19 = new SqlCommand(District, conn);
                SqlDataReader sdr19 = cmd19.ExecuteReader();
                while (sdr19.Read())
                {
                    TextBox19.Text = sdr19["District"].ToString();

                }
                conn.Close();

                conn.Open();
                string State = "select State from StudentData  where Enrollment_No='" + TextBox1.Text + "'";
                SqlCommand cmd20 = new SqlCommand(State, conn);
                SqlDataReader sdr20 = cmd20.ExecuteReader();
                while (sdr20.Read())
                {
                    TextBox20.Text = sdr20["State"].ToString();

                }
                conn.Close();

                Label1.Text = "Record of this student not deleted.";
            }
            else
            {
                Label1.Text = "Record of this student already deleted or may not be exist";
            }


        }
               
        
       
        protected void Button2_Click(object sender, EventArgs e)
        {




            try
            {
                SqlConnection conn2 = new SqlConnection(ConfigurationManager.ConnectionStrings["hRegistrationConnectionString"].ConnectionString);
                conn2.Open();
                String insertQuery = "insert into Oldboys (Name,Enrolment_No,Date,Id,Room_No,Photo,Sex,DOB,Father_Name,Mother_Name,Permanent_Address,Home_Phone_No,MobileNo,Faculty,Department,Fauculty_No,Batch,Course,District,State) values(@name,@Enrollmentno,@date,@id,@RoomNo,@photo,@sex,@dob,@fathername,@mothername,@permanentaddress,@homePhoneNo,@mobileNo,@faculty,@department,@faucultyNo,@batch,@course,@district,@state)";
                SqlCommand com = new SqlCommand(insertQuery, conn2);
                com.Parameters.AddWithValue("@name", TextBox2.Text);
                com.Parameters.AddWithValue("@Enrollmentno", TextBox1.Text);
                com.Parameters.AddWithValue("@date", TextBox3.Text);
                com.Parameters.AddWithValue("@id", TextBox4.Text);


                com.Parameters.AddWithValue("@RoomNo", TextBox5.Text);
                com.Parameters.AddWithValue("@photo", TextBox6.Text);
                com.Parameters.AddWithValue("@sex", TextBox7.Text);
                com.Parameters.AddWithValue("@dob", TextBox8.Text);
                com.Parameters.AddWithValue("@fathername", TextBox9.Text);

                com.Parameters.AddWithValue("@mothername", TextBox10.Text);
                com.Parameters.AddWithValue("@permanentaddress", TextBox11.Text);
                com.Parameters.AddWithValue("@homePhoneNo", TextBox12.Text);

                com.Parameters.AddWithValue("@mobileNo", TextBox13.Text);
                com.Parameters.AddWithValue("@faculty", TextBox14.Text);
                com.Parameters.AddWithValue("@department", TextBox15.Text);
                com.Parameters.AddWithValue("@faucultyNo", TextBox16.Text);
                com.Parameters.AddWithValue("@batch", TextBox17.Text);
                com.Parameters.AddWithValue("@course", TextBox18.Text);

                com.Parameters.AddWithValue("@district", TextBox19.Text);
                com.Parameters.AddWithValue("@state", TextBox20.Text);



                com.ExecuteNonQuery();



                conn2.Close();

            }
            catch (Exception ex)
            {
                Response.Write("Error" + ex.ToString());
            }
            Label3.Text = "Record is selected";

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["hRegistrationConnectionString"].ConnectionString);
            conn1.Open();
            String deleteQuery = " Delete  from StudentData where Enrollment_No='" + TextBox1.Text + "' ";
            SqlCommand cmd1 = new SqlCommand(deleteQuery, conn1);
            cmd1.ExecuteNonQuery();  
            conn1.Close();

            Label2.Text = "Successful deletion";

        }

        
    }
}