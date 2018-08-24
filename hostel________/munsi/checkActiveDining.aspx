<%@ Page Title="" Language="C#" MasterPageFile="~/munshi.Master" AutoEventWireup="true" CodeBehind="checkActiveDining.aspx.cs" Inherits="hostel________.munsi.checkActiveDining" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h1>Check Active Dining</h1>
<p>Total <big>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label></big> Active Dining</p>
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
        CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" 
        GridLines="Vertical" Width="80%">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="enrol" HeaderText="enrol" SortExpression="enrol" />
             <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
              <asp:BoundField DataField="Room_No" HeaderText="Room No." SortExpression="Room_No" />
               <asp:BoundField DataField="Hostel" HeaderText="Hostel" SortExpression="Hostel" />
               <asp:BoundField DataField="MobileNo" HeaderText="Mobile No." SortExpression="MobileNo" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:hRegistrationConnectionString %>" 
        SelectCommand="select [enrol], [Name], [Room_No], [Hostel], [MobileNo] from [start_stop_data] join [StudentData] on [Enrollment_No]=[enrol] where (([sr] in (select max(sr) as cnt from [start_stop_data] group by [enrol])) and [activity]=1)"></asp:SqlDataSource>
</asp:Content>
