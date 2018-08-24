<%@ Page Title="Student Profile" Language="C#" MasterPageFile="~/Student_site.Master" AutoEventWireup="true" CodeBehind="Student_Info.aspx.cs" Inherits="hostel________.Student_Info" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 59%;
            margin-left: 110px;
            margin-right: 0px;
            height: 284px;
        }
        .style2
        {
            text-align: left;
            width: 719px;
            font-size: large;
            color: #999966;
            height: 56px;
        }
        .style3
        {
            font-size: medium;
        }
        .style4
        {
            width: 402px;
            height: 56px;
        }
        .style7
        {
            font-size: large;
        }
        .style12
        {
            width: 92%;
        }
        .style13
        {
            width: 274px;
            font-size: medium;
        }
        .style14
        {
            width: 274px;
            font-size: large;
            color: #999966;
            height: 45px;
        }
        .style15
        {
            font-size: medium;
            height: 45px;
        }
        .style16
        {
            text-align: left;
            width: 719px;
            font-size: medium;
            height: 30px;
        }
        .style17
        {
            width: 402px;
            font-size: medium;
            height: 30px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 
        &nbsp;<span class="style7">Enrolment No.</span>&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label_welcome" runat="server" style="font-size: medium"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <p>Current Status of your dining : 
    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#FFFFCC"></asp:Label> </p>
        <br />
   <hr style="width: 90%; height: -12px; color: black" />
    
    <div  >
    <div class="i" style="float: left; width: 60%;">
    <table class="style1">
        <tr>
            <td class="style2">
                Personal Detail </td>
            <td class="style4">
                &nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                Name&nbsp;&nbsp; </td>
            <td class="style17">
                <span class="style3"><strong>:</strong> </span><asp:Label ID="LabelN" runat="server" 
                    CssClass="style3"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style16">
                Date of Admission&nbsp;&nbsp; </td>
            <td class="style17">
                <span class="style3"><strong>:</strong> </span><asp:Label ID="LabelDA" runat="server" 
                    CssClass="style3"></asp:Label>
                <span class="style3">&nbsp;</span></td>
        </tr>
        <tr>
            <td class="style16">
                Gender&nbsp;&nbsp; </td>
            <td class="style17">
                <span class="style3"><strong>:</strong> </span><asp:Label ID="LabelG" runat="server" 
                    CssClass="style3"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style16">
                Date of Birth&nbsp;&nbsp; </td>
            <td class="style17">
                <span class="style3"><strong>:</strong> </span><asp:Label ID="LabelDB" runat="server" 
                    CssClass="style3"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style16">
                Father&#39;s Name&nbsp;&nbsp; </td>
            <td class="style17">
                <span class="style3"><strong>:</strong> </span><asp:Label ID="LabelFN" runat="server" 
                    CssClass="style3"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style16">
                Contact No&nbsp;&nbsp; </td>
            <td class="style17">
                <span class="style3"><strong>:</strong> </span><asp:Label ID="LabelCN" runat="server" 
                    CssClass="style3"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style16">
                Email&nbsp;&nbsp;&nbsp; </td>
            <td class="style17">
                <span class="style3"><strong>:</strong> </span><asp:Label ID="LabelE" runat="server" 
                    CssClass="style3"></asp:Label>
            </td>
        </tr>
        </table>
        
    </div>
    <div style="width: 30%; float: left; height: 289px;">

    <asp:Image ID="Image1" runat="server" Width="208px" Height="222px" 
            style="margin-top: 35px" />
    </div>
    </div>
       
      
   

    
         <div style="height: 420px">
        <hr style="width: 90%; height: -12px; color: black" />
<div style="float: left; ">
    
   
   
        <table class="style12" style="margin-left: 110px">
            <tr>
                <td class="style14">
                    Course Detail</td>
                <td class="style15">
                </td>
            </tr>
            <tr>
                <td class="style13">
                    Course</td>
                <td class="style3">
                    <strong>:</strong><asp:Label ID="LabelC" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style13">
                    Semester</td>
                <td class="style3">
                    <strong>:</strong><asp:Label ID="LabelCl" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style13">
                    Department</td>
                <td class="style3">
                    <strong>:</strong><asp:Label ID="LabelD" runat="server"></asp:Label>
                </td>
            </tr>
        </table>

    </div>
    </div>
    <br />

    
    <br />
     
     
    
</asp:Content>
