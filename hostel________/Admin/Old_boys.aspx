<%@ Page Title="Old Student Data" Language="C#" MasterPageFile="~/admin_site.Master" AutoEventWireup="true" CodeBehind="Old_boys.aspx.cs" Inherits="hostel________.Admin.Old_boys" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        .style1
        {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <strong><span class="style1">OLD BOY RECORD</span></strong><br /><br />
<div style=" overflow: auto;">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" AllowSorting="True" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
        CellSpacing="2" ForeColor="Black" AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="Room_No" HeaderText="Room_No" 
                SortExpression="Room_No" />
            <asp:BoundField DataField="Date" HeaderText="Date_Of_Joining" 
                SortExpression="Date" />
            <asp:BoundField DataField="Name" HeaderText="Name" 
                SortExpression="Name" />
            <asp:BoundField DataField="Enrolment_no" HeaderText="Enrolment_no" 
                SortExpression="Enrolment_no" />
            <asp:BoundField DataField="Course" HeaderText="Course" 
                SortExpression="Course" />
            <asp:BoundField DataField="Batch" HeaderText="Batch" SortExpression="Batch" />
            <asp:BoundField DataField="Faculty" HeaderText="Faculty" 
                SortExpression="Faculty" />
            <asp:BoundField DataField="Fauculty_No" HeaderText="Fauculty_No" 
                SortExpression="Fauculty_No" />
            <asp:BoundField DataField="Department" HeaderText="Department" 
                SortExpression="Department" />
            <asp:BoundField DataField="DOB" HeaderText="Date_Of_Birth" 
                SortExpression="DOB" />
            <asp:BoundField DataField="Sex" HeaderText="Sex" 
                SortExpression="Sex" />
            <asp:BoundField DataField="Father_Name" HeaderText="Father_Name" 
                SortExpression="Father_Name" />
            <asp:BoundField DataField="Mother_Name" HeaderText="Mother_Name" 
                SortExpression="Mother_Name" />
            <asp:BoundField DataField="Permanent_Address" HeaderText="Permanent_Address" 
                SortExpression="Permanent_Address" />
            <asp:BoundField DataField="District" HeaderText="District" 
                SortExpression="District" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="Home_Phone_No" HeaderText="Home_Phone_No" 
                SortExpression="Home_Phone_No" />
            <asp:BoundField DataField="MobileNo" HeaderText="Student_Cont_No" 
                SortExpression="MobileNo" />
            <asp:BoundField DataField="Id" HeaderText="Email_Id" 
                SortExpression="Id" />
            <asp:ImageField DataImageUrlField="Photo" HeaderText="Photograph" ControlStyle-Width="100" ControlStyle-Height="100"
                 />
               
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:hRegistrationConnectionString %>" 
        SelectCommand="SELECT * FROM [Oldboys]"></asp:SqlDataSource>
        </div>
        </br></br></br>
</asp:Content>
