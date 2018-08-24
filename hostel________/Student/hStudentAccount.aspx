<%@ Page Title="Account" Language="C#" MasterPageFile="~/Student_site.Master" AutoEventWireup="true" CodeBehind="hStudentAccount.aspx.cs" Inherits="hostel________.Student.hStudentAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            
        }
        .style2
        {
            width: 268px;
            height: 50px;
        }
        .style8
        {
            width: 145px;
            height: 50px;
        }
        .style9
        {
            height: 50px;
        }
        .style10
        {
            width: 268px;
            font-size: large;
            color: #999966;
            text-align: right;
            height: 30px;
        }
        .style11
        {
            width: 145px;
            height: 30px;
        }
        .style12
        {
            height: 30px;
        }
        .style13
        {
            width: 268px;
            font-size: large;
            color: #999966;
            text-align: right;
            height: 28px;
        }
        .style14
        {
            width: 145px;
            height: 28px;
        }
        .style15
        {
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style1">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label5" runat="server" 
                    style="font-size: x-large; color: #999966; margin-bottom: 3px;" Width="92px"></asp:Label>
            </td>
            <td class="style8">
                </td>
            <td class="style9">
                </td>
        </tr>
        <tr>
            <td class="style10">
                Admission Fee:</td>
            <td class="style11">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" 
                    style="font-size: medium; color: #999966; text-align: center;"></asp:Label>
            </td>
            <td class="style12">
                </td>
        </tr>
        <tr>
            <td class="style10">
                Admissionfee RecieptNo:</td>
            <td class="style11">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" style="font-size: medium; color: #999966"></asp:Label>
            </td>
            <td class="style12">
                </td>
        </tr>
        <tr>
            <td class="style10">
                Hostel_Dues:</td>
            <td class="style11">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" style="color: #999966; font-size: medium"></asp:Label>
            </td>
            <td class="style12">
                </td>
        </tr>
        <tr>
            <td class="style10">
                Hosteldues RecieptNo:</td>
            <td class="style11">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" style="color: #999966; font-size: medium"></asp:Label>
            </td>
            <td class="style12">
                </td>
        </tr>
        <tr>
            <td class="style13">
                Paid_Fee:</td>
            <td class="style14">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" style="color: #999966; font-size: medium"></asp:Label>
            </td>
            <td class="style15">
                </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
