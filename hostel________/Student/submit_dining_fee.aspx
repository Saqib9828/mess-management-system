<%@ Page Title="" Language="C#" MasterPageFile="~/Student_site.Master" AutoEventWireup="true" CodeBehind="submit_dining_fee.aspx.cs" Inherits="hostel________.Student.submit_dining_fee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style7
        {
            font-size: large;
        }
        .style8
        {
            width: 100%;
            border: 2px solid #FFFFFF;
        }
        .style9
        {
            width: 198px;
        }
        .style10
        {
            width: 149px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br />
 &nbsp;<span class="style7">Enrolment No.</span>&nbsp;&nbsp;<asp:Label ID="Label1" 
        runat="server" Text="" style="font-size: medium"></asp:Label>
    &nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: 
        
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
        ID="Label5" runat="server"></asp:Label>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table class="style8" style="font-size: medium; color: #FFFFFF">
            <tr>
                <td align="right" class="style9">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style9">
                    No. of Month</td>
                <td class="style10">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style9">
                    Fee</td>
                <td class="style10">
                    <asp:Label ID="Label2" runat="server" Text="1000"></asp:Label>
&nbsp;Rs./month</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style9">
                    Total</td>
                <td class="style10">
                    <asp:Label ID="Label3" runat="server"></asp:Label>
&nbsp;Rs.</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style9">
                    &nbsp;</td>
                <td class="style10">
                   <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                       style="margin-left: 0px" Text="Pay Now" Width="116px" />
                </td>
                <td>
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
            </tr>
    </table>
        <br /><br />
</asp:Content>
