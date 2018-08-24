<%@ Page Title="Scanned Notice" Language="C#" MasterPageFile="~/admin_site.Master" AutoEventWireup="true" CodeBehind="Post_Notice.aspx.cs" Inherits="hostel________.Admin.Post_Notice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            text-align: center;
            color: #FF3300;
        }
        .style2
        {
            font-size: x-large;
        }
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 295px;
        }
        .style9
        {
            width: 295px;
            height: 40px;
        }
        .style10
        {
            height: 40px;
        }
        .style11
        {
            width: 295px;
            height: 40px;
            font-size: medium;
            text-align: right;
            color: #999966;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p class="style1">
        <strong>
        <br class="style2" />
        </strong><span class="style2"><strong style="color: #993300">Scanned Notice Upload 
        Page</strong></span></p>
    <br />
    <table class="style3">
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                Notice Id:</td>
            <td class="style10">
                <asp:TextBox ID="TextBox2" runat="server" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9" style="font-size: medium; text-align: right; color: #999966">
                Notice:</td>
            <td class="style10">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="225px" />
            </td>
        </tr>
        <tr>
            <td class="style9" style="font-size: medium; text-align: right; color: #999966">
                Notice Date:</td>
            <td class="style10">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Date" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
            </td>
            <td class="style10">
                <asp:Button ID="Button1" runat="server" Text="Post" Width="84px" 
                    onclick="Button1_Click" />
            &nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" ForeColor="White" 
                    style="font-size: medium"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
</asp:Content>
