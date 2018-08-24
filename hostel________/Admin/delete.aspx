<%@ Page Title="Delete Record" Language="C#" MasterPageFile="~/admin_site.Master" AutoEventWireup="true" CodeBehind="delete.aspx.cs" Inherits="hostel________.Admin.delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        .style1
        {
            font-size: large;
            color: #000000;
        }
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 188px;
        }
        .style4
        {
            width: 188px;
            text-align: right;
            font-size: large;
            color: #000000;
        }
        .style5
        {
            width: 196px;
        }
        .style6
        {
            color: #999966;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<fieldset style="width: 788px; height: 305px; margin-top: 100px; margin-bottom: 100px; margin-left: 83px;">
    
        <span class="style1">
        <br />
        <br />
        <br />
        <table class="style2">
            <tr>
                <td class="style4">
                    <span class="style6">Give Enverolment No. </span>:</td>
                <td class="style5">
        <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">

        <asp:TextBox ID="TextBox2" runat="server" Visible="False" Width="1px"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" Visible="False" Width="1px"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" Visible="False" Width="1px"></asp:TextBox>
        <asp:TextBox ID="TextBox5" runat="server" Visible="False" Width="1px"></asp:TextBox>
        <asp:TextBox ID="TextBox6" runat="server" Visible="False" Width="1px"></asp:TextBox>
        <asp:TextBox ID="TextBox7" runat="server" Visible="False" Width="1px"></asp:TextBox>
        <asp:TextBox ID="TextBox8" runat="server" Visible="False" Width="1px"></asp:TextBox>
        <asp:TextBox ID="TextBox9" runat="server" Visible="False" Width="1px"></asp:TextBox>
        <asp:TextBox ID="TextBox10" runat="server" Visible="False" Width="1px"></asp:TextBox>
        <asp:TextBox ID="TextBox11" runat="server" Visible="False" Width="1px"></asp:TextBox>
        <asp:TextBox ID="TextBox12" runat="server" Visible="False" Width="1px"></asp:TextBox>
        <asp:TextBox ID="TextBox13" runat="server" Visible="False" Width="1px"></asp:TextBox>
        <asp:TextBox ID="TextBox14" runat="server" Visible="False" Width="1px"></asp:TextBox>
        <asp:TextBox ID="TextBox15" runat="server" Visible="False" Width="1px"></asp:TextBox>
        <asp:TextBox ID="TextBox16" runat="server" Visible="False" Width="1px"></asp:TextBox>
        <asp:TextBox ID="TextBox17" runat="server" Visible="False" Width="1px"></asp:TextBox>
        <asp:TextBox ID="TextBox18" runat="server" Visible="False" Width="1px"></asp:TextBox>
  
                    <asp:TextBox ID="TextBox19" runat="server" Visible="False" Width="1px"></asp:TextBox>
                    <asp:TextBox ID="TextBox20" runat="server" Visible="False" Width="1px"></asp:TextBox>
  
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;</td>
                <td class="style5">
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Check Status" Height="32px" style="margin-top: 1px" />
                </td>
                <td>
    <asp:Label ID="Label1" runat="server" style="font-size: medium; color: #FFFFFF;"></asp:Label>

                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style5">
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Select" Height="32px" 
                        style="margin-top: 0px" />
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" 
                        style="font-size: medium; color: #FFFFFF;"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style5">
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Delete" 
            Width="119px" Height="32px" style="margin-top: 0px" />
   
     
     
                </td>
                <td>
                    <span class="style1">
    <asp:Label ID="Label2" runat="server" style="font-size: medium; color: #FFFFFF;"></asp:Label>

                    </span>
                </td>
            </tr>
        </table>
        </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
   
     
     
&nbsp;&nbsp;&nbsp;&nbsp;
    
    </fieldset>         
     
</asp:Content>
