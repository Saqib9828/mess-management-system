<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="contact_us.aspx.cs" Inherits="hostel________.Admin.contact_us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 134px;
        }
        .style2
        {
            text-align: left;
            width: 262px;
        }
        .style3
        {
            width: 262px;
        }
        .style4
        {
            text-align: left;
        }
        .style5
        {
            width: 262px;
            height: 26px;
        }
        .style6
        {
            height: 26px;
        }
        .style7
        {
            width: 262px;
            height: 19px;
        }
        .style8
        {
            height: 19px;
        }
        .style9
        {
            text-decoration: underline;
        }
        .style10
        {
            width: 100%;
        }
        .style11
        {
            width: 177px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<p>fjkdfjkldsjfkldjfkldjfdlfldsfkklfjfjdkf<br /><br />fjkdfjkldsjfkldjfkldjfdlfldsfkklfjfjdkfhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh<br /><br /><br /></p>
   <br /><div class="contact" style="float: left; width: 25%; height: 450px">
   <asp:Image ID="Image1" runat="server" ImageUrl="~/images/hall_map.png" Width="96%" Height="400px"/><br />
       <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://www.google.co.in/maps/@27.9211334,78.0724056,16z">Browse Map</asp:HyperLink>
   </div>
   <div class="feedback" style="float: left; width: 50%; height: 450px">
    <table class="style1">
        <tr>
            <td class="style2">
                ENROLMENT_NO. :</td>
            <td class="style4">
                FULL NAME:</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:TextBox ID="TextBoxEn" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="TextBoxName" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Enter Enrolmen_No. " ControlToValidate="TextBoxEn"></asp:RequiredFieldValidator>
            </td>
            <td class="style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Name is Required" ControlToValidate="TextBoxName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                E-MAIL :</td>
            <td>
                CONTACT_No. :</td>
        </tr>
        <tr>
            <td class="style5">
                <asp:TextBox ID="TextBoxEmail" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td class="style6">
                <asp:TextBox ID="TextBoxC_No" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Enter Email " ControlToValidate="TextBoxEmail"></asp:RequiredFieldValidator>
&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="Enter Valid Email..." ControlToValidate="TextBoxEmail" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="Enter Contact No." ControlToValidate="TextBoxC_No"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                MESSAGE :</td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
       <asp:TextBox ID="TextBoxMessage" runat="server" Height="198px" TextMode="MultiLine" 
           Width="470px"></asp:TextBox><br /><asp:RequiredFieldValidator ID="RequiredFieldValidator5"
               runat="server" ErrorMessage="Plz.. Enter Message" 
           ControlToValidate="TextBoxMessage"></asp:RequiredFieldValidator>

      
       <table class="style10">
           <tr>
               <td class="style11">
                   <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                       style="margin-left: 0px" Text="SUBMIT" Width="116px" />
               </td>
               <td>
                   <asp:Label ID="Label1" runat="server"></asp:Label>
               </td>
           </tr>
       </table>

    </div>
    <div class="map" style="width: 25%; height: 450px; float: left">
    <h1>Contact By Mail</h1>
    <p>Sir Syed North,<br />
       AMU ALIGARH PIN No.(202002)<br />
       UTTAR PRADESH INDIA... <br /><br />
       TelPh_No. :+91-571- 2700920  <br />
       Fax       :+91-571- 2700916 <br /><br />
       E-mail    :sakibfe<span class="style9">arless99@gmail.com </span>

    </p>
    </div>
</asp:Content>
