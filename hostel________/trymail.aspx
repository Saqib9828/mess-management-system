<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="trymail.aspx.cs" Inherits="hostel________.trymail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

Add




    <table class="style1">
        <tr>
            <td>
                Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Password</td>
            <td style="font-weight: 700">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="font-weight: 700">
                <asp:Button ID="Button1" runat="server" OnClick ="Button1_Click"  Text="Add" />

               
            </td>
        </tr>
    </table>




</asp:Content>
