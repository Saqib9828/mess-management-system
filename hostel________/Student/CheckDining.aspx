<%@ Page Title="" Language="C#" MasterPageFile="~/Student_site.Master" AutoEventWireup="true" CodeBehind="CheckDining.aspx.cs" Inherits="hostel________.Student.CheckDining" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    CellPadding="4" DataSourceID="SqlDataSource1" 
    ForeColor="Black" Width="60%" BackColor="#CCCCCC" BorderColor="#999999" 
        BorderStyle="Solid" BorderWidth="3px" CellSpacing="2">
    <Columns>
        <asp:BoundField DataField="activity" HeaderText="Activity(2=Initiated, 0=Closed, 1=Continue)" 
            SortExpression="activity" />
        <asp:BoundField DataField="Datee" HeaderText="Date" SortExpression="Datee" />
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
    
        SelectCommand="SELECT [activity], [Datee] FROM [start_stop_data] WHERE ([enrol] = @enrol) ORDER BY [sr]">
    <SelectParameters>
        <asp:SessionParameter Name="enrol" SessionField="New" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<p>No. of days Continue: 
    <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="Label2"
        runat="server" Visible="False"></asp:Label></p><br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
        CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource2" 
        ForeColor="Black" Width="80%">
        <Columns>
            <asp:BoundField DataField="datee" HeaderText="Date of Pay" SortExpression="datee" />
            <asp:BoundField DataField="nofmonth" HeaderText="No. of Month" 
                SortExpression="nofmonth" />
            <asp:BoundField DataField="total" HeaderText="Total Rs. Paid" SortExpression="total" />
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

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:hRegistrationConnectionString %>" 
        SelectCommand="SELECT [datee], [nofmonth], [total] FROM [stdiningdata] WHERE ([enrol] = @enrol)">
        <SelectParameters>
            <asp:SessionParameter Name="enrol" SessionField="New" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

<p>No. of days You Have: 
    <asp:Label ID="Label3" runat="server"></asp:Label>
    <asp:Label ID="Label4"
        runat="server" Visible="False"></asp:Label></p>
</asp:Content>
