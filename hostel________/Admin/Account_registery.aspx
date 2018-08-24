<%@ Page Title="Account update" Language="C#" MasterPageFile="~/admin_site.Master" AutoEventWireup="true" CodeBehind="Account_registery.aspx.cs" Inherits="hostel________.Admin.Account_registery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style45
        {
            text-align: right;
            width: 206px;
            height: 41px;
            font-size: medium;
            color: #999966;
        }
        .style47
        {
            width: 143px;
            height: 41px;
        }
        .style3
        {
            text-align: right;
            width: 206px;
            height: 49px;
            font-size: medium;
            color: #999966;
        }
        .style23
        {
            width: 143px;
            height: 49px;
        }
        .style35
        {
            width: 1px;
            height: 49px;
        }
        .style51
        {
            text-align: right;
            width: 206px;
            height: 26px;
        }
        .style53
        {
            text-align: left;
            height: 26px;
        }
        .style54
        {
            height: 26px;
        }
        .style55
        {
            width: 63px;
            height: 26px;
        }
        .style56
        {
            width: 63px;
            height: 49px;
        }
        .style57
        {
            text-align: right;
            width: 110px;
            height: 49px;
        }
        .style58
        {
            text-align: left;
            height: 49px;
        }
        .style62
        {
            width: 1px;
            height: 40px;
        }
        .style63
        {
            text-align: right;
            width: 110px;
            height: 40px;
        }
        .style64
        {
            width: 63px;
            height: 40px;
        }
        .style65
        {
            text-align: left;
            height: 40px;
        }
        .style66
        {
            width: 63px;
            height: 41px;
        }
        .style67
        {
            text-align: right;
            width: 110px;
            height: 41px;
            font-size: medium;
            color: #999966;
        }
        .style68
        {
            width: 1px;
            height: 41px;
        }
        .style69
        {
            text-align: left;
            height: 41px;
        }
        .style70
        {
            text-align: right;
            width: 206px;
            height: 40px;
            font-size: medium;
            color: #999966;
        }
        .style71
        {
            height: 26px;
            width: 110px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style1">
        <tr>
            <td class="style70">
                EnrollmentNo:</td>
            <td class="style64">
                <asp:TextBox ID="TextBoxEnNo" runat="server" Width="180px" Height="24px"></asp:TextBox>
            </td>
            <td class="style65">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                    ControlToValidate="TextBoxEnNo" ErrorMessage="Enrollment_No is required" 
                    ForeColor="Red" style="font-size: medium"></asp:RequiredFieldValidator>
            </td>
            <td class="style63">
                &nbsp;</td>
            <td class="style62">
                &nbsp;</td>
            <td class="style65">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style45">
                AdmissionFee:<br />
                or ContinuationFee:</td>
            <td class="style66">
                <asp:TextBox ID="TextBoxMF" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style47">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                    ErrorMessage="Enter Amount" ControlToValidate="TextBoxMF" ForeColor="Red" 
                    style="font-size: medium"></asp:RequiredFieldValidator>
            </td>
            <td class="style67">
                RecieptNo:</td>
            <td class="style68">
                <asp:TextBox ID="TextBoxRNo1" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style69">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" 
                    ControlToValidate="TextBoxRNo1" ErrorMessage="Enter MessFee Reciep_No" 
                    ForeColor="Red" style="font-size: medium"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style45">
                HostelDues:</td>
            <td class="style66">
                <asp:TextBox ID="TextBoxHD" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style47">
                &nbsp;</td>
            <td class="style67">
                RecieptNo:</td>
            <td class="style68">
                <asp:TextBox ID="TextBoxRNo2" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style69">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Paid Fee</td>
            <td class="style56">
                <asp:RadioButtonList ID="RadioButtonListPF" runat="server" Width="180px">
                    <asp:ListItem>Paid</asp:ListItem>
                    <asp:ListItem>Not Paid</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style23">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ErrorMessage="Fees paid or not" ForeColor="Red" 
                    ControlToValidate="RadioButtonListPF" style="font-size: medium"></asp:RequiredFieldValidator>
            </td>
            <td class="style57">
                &nbsp;</td>
            <td class="style35">
                &nbsp;</td>
            <td class="style58">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style51">
                &nbsp;</td>
            <td class="style55">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="SUBMIT" 
                    Width="102px" />
            </td>
            <td class="style53">
                &nbsp;</td>
            <td class="style71">
                <asp:Label ID="Label1" runat="server" ForeColor="Black" Visible="False"></asp:Label>
            </td>
            <td class="style54">
            </td>
            <td class="style54">
            </td>
        </tr>
    </table>
</asp:Content>
