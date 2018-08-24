<%@ Page Title="Staff" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Staff.aspx.cs" Inherits="hostel________.Staff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 61px;
        }
        .style4
        {
            width: 299px;
        }
        .style5
        {
            width: 61px;
            height: 19px;
        }
        .style7
        {
            width: 299px;
            height: 19px;
        }
        .style8
        {
            height: 19px;
        }
        .style13
        {
            width: 170px;
        }
        .style15
        {
            width: 170px;
            height: 19px;
        }
        .style16
        {
            width: 61px;
            height: 26px;
        }
        .style17
        {
            width: 170px;
            height: 26px;
        }
        .style18
        {
            width: 299px;
            height: 26px;
        }
        .style19
        {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


<div style="float: left; width: 72%; font-family: 'Times New Roman', Times, serif; font-size: 15pt;">

<h1 style="font-size: xx-large; font-family: 'Times New Roman', Times, serif">Dining Staff</h1><br />
    


 



    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="S.No." DataSourceID="SqlDataSource1" >
        <Columns>
            <asp:BoundField DataField="S.No." HeaderText="S.No." ReadOnly="True" 
                SortExpression="S.No." />
            <asp:BoundField DataField="NAME" HeaderText="NAME" SortExpression="NAME" />
            <asp:BoundField DataField="DESIGNATION" HeaderText="DESIGNATION" 
                SortExpression="DESIGNATION" />
            <asp:BoundField DataField="CONTACT NO." HeaderText="CONTACT NO." 
                SortExpression="CONTACT NO." />
                <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" 
                SortExpression="ADDRESS" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:hRegistrationConnectionString %>" 
        SelectCommand="SELECT * FROM [staff]">
    </asp:SqlDataSource>
    


 



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
