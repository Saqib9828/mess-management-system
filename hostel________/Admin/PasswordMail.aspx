<%@ Page Title="" Language="C#" MasterPageFile="~/admin_site.Master" AutoEventWireup="true" CodeBehind="PasswordMail.aspx.cs" Inherits="hostel________.Admin.PasswordMail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 19px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h1 > Students registration successful. </h1>

<h1 align="center" style="font-family: 'Courier New', Courier, monospace; font-size: large; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none"> Now send student's password to his Email</h1>

<br />

    <table class="style1">
        <tr>
            <td align="right" 
                style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" 
                style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                Student&#39;s Email :</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2" 
                style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                Subject :</td>
            <td class="style2">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td class="style2">
                </td>
        </tr>
        <tr>
            <td align="right" 
                style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" 
                style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                Password :</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="71px" TextMode="MultiLine" 
                    Width="195px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" 
                style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="White"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" 
                style="font-family: 'Courier New', Courier, monospace; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #FFFFCC">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="29px" 
                    onclick="Button1_Click" Text="Send" Width="75px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
