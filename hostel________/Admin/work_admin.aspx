<%@ Page Title="Admin Dashboard" Language="C#" MasterPageFile="~/admin_site.Master" AutoEventWireup="true" CodeBehind="work_admin.aspx.cs" Inherits="hostel________.Admin.work_admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            font-size: 40pt;
            margin:14px 1px 18px 25px;
            float:left;
            font-family:Times New Roman CE;
            height: 56px;
            width: 208px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     
        
      <div class="welcome" style="float: left; width: 66%; height: 502px;">  
          <span class="style2"><strong>Welcome</strong></span><br />
&nbsp;&nbsp;&nbsp;&nbsp;
          <br />
          <br />
          <br />
          <br />
&nbsp;&nbsp;<br />
          &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" 
            runat="server" style="font-size:40pt; font-family:times new Roman CE"></asp:Label>
          <br /><br /><br /><br />
 <p style="font-family: Verdana; font-size: 18pt; font-style: italic; margin-top: 20px; height: 200px; width: 613px;">"The brain is a wonderful organ. It starts working the moment you get up in the morning ".
 </p>
      </div>
        &nbsp;
       
 <div class="links" 
          style="width: 30%; float: left; font-family: 'Times New Roman', Times, serif; height: 645px;">
<fieldset style="float: right; width: 90%; height: 558px">
 
  <div class="toplinks"> 
          
     <div class="toplinks"><a href="viewstudent.aspx">Records</a></div>
     <div class="toplinks"><a href="Old_boys.aspx">Old Boys</a></div>
     <div class="toplinks"><a href="hRegistration.aspx">Add Student</a></div>
     <div class="toplinks"><a href="checkdining.aspx">Student Payment</a></div>
     <div class="toplinks"><a href="delete.aspx">Remove Student</a></div>
     <div class="toplinks"><a href="Df_Notice.aspx">Add Notice</a></div>
     <div class="toplinks"><a href="Post_Notice.aspx">Scaned Notice</a></div>
  </div>
  </fieldset>
  </div>


</asp:Content>
