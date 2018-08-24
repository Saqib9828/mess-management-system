<%@ Page Title="" Language="C#" MasterPageFile="~/Student_site.Master" AutoEventWireup="true" CodeBehind="StudentFormFill.aspx.cs" Inherits="hostel________.Student.StudentFormFill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .style1
        {
            width: 100%;  
       
        }
        
        .style134
        {
            text-align: right;
            width: 250px;
            height: 26px;
            font-size: medium;
            color: #999966;
        }
                
        .style9
        {
            height: 26px;
            width: 63px;
        }
        .style87
        {
            width: 162px;
            height: 26px;
        }
        .style133
        {
            height: 26px;
            width: 180px;
            text-align: right;
            font-size: medium;
            color: #999966;
        }
        .style98
        {
            height: 26px;
            width: 179px;
        }
        .style96
        {
            width: 63px;
            text-align: left;
        }
        .style64
        {
            text-align: left;
            width: 162px;
        }
        .style100
        {
            width: 179px;
            text-align: left;
        }
        .style61
        {
            text-align: left;
            width: 251px;
            font-size: large;
            color: #CC3300;
        }
        .style174
        {
            height: 26px;
            width: 82px;
        }
        .style159
        {
            text-align: right;
            width: 250px;
            height: 38px;
            font-size: medium;
            color: #999966;
        }
        .style160
        {
            width: 63px;
            height: 38px;
        }
        .style173
        {
            text-align: left;
            width: 162px;
            height: 38px;
        }
        .style166
        {
            height: 38px;
            width: 180px;
            text-align: right;
        }
        .style161
        {
            width: 179px;
            height: 38px;
        }
        .style175
        {
            width: 82px;
            height: 38px;
        }
        .style157
        {
            width: 162px;
            height: 38px;
        }
        .style158
        {
            height: 38px;
            width: 180px;
            text-align: right;
            font-size: medium;
            color: #999966;
        }
        .style153
        {
            text-align: right;
            width: 250px;
            height: 28px;
            font-size: medium;
            color: #999966;
        }
        .style136
        {
            width: 63px;
            text-align: left;
            height: 28px;
        }
        .style154
        {
            text-align: left;
            width: 162px;
            height: 28px;
        }
        .style137
        {
            width: 180px;
            text-align: left;
            height: 28px;
        }
        .style138
        {
            width: 179px;
            text-align: left;
            height: 28px;
        }
        .style176
        {
            width: 82px;
            text-align: left;
            height: 28px;
        }
        .style142
        {
            text-align: right;
            width: 250px;
            height: 52px;
            font-size: medium;
            color: #999966;
        }
        .style143
        {
            width: 63px;
            text-align: left;
            height: 52px;
        }
        .style144
        {
            text-align: left;
            width: 162px;
            height: 52px;
        }
        .style145
        {
            width: 180px;
            text-align: left;
            height: 52px;
        }
        .style146
        {
            width: 179px;
            text-align: left;
            height: 52px;
        }
        .style177
        {
            width: 82px;
            text-align: left;
            height: 52px;
        }
        .style180
        {
            text-align: right;
            width: 250px;
            height: 36px;
            font-size: medium;
            color: #999966;
        }
        .style148
        {
            width: 63px;
            text-align: left;
            height: 36px;
        }
        .style181
        {
            text-align: left;
            width: 162px;
            height: 36px;
        }
        .style182
        {
            height: 36px;
            width: 180px;
            text-align: right;
            font-size: medium;
            color: #999966;
        }
        .style151
        {
            width: 179px;
            text-align: left;
            height: 36px;
        }
        .style178
        {
            width: 82px;
            text-align: left;
            height: 36px;
        }
        .style58
        {
            width: 180px;
            text-align: left;
        }
        .style90
        {
            height: 26px;
        }
        .style93
        {
            text-align: left;
            width: 162px;
            height: 26px;
        }
        .style97
        {
            height: 26px;
            width: 180px;
            text-align: right;
        }
        .style135
        {
            height: 26px;
            width: 179px;
            font-size: medium;
        }
        .style127
        {
            text-align: right;
            width: 250px;
            height: 30px;
            font-size: medium;
            color: #999966;
        }
        .style75
        {
            width: 63px;
            height: 30px;
        }
        .style73
        {
            text-align: left;
            width: 162px;
            height: 30px;
        }
        .style77
        {
            width: 180px;
            height: 30px;
        }
        .style99
        {
            width: 179px;
            height: 30px;
        }
        .style79
        {
            height: 30px;
        }
        .style95
        {
            width: 250px;
            text-align: left;
        }
        .style130
        {
            width: 180px;
            text-align: left;
            color: #000000;
            font-size: medium;
        }
        .style41
        {
            text-align: left;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


<table class="style1">
        <tr>
            <td class="style46">
                <asp:Label ID="Label1" runat="server" 
                    style="font-size: medium; color: #FFFFFF;" ForeColor="White"></asp:Label>
            </td>
            <td class="style47">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td class="style61">
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Personal Details</strong></td>
            <td class="style47">
                &nbsp;</td>
        </tr>
     
    </table>
        <hr style="width: 90%; height: -12px; color: black" />
       
   

    <br />
    <table class="style1">
        <tr>
            <td class="style134">
                FullName:</td>
            <td class="style9">
                <asp:TextBox ID="TextBox14" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style87">
                &nbsp;</td>
            <td class="style133">
                Gender:</td>
            <td class="style98">
                <asp:RadioButtonList ID="RadioButtonListSex" runat="server" Width="180px" 
                    Height="22px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style174">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" 
                    ControlToValidate="RadioButtonListSex" ErrorMessage="Require gender" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style134">
                Father&#39;sName::</td>
            <td class="style9">
                <asp:TextBox ID="TextBox3" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style87">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Enter Father's name" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style133">
                Occuption:</td>
            <td class="style98">
                <asp:TextBox ID="TextBox4" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style174">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Enter father's Occuption" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style159">
                Mother&#39;sName:</td>
            <td class="style160">
                <asp:TextBox ID="TextBox5" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style173">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Enter Mother's name" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style166">
                </td>
            <td class="style161">
                </td>
            <td class="style175">
                </td>
        </tr>
        <tr>
            <td class="style159">
                Parent&#39;s PhoneNo:</td>
            <td class="style160">
                <asp:TextBox ID="TextBox6" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style157">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="Enter Parent's Contact_No" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style166">
                </td>
            <td class="style161">
                </td>
            <td class="style175">
                </td>
        </tr>
        <tr>
            <td class="style159">
                Date of Birth:</td>
            <td class="style160">
                <asp:TextBox ID="TextBox7" runat="server" Width="180px" TextMode="Date"></asp:TextBox>
            </td>
            <td class="style157">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" 
                    ErrorMessage="Enter DOB " ControlToValidate="TextBox7" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style158">
                Photo:</td>
            <td class="style161">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="180px" />
                </td>
            <td class="style175">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" 
                    ControlToValidate="FileUpload1" ErrorMessage="image is required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="style134">
                MobileNo:</td>
            <td class="style9">
                <asp:TextBox ID="TextBox8" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style87">
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator42" runat="server" 
                    ControlToValidate="TextBox8" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style133">
                &nbsp;</td>
            <td class="style98">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style153">
                &nbsp;Special Catagory</td>
            <td class="style136">
                <asp:TextBox ID="TextBox9" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style154">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator41" runat="server" 
                    ControlToValidate="TextBox9" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            <td class="style137">
                </td>
            <td class="style138">
                </td>
            <td class="style176">
                </td>
        </tr>
        <tr>
            <td class="style142">
                PermanentAddress:</td>
            <td class="style143"><asp:TextBox ID="TextBox10" runat="server" Width="180px" Height="60px" 
                    TextMode="MultiLine"></asp:TextBox>
                
            </td>
            <td class="style144">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="TextBox10" ErrorMessage="Address is required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style145">
                </td>
            <td class="style146">
                </td>
            <td class="style177">
                </td>
        </tr>
        <tr>
            <td class="style180">
                District:</td>
            <td class="style148">
                <asp:TextBox ID="TextBox11" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style181">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="TextBox11" ErrorMessage="Address is required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style182">
                State:</td>
            <td class="style151">
                <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style178">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator38" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter State" style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style61">
                &nbsp;</td>
            <td class="style96">
                &nbsp;</td>
            <td class="style64">
                &nbsp;</td>
            <td class="style58">
                &nbsp;</td>
            <td class="style100">
                &nbsp;</td>
           
                &nbsp;</td>
        </tr>
    </table>


    <table>
     <td class="style61">
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Academic Details</strong>
                </td>
      </table>
     <hr style="width: 90%; height: -12px; color: black" />
   
    <table class="style1">
        <tr>
            <td class="style134">
                Faculty:</td>
            <td class="style9">
                <asp:DropDownList ID="DropDownList2" runat="server" Width="180px" 
                    AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Faculty" 
                    DataValueField="Faculty">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:hRegistrationConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [Faculty] FROM [Academic]">
                </asp:SqlDataSource>
            </td>
            <td class="style87">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ErrorMessage="FacultyNo. is required" ControlToValidate="DropDownList2" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style133">
                Select Batch</td>
            <td class="style98">
                <asp:DropDownList ID="DropDownList5" runat="server" Width="180px">
                    <asp:ListItem>Select year</asp:ListItem>
                    <asp:ListItem>2018</asp:ListItem>
                    <asp:ListItem>2019</asp:ListItem>
                    <asp:ListItem>2020</asp:ListItem>
                    <asp:ListItem>2021</asp:ListItem>
                    <asp:ListItem>2022</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style90">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                    ControlToValidate="DropDownList5" ErrorMessage="Enter Date" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style134">
                Department:</td>
            <td class="style9">
                <asp:DropDownList ID="DropDownList3" runat="server" Width="180px" 
                    AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Department" 
                    DataValueField="Department">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:hRegistrationConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [Department] FROM [Academic] WHERE ([Faculty] = @Faculty)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="Faculty" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="style93">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" 
                    ControlToValidate="DropDownList3" ErrorMessage="Select Department_Name" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style133">
                Hostel</td>
            <td class="style98">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>S.M.E. (Lower)</asp:ListItem>
                    <asp:ListItem>S.M.E. (Upper)</asp:ListItem>
                    <asp:ListItem>S.M.N. &quot;A&quot;</asp:ListItem>
                    <asp:ListItem>S.M.N. &quot;B&quot;</asp:ListItem>
                    <asp:ListItem>Osmania (Lower)</asp:ListItem>
                    <asp:ListItem>Osmania (Upper)</asp:ListItem>
                    <asp:ListItem>Central (Lower)</asp:ListItem>
                    <asp:ListItem>Central (Upper)</asp:ListItem>
                    <asp:ListItem>NA</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style90">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator39" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="Hostel" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style134">
                Course:</td>
            <td class="style9">
                <asp:DropDownList ID="DropDownList4" runat="server" Width="180px" 
                    AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="Course" 
                    DataValueField="Course">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:hRegistrationConnectionString %>" 
                    SelectCommand="SELECT [Course] FROM [Academic] WHERE ([Department] = @Department)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList3" Name="Department" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="style87">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" 
                    ControlToValidate="DropDownList4" ErrorMessage="Course is required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style97" style="color: #808000">
                Room No:</td>
            <td class="style135">
                <asp:TextBox ID="TextBox13" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style90">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox13" ErrorMessage="Enter RoomNo." ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style134">
                Semester:</td>
            <td class="style9">
                <asp:TextBox ID="TextBox15" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style87">
                &nbsp;</td>
            <td class="style97">
            </td>
            <td class="style98">
            </td>
            <td class="style90">
            </td>
        </tr>
        <tr>
            <td class="style127">
                FaucultyNo::</td>
            <td class="style75">
                <asp:TextBox ID="TextBox12" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style73">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator40" runat="server" 
                    ControlToValidate="TextBox12" ErrorMessage="Faculty Number" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style77">
                &nbsp;</td>
            <td class="style99">
            </td>
            <td class="style79">
            </td>
        </tr>
        <tr>
            <td class="style95">
                &nbsp;</td>
            <td class="style96">
                &nbsp;</td>
            <td class="style64">
                &nbsp;</td>
            <td class="style130">
                &nbsp;</td>
            <td class="style100">
                &nbsp;</td>
            <td class="style41">
                &nbsp;</td>
        </tr>
        </table>
    
     <hr style="width: 90%; height: -12px; color: black" />
     <br />
    <p align="center"><asp:Button ID="Button2" runat="server" onclick="Button1_Click" Text="Update Profile" 
                    Width="247px" BorderColor="#999999" BorderStyle="Inset" 
            Font-Bold="True" Font-Size="Large" Height="40px" />
        </p>            

        <br /> <br />
</asp:Content>
