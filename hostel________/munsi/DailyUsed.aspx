<%@ Page Title="" Language="C#" MasterPageFile="~/munshi.Master" AutoEventWireup="true" CodeBehind="DailyUsed.aspx.cs" Inherits="hostel________.munsi.DailyUsed" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 282px;
        }
        .style3
        {
            width: 181px;
        }
        .style5
        {
            width: 208px;
        }
        .style6
        {
            width: 189px;
        }
        .style7
        {
            width: 162px;
        }
        .style8
        {
            width: 195px;
        }
        .style9
        {
            width: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<br />
Date : 
    <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>


    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="Select Date" Font-Bold="True" 
        ForeColor="Red"></asp:RequiredFieldValidator>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      

    <asp:Button ID="Button1" runat="server" Text="Add" Font-Bold="True" 
        Height="24px" Width="113px" onclick="Button1_Click" />

<br /> <br />
    <hr />

  

    <table class="style1">
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style2">
                Good s Name</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6" 
                
                style="font-family: 'Courier New', Courier, monospace; font-size: large; font-weight: bold; font-style: normal; font-variant: normal; color: #FFFFCC; text-transform: none">
                Breakfast</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style2">
                Type</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style2">
                Quantiy</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
            <td>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Kg</asp:ListItem>
                <asp:ListItem>Ltr</asp:ListItem>
                <asp:ListItem>Unit</asp:ListItem>
            </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        </table>

        <hr />
         <table class="style1">
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                Good s Name</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="22px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style8" 
                
                style="font-family: 'Courier New', Courier, monospace; font-size: large; font-weight: bold; font-style: normal; font-variant: normal; color: #FFFFCC; text-transform: none">
                Lunch</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                Type</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                Quantiy</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>Kg</asp:ListItem>
                <asp:ListItem>Ltr</asp:ListItem>
                <asp:ListItem>Unit</asp:ListItem>
            </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
        <hr />
         <table class="style1">
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                Good s Name</td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style9" 
                
                style="font-family: 'Courier New', Courier, monospace; font-size: large; font-weight: bold; font-style: normal; font-variant: normal; color: #FFFFCC; text-transform: none">
                Dinner</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                Type</td>
            <td>
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                Quantiy</td>
            <td>
                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
            </td>
            <td>
            <asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem>Kg</asp:ListItem>
                <asp:ListItem>Ltr</asp:ListItem>
                <asp:ListItem>Unit</asp:ListItem>
            </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        </table>

        <hr />
        <br />


</asp:Content>
