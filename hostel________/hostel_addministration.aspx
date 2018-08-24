<%@ Page Title="Hostel/Dining Admininstration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="hostel_addministration.aspx.cs" Inherits="hostel________.hostel_addministration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div style="float: left; width: 74%; font-family: 'Times New Roman', Times, serif; font-size: 15pt;">

<h1 style="font-size: 15pt; font-family: 'Times New Roman', Times, serif">DINING/HOSTEL ADMINISTRATOR  </h1><br />



     



    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="S.No." DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="S.No." HeaderText="S.No." ReadOnly="True" 
                SortExpression="S.No." />
            <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
            <asp:BoundField DataField="DESIGNATION" HeaderText="DESIGNATION" 
                SortExpression="DESIGNATION" />
            <asp:BoundField DataField="CONTACT NO." HeaderText="CONTACT NO." 
                SortExpression="CONTACT NO." />
            <asp:BoundField DataField="DEPARTMENT" HeaderText="DEPARTMENT" 
                SortExpression="DEPARTMENT" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:hRegistrationConnectionString %>" 
        SelectCommand="SELECT * FROM [HostelWarden]">
    </asp:SqlDataSource>
    <br />



     



</div>


     <div class="contact" style="width: 26%; float: left;">
     <fieldset class="" style="width:245px; height: 252px; ">
         <legend style="text-align: center; font-family: 'Times New Roman', Times, serif; font-size: xx-large; font-weight: bold; text-transform: uppercase; color: #666666;">hostel</legend> 
      <div class="loginsde2">  
       <a href="About.aspx" class="loginsde2">About</a>
          <br />
        <br /> <a href="hostel_addministration.aspx" class="loginsde2">Dining/Hostel Administration</a>
          <br />
         <br /><a href="rules_regulation.aspx" class="loginsde2">Rules & Regulations</a>
          <br />
         <br /><a href="Staff.aspx" class="loginsde2">Dining Staff</a>
         </div>
       </fieldset>
     </div> 
</asp:Content>
