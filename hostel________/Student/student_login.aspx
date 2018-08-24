<%@ Page Title="Student Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="student_login.aspx.cs" Inherits="hostel________.Student.student_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    
    <style type="text/css">
 
        .style4
        {
            height: 18px;
        }
        .style5
        {
            height: 18px;
            width: 91px;
        }
        .style9
        {
            text-align: right;
            font-family: 'Times New Roman', Times, serif;
            font-size: medium;
            color: #999966;
            width: 91px;
            height: 40px;
        }
        .style10
        {
            height: 40px;
        }
        .style11
        {
            height: 40px;
            width: 137px;
        }
        .style12
        {
            height: 18px;
            width: 137px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <fieldset style="width: 60%; height: 100%; margin-left: 20%; margin-right: 20%; margin-top: 5%; font-family: 'Times New Roman', Times, serif; font-size: medium;" >
        <legend style="font-family: 'Times New Roman', Times, serif; font-size: xx-large; color: #0066CC; font-weight: bold">Student Login</legend>
    
        <asp:Image ID="Image6" runat="server" Height="170px" ImageAlign="Right" 
            ImageUrl="~/images/login_icon.png" Width="218px" style="text-align: right" />
        Use a valid username and<br/>password to gain access<br/>to the user back-end.<br /><br />
        <br />
    

    <table align="left" cellpadding="1px" style="width: 443px">
        <tr>
            <td class="style9" 
                
                style="font-size: medium; font-weight: bold; font-family: 'Times New Roman', Times, serif">
                User Name:</td>
            <td class="style11">
                <asp:TextBox ID="TextBoxUN" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: medium" 
                class="style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxUN" ErrorMessage="Requred User Name " 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style9" 
                
                style="font-size: medium; font-weight: bold; font-family: 'Times New Roman', Times, serif">
                Password:</td>
            <td class="style11">
                <asp:TextBox ID="TextBoxPass" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
            </td>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: medium" 
                class="style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxPass" ErrorMessage="Please Enter Password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                </td>
            <td class="style12">
                <asp:Button ID="Button1" runat="server" Text="Login" Width="90px" 
                    onclick="Button1_Click" />
            </td>
            <td class="style4">
                &nbsp;
                <asp:HyperLink ID="HyperLink13" runat="server" 
                    NavigateUrl="~/Student/StForgetPassword.aspx">Forget Password</asp:HyperLink>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style12">
                <asp:Label ID="Label1" runat="server" ForeColor="Red" 
                    style="font-size: medium"></asp:Label>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
    </table>
    </fieldset>
</asp:Content>
