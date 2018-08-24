<%@ Page Title="" Language="C#" MasterPageFile="~/munshi.Master" AutoEventWireup="true" CodeBehind="inventry_goods_add.aspx.cs" Inherits="hostel________.munsi.inventry_goods_add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h1 align="center">Add New Goods</h1>
 <table class="style1">
    <tr>
        <td>
            Goods Name</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            Unit of the Goods</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Kg</asp:ListItem>
                <asp:ListItem>Ltr</asp:ListItem>
                <asp:ListItem>Unit</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
     <tr>
        <td>
            Minimum Quantity Possible</td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
     </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Add Goods" 
                onclick="Button1_Click1" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
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
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>

</asp:Content>
