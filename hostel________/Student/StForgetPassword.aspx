<%@ Page Title="StudentForget" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StForgetPassword.aspx.cs" Inherits="hostel________.StForgetPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 189px;
        }
        .style2
        {
            text-align: right;
            width: 218px;
            font-size: medium;
        }
        .style3
        {
            width: 218px;
            font-size: medium;
        }
        .style4
        {
            width: 194px;
        }
        .style5
        {
            width: 218px;
            font-size: medium;
            height: 51px;
        }
        .style6
        {
            width: 194px;
            height: 51px;
        }
        .style7
        {
            height: 51px;
        }
        .style8
        {
            color: #FF0000;
            font-size: medium;
        }
        .style9
        {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="MainContent">
    <br />
    <br />
    <table class="style1">
        <tr>
            <td class="style2">
                Enrolment No. :</td>
            <td class="style4">
                <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
&nbsp;
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" CssClass="style9" 
                    ErrorMessage="Enter Your Enrol No." style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Date Of Birth :</td>
            <td class="style4">
                <asp:TextBox ID="TextBox2" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" CssClass="style8" ErrorMessage="Enter DOB"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Mother&#39;s Name :</td>
            <td class="style4">
                <asp:TextBox ID="TextBox3" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" CssClass="style8" 
                    ErrorMessage="Enter Mother's Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                New Password :</td>
            <td class="style4">
                <asp:TextBox ID="TextBox4" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" CssClass="style8" 
                    ErrorMessage="Enter New Password"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
&nbsp;Confirm New Password :</td>
            <td class="style4">
                <asp:TextBox ID="TextBox5" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox4" ControlToValidate="TextBox5" CssClass="style9" 
                    ErrorMessage="Enter Password as above" style="color: #FF0000"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:Button ID="Button1" runat="server" Height="29px" onclick="Button1_Click" 
                    Text="change Password" Width="116px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" width="1">
&nbsp;&nbsp;
                <asp:TextBox ID="TextBox6" runat="server" Visible="False" Width="1px"></asp:TextBox>
                <asp:TextBox ID="TextBox7" runat="server" Visible="False" Width="1px"></asp:TextBox>
            </td>
            <td class="style6">
                <asp:Label ID="Label1" runat="server" ForeColor="White" 
                    style="font-size: medium"></asp:Label>
            </td>
            <td class="style7">
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
&nbsp;<br />
    <br />
&nbsp;
</asp:Content>

