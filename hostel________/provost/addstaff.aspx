<%@ Page Title="" Language="C#" MasterPageFile="~/Provost.Master" AutoEventWireup="true" CodeBehind="addstaff.aspx.cs" Inherits="hostel________.provost.addstaff" %>
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
            Name</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
        <td>
            Username&nbsp;
        </td>
        <td>
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            DOB</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
        <td>
            Password</td>
        <td>
            <asp:TextBox ID="TextBox8" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            Designation</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
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
            DOJ</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox>
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
            Mobile No.</td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
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
            Address</td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine"></asp:TextBox>
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
            <asp:Button ID="Button1" runat="server" Text="Add Staff" 
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
