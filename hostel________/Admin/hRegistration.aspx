<%@ Page Title="Registration" Language="C#" MasterPageFile="~/admin_site.Master" AutoEventWireup="true" 
CodeBehind="hRegistration.aspx.cs" Inherits="hostel________.hRegistration" %>
<asp:Content ID="HeaderContent" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;  
       
        }
        
        .style9
        {
            height: 26px;
            width: 63px;
        }
        .style46
        {
            width: 996px;
            height: 33px;
        }
        .style47
        {
            height: 33px;
        }
        .style48
        {
            width: 996px;
            text-align: left;
            font-size: large;
            color: #CC3300;
            height: 33px;
        }
        .style87
        {
            width: 162px;
            height: 26px;
        }
        .style90
        {
            height: 26px;
        }
        .style98
        {
            height: 26px;
            width: 179px;
        }
        .style133
        {
            height: 26px;
            width: 180px;
            text-align: right;
            font-size: medium;
            color: #999966;
        }
        .style134
        {
            text-align: right;
            width: 250px;
            height: 26px;
            font-size: medium;
            color: #999966;
        }
        #Reset1
        {
            width: 88px;
        }
    </style>
 
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

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
            <td class="style48">
                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Student Details</strong></td>
            <td class="style47">
                &nbsp;</td>
        </tr>
     
    </table>
        <hr style="width: 90%; height: -12px; color: black" />
       
    <table class="style1">
        <tr>
            <td class="style134">
                EnrollNo:</td>
            <td class="style9">
                <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style87">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enrollment_No is required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style133">
                Student Password:</td>
            <td class="style98">
                <asp:TextBox ID="TextBox2" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
            </td>
            <td class="style90">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Enter UserPassword" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style134">
                Name:</td>
            <td class="style9">
                <asp:TextBox ID="TextBox3" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style87">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ErrorMessage="Course is required" ControlToValidate="TextBox3" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style133">
                Date of Joining:</td>
            <td class="style98">
                <asp:TextBox ID="TextBox4" runat="server" Width="180px" TextMode="Date"></asp:TextBox>
            </td>
            <td class="style90">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Enter Date" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style134">
                Email:</td>
            <td class="style9">
                <asp:TextBox ID="TextBox5" runat="server" Width="180px" TextMode="Email"></asp:TextBox>
            </td>
            <td class="style87">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style133">
                &nbsp;</td>
            <td class="style98">
                &nbsp;</td>
            <td class="style90">
                &nbsp;</td>
        </tr>
        </table>
    
     <br />
    <hr style="width: 90%; height: -12px; color: #000000;" />

    <br />
    <p align="center"> <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Add Student" 
                    Width="247px" BorderColor="#999999" BorderStyle="Inset" 
            Font-Bold="True" Font-Size="Large" Height="40px" />
                    </p>

&nbsp;
    <br />
<br /><br />


</asp:Content>
