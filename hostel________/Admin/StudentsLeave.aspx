<%@ Page Title="" Language="C#" MasterPageFile="~/admin_site.Master" AutoEventWireup="true" CodeBehind="StudentsLeave.aspx.cs" Inherits="hostel________.Admin.StudentsLeave" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" 
        Width="100%" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" 
        BorderWidth="3px" CellSpacing="2">
        <Columns>
            <asp:BoundField DataField="enno" HeaderText="enno" SortExpression="enno" />
            <asp:BoundField DataField="start" HeaderText="start" SortExpression="start" />
            <asp:BoundField DataField="endd" HeaderText="endd" SortExpression="endd" />
            <asp:BoundField DataField="reason" HeaderText="reason" 
                SortExpression="reason" />
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
        SelectCommand="SELECT [enno], [start], [endd], [reason] FROM [diningclose]">
    </asp:SqlDataSource>


</asp:Content>
