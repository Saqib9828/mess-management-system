<%@ Page Title="" Language="C#" MasterPageFile="~/Student_site.Master" AutoEventWireup="true" CodeBehind="DiningClose.aspx.cs" Inherits="hostel________.Student.DiningClose" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">




    <table class="style1">
        <tr>
            <td>
                Date</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Start/Close</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Close</asp:ListItem>
                    <asp:ListItem>Start</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Reason</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" 
                    Width="248px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>




</asp:Content>
