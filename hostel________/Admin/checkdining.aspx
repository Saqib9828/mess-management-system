<%@ Page Title="" Language="C#" MasterPageFile="~/admin_site.Master" AutoEventWireup="true" CodeBehind="checkdining.aspx.cs" Inherits="hostel________.Admin.checkdining" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    CellPadding="4" DataKeyNames="srn" DataSourceID="SqlDataSource1" 
    ForeColor="#333333" GridLines="None" Width="60%">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="srn" HeaderText="srn" InsertVisible="False" 
            ReadOnly="True" SortExpression="srn" />
        <asp:BoundField DataField="enrol" HeaderText="enrol" SortExpression="enrol" />
        <asp:BoundField DataField="datee" HeaderText="datee" SortExpression="datee" />
        <asp:BoundField DataField="nofmonth" HeaderText="nofmonth" 
            SortExpression="nofmonth" />
        <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
    </Columns>
    <EditRowStyle BackColor="#999999" />
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#E9E7E2" />
    <SortedAscendingHeaderStyle BackColor="#506C8C" />
    <SortedDescendingCellStyle BackColor="#FFFDF8" />
    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:hRegistrationConnectionString %>" 
    SelectCommand="SELECT * FROM [stdiningdata] ">
   
</asp:SqlDataSource>
</asp:Content>
