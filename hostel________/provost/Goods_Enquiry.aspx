<%@ Page Title="" Language="C#" MasterPageFile="~/Provost.Master" AutoEventWireup="true" CodeBehind="Goods_Enquiry.aspx.cs" Inherits="hostel________.provost.Goods_Enquiry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h1 align="center"> Goods in Stock </h1> 
    <br />
    <asp:Repeater ID="RepDetails" runat="server">
        <ItemTemplate>
            <p>
                You have only 
                <asp:Label ID="Label1" runat="server" Text='<%#Eval("Quantity") %>'></asp:Label> -
                <asp:Label ID="Label2" runat="server" Text='<%#Eval("Unit") %>'></asp:Label>
                 &nbsp;<asp:Label ID="Label3" runat="server" Text='<%#Eval("Goods_Name") %>'></asp:Label>
                 in the stock.
             </p>
        </ItemTemplate>
    </asp:Repeater>
    
    <br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
        CellPadding="4" DataSourceID="SqlDataSource1" GridLines="Horizontal" 
        Width="60%">
        <Columns>
            <asp:BoundField DataField="Goods_Name" HeaderText="Goods_Name" 
                SortExpression="Goods_Name" />
            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                SortExpression="Quantity" />
            <asp:BoundField DataField="Unit" HeaderText="Unit" SortExpression="Unit" />
            <asp:BoundField DataField="Expairy_Date" HeaderText="Expairy_Date" 
                SortExpression="Expairy_Date" />
            <asp:BoundField DataField="Updated_On" HeaderText="Updated_On" 
                SortExpression="Updated_On" />
            <asp:BoundField DataField="Munshi" HeaderText="Munshi" 
                SortExpression="Munshi" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:hRegistrationConnectionString %>" 
        SelectCommand="SELECT [Goods_Name], [Type], [Quantity], [Unit], [Expairy_Date], [Updated_On], [Munshi] FROM [Goods_Data]">
    </asp:SqlDataSource>

</asp:Content>
