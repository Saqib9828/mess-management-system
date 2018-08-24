<%@ Page Title="" Language="C#" MasterPageFile="~/Student_site.Master" AutoEventWireup="true" CodeBehind="StudentChangePass.aspx.cs" Inherits="hostel________.Student.StudentChangePass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
<style type="text/css">
    .style1
    {
        width: 99%;
         
       
        margin-bottom: 0px;
        height: 212px;
    }
    .style2
    {
        width: 25%;
     
    }
    .style3
    {
        width: 70%;
    }

    .style5
    {
        width: 27%;
      
        height: 21px;
    }
    .style6
    {
        width: 70%;
        height: 21px;
    }

        .style8
        {
        width: 27%;
        text-align: right;
        font-size: medium;
    }
        .style9
        {
            width: 27%;
            text-align: right;
            font-size: medium;
            height: 26px;
        }
        .style10
        {
            width: 70%;
            height: 26px;
        }

    .style11
    {
        width: 27%;
    }

    .b
    {
        width: 645px;
    }

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
  
    
 <asp:TextBox ID="TextBox1" runat="server" Height="16px" Visible="False" 
        Width="16px"></asp:TextBox><br />
        

        <div class="b" >

        

    <asp:Label ID="Label1" runat="server" 
        Font-Names="Arial Rounded MT Bold" Font-Size="X-Large" 
        ForeColor="Black" style="color: #FFFFFF"> </asp:Label>

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            
        </div>
        <br /> 

        <fieldset style="width: 698px; height: 300px; margin-left: 94px; margin-top: 24px; margin-bottom: 50px;">
            <legend style="font-family: 'times New Roman', Times, serif; font-size: large">Change Password</legend>
            <br />
            <table class="style1">
    <tr>
        <td class="style5">
            </td>
        <td class="style6">
            </td>
       
    </tr>
    <tr>
        <td class="style8">Enrollment no</td>
        <td class="style3">
            <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 0px" 
                Width="180px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td></tr>
   <tr>
        <td class="style8">Old Password&nbsp;</td>
        <td class="style3">
            <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 0px" 
                TextMode="Password" Width="180px"></asp:TextBox>
            <asp:TextBox ID="TextBox7" runat="server" Height="16px" Visible="False" 
                Width="16px"></asp:TextBox>
        </td>
       
    </tr>
    <tr>
        <td class="style8" > New Password&nbsp;</td>
        <td class="style3">
            <asp:TextBox ID="TextBox6" runat="server" style="margin-left: 0px" 
                TextMode="Password" Width="180px"></asp:TextBox>
        </td>
       
    </tr>
   <tr>
        <td class="style9">Confirm Password&nbsp;</td>
        <td class="style10">
            <asp:TextBox ID="TextBox5" runat="server" style="margin-left: 0px" 
                TextMode="Password" Width="180px"></asp:TextBox>
        </td>
       
    </tr>
     <tr>
        <td class="style11" align="left">
            &nbsp;</td>
        <td class="style3">
            <br />
            <asp:Button ID="Button1" runat="server" Text="Change Password" Width="123px" 
                onclick="Button1_Click" />
            &nbsp;<asp:Label ID="Label3" runat="server" CssClass="style2"></asp:Label>
        &nbsp;<asp:Label ID="Label4" runat="server"></asp:Label>
        </td>
       
    </tr>
  
   
    </table>

    </fieldset>
    
   
   

    <br />
    <br />
   
   
</asp:Content>
