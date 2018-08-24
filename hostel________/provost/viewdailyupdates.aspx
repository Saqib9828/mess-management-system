<%@ Page Title="" Language="C#" MasterPageFile="~/Provost.Master" AutoEventWireup="true" CodeBehind="viewdailyupdates.aspx.cs" Inherits="hostel________.provost.viewdailyupdates" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h1> Daily Used Goods </h1> 
<hr />

<h1 style="color: #FFFFCC"> Breakfast </h1>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
        CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black" 
        Width="80%">
        <Columns>
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="BGName" HeaderText="Goods Name" 
                SortExpression="BGName" />
            <asp:BoundField DataField="Btype" HeaderText="Type" SortExpression="Btype" />
            <asp:BoundField DataField="Bquantity" HeaderText="Quantity" 
                SortExpression="Bquantity" />
            <asp:BoundField DataField="Bunit" HeaderText="Unit" SortExpression="Bunit" />
            <asp:BoundField DataField="Munshi" HeaderText="Munshi" 
                SortExpression="Munshi" />
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
        
        SelectCommand="SELECT [Date], [BGName], [Btype], [Bquantity], [Bunit], [Munshi] FROM [DailyUsed]">
    </asp:SqlDataSource>

    <h1 style="color: #FFFFCC"> Lunch </h1>


    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
        CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource2" ForeColor="Black" 
        Width="80%">
        <Columns>
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="LGName" HeaderText="Goods Name" 
                SortExpression="LGName" />
            <asp:BoundField DataField="Ltype" HeaderText="Type" SortExpression="Ltype" />
            <asp:BoundField DataField="Lquantity" HeaderText="Quantity" 
                SortExpression="Lquantity" />
            <asp:BoundField DataField="Lunit" HeaderText="Unit" SortExpression="Lunit" />
            <asp:BoundField DataField="Munshi" HeaderText="Munshi" 
                SortExpression="Munshi" />
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
        
        SelectCommand="SELECT [Date], [LGName], [Ltype], [Lquantity], [Lunit], [Munshi] FROM [DailyUsed]">
    </asp:SqlDataSource>

    <h1 style="color: #FFFFCC"> Dinner </h1>

    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
        CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource3" ForeColor="Black" 
        Width="80%">
        <Columns>
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="DGName" HeaderText="Goods Name" 
                SortExpression="DGName" />
            <asp:BoundField DataField="Dtype" HeaderText="Type" SortExpression="Dtype" />
            <asp:BoundField DataField="Dquantity" HeaderText="Quantity" 
                SortExpression="Dquantity" />
            <asp:BoundField DataField="Dunit" HeaderText="Unit" SortExpression="Dunit" />
            <asp:BoundField DataField="Munshi" HeaderText="Munshi" 
                SortExpression="Munshi" />
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

    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:hRegistrationConnectionString %>" 
        SelectCommand="SELECT [Date], [DGName], [Dtype], [Dquantity], [Dunit], [Munshi] FROM [DailyUsed]">
    </asp:SqlDataSource>

</asp:Content>
