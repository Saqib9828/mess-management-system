<%@ Page Title="Provost login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="provost_login.aspx.cs" Inherits="hostel________.provost.provost_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style4
        {
            height: 18px;
        }
        .style5
        {
            text-align: right;
            font-family: 'Times New Roman', Times, serif;
            font-size: medium;
            color: #999966;
            height: 27px;
        }
        .style6
        {
            height: 27px;
        }
        .style7
        {
            text-align: right;
            font-family: 'Times New Roman', Times, serif;
            font-size: medium;
            color: #999966;
            height: 19px;
        }
        .style8
        {
            height: 19px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 
      <fieldset style="width: 60%; height: 100%; margin-left: 20%; margin-right: 20%; margin-top: 5%; font-family: 'Times New Roman', Times, serif; font-size: medium;" >
        <legend style="font-family: 'Times New Roman', Times, serif; font-size: xx-large; color: #0066CC; font-weight: bold">Provost Login</legend>
    
        <asp:Image ID="Image6" runat="server" Height="170px" ImageAlign="Right" 
            ImageUrl="~/images/provost_login.png" Width="218px" style="text-align: right" />
        Use a valid username and<br/>password to gain access<br/>to the provost back-end.<br /><br />
        <br />
  

    <table align="left" cellpadding="1px" style="height: 144px; width: 426px">
        <tr>
            <td class="style5" 
                
                style="font-size: medium; font-weight: bold; font-family: 'Times New Roman', Times, serif">
                User Name:</td>
            <td class="style6">
                <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: medium" 
                class="style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Requred User Name " 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7" 
                
                style="font-size: medium; font-weight: bold; font-family: 'Times New Roman', Times, serif">
                Password:</td>
            <td class="style8">
                <asp:TextBox ID="TextBox2" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
            </td>
            <td style="font-family: 'Times New Roman', Times, serif; font-size: medium" 
                class="style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Please Enter Password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                </td>
            <td class="style4">
                <asp:Button ID="Button1" runat="server" Text="Login" Width="90px" 
                    onclick="Button1_Click" />
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label1" runat="server" ForeColor="Red" 
                    style="font-size: medium"></asp:Label>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
    </table></fieldset>
</asp:Content>
