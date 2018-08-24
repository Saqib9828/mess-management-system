<%@ Page Title="Admin Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="admin_login.aspx.cs" Inherits="hostel________.Admin.admin_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">


        .style5
    {
        height: 18px;
        width: 120px;
    }
        .style4
        {
            height: 18px;
        }
        .style6
        {
            text-align: right;
            font-family: 'Times New Roman', Times, serif;
            font-size: medium;
            color: #999966;
            width: 120px;
            height: 40px;
        }
        .style7
        {
            height: 40px;
        }
        .style8
        {
            text-align: right;
            font-family: 'Times New Roman', Times, serif;
            font-size: medium;
            color: #999966;
            width: 120px;
            height: 37px;
        }
        .style9
        {
            height: 37px;
        }
        .style10
        {
            height: 37px;
            width: 120px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 
    <fieldset style="width: 60%; height: 100%; margin-left: 20%; margin-right: 20%; margin-top: 5%; font-family: 'Times New Roman', Times, serif; font-size: medium;" >
        <legend style="font-family: 'Times New Roman', Times, serif; font-size: xx-large; color: #0066CC; font-weight: bold">
            Staff Login</legend>
    
        <asp:Image ID="Image6" runat="server" Height="170px" ImageAlign="Right" 
            ImageUrl="~/images/adminl2.png" Width="218px" style="text-align: right" />
        Use a valid username and<br/>password to gain access<br/>to the administrator back-end.<br /><br />
        <br />
    <table align="left" 
        style="width: 489px; height: 114px; float: left;">
        <tr>
         <td class="style6" 
                
                style="font-size: medium; font-weight: bold; font-family: 'Times New Roman', Times, serif" 
                align="left">
                User Name:</td>
            <td class="style7">
                <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: medium" 
                class="style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Requred User Name " 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style8" 
                
                style="font-size: medium; font-weight: bold; font-family: 'Times New Roman', Times, serif" 
                align="left">
                Password:</td>
            <td class="style9">
                <asp:TextBox ID="TextBox2" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
            </td>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: medium" 
                class="style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Please Enter Password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style10" align="left">
                </td>
            <td class="style9">
                <asp:Button ID="Button1" runat="server" Text="Login" Width="85px" 
                    onclick="Button1_Click1" Height="27px" />
                &nbsp;&nbsp;&nbsp;
                </td>
            <td class="style9">
                </td>
        </tr>
        <tr>
            <td class="style5" align="left">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label1" runat="server" ForeColor="Red" 
                    style="font-size: medium"></asp:Label>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
    </table>
    </fieldset>

     
</asp:Content>
