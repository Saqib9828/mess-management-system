<%@ Page Title="" Language="C#" MasterPageFile="~/munshi.Master" AutoEventWireup="true" CodeBehind="inventry_goods_manage.aspx.cs" Inherits="hostel________.munsi.inventry_goods_manage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h1 align="center">Manage Goods</h1>
<br />
    <asp:Repeater ID="RepDetails" runat="server">
        <ItemTemplate>
            <p>
                You have only 
                <asp:Label ID="Label1" runat="server" Text='<%#Eval("qnt") %>'></asp:Label> -
                <asp:Label ID="Label2" runat="server" Text='<%#Eval("unit_of_goods") %>'></asp:Label>
                 &nbsp;<asp:Label ID="Label3" runat="server" Text='<%#Eval("goods_name") %>'></asp:Label>
                 in the stock.
             </p>
        </ItemTemplate>
    </asp:Repeater>
<br />
<hr />
<%--<p>Available Goods</p>
<table class="style1">

     
<asp:Repeater ID="Repeater1" runat="server">
<ItemTemplate>
       <tr>
            <td>
                <asp:Label ID="Labela" runat="server" Text='<%#Eval("goods_name") %>'></asp:Label></td>
            <td>
               <asp:Label ID="Labelb" runat="server" Text='<%#Eval("qnt2") %>'></asp:Label></td>
            <td>
               <asp:Label ID="Labelc" runat="server" Text='<%#Eval("unit_of_goods") %>'></asp:Label></td>
            <td>
                &nbsp;</td>
        </tr>
 </ItemTemplate>
</asp:Repeater>
   </table>
<hr />--%>
<div style="width:100%">
<p>Select date: from 
    <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
    to
    <asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
 &nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="Show Data" />
        <br />&nbsp;<br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" 
        DataSourceID="SqlDataSource3" DataTextField="Goods_Name" 
        DataValueField="Goods_Name"  AppendDataBoundItems="true" 
        AutoPostBack="True" Height="26px" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem Value="_">Please select a Goods</asp:ListItem>
    
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:hRegistrationConnectionString %>" 
        SelectCommand="SELECT DISTINCT [goods_name] FROM [Goods]">
    </asp:SqlDataSource>
    <asp:Label ID="Label4" runat="server" Text=""></asp:Label> - 
    <asp:Label ID="Label5" runat="server" Text=""></asp:Label> are available.
 </p>
 <br />
    <div style="width:40%; float:left;">
    <p>Purchased Goods</p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
            CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" 
            GridLines="Vertical" Visible="False">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
             <asp:BoundField DataField="goods_name" HeaderText="goods_name" 
                    SortExpression="goods_name" />
                <asp:BoundField DataField="g_add_use_quantity" HeaderText="g_add_use_quantity" 
                    SortExpression="g_add_use_quantity" />
                <asp:BoundField DataField="unit_of_goods" HeaderText="unit_of_goods" 
                    SortExpression="unit_of_goods" />
                <asp:BoundField DataField="g_add_datee" HeaderText="g_add_datee" 
                    SortExpression="g_add_datee" />
               
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
            SelectCommand="SELECT [goods_name],[g_add_use_quantity],[unit_of_goods], [g_add_datee], [g_add_gid] FROM [goods_add] join [goods] on [gid]=[g_add_gid] WHERE ( ([g_add_datee] between @g_add_datee1 and @g_add_datee2)and ([goods_name] LIKE '%' + @v1 + '%'))">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" DbType="Date" Name="g_add_datee1" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox2" DbType="Date" Name="g_add_datee2" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="DropDownList1" DbType="String" Name="v1" 
                    PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>

    <div style="width:40%; float:left;">
    <p>Used Goods</p>
     <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
            CellPadding="3" DataSourceID="SqlDataSource2" ForeColor="Black" 
            GridLines="Vertical" Visible="False">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
             <asp:BoundField DataField="goods_name" HeaderText="goods_name" 
                    SortExpression="goods_name" />
                <asp:BoundField DataField="use_quantity" HeaderText="use_quantity" 
                    SortExpression="use_quantity" />
                <asp:BoundField DataField="unit_of_goods" HeaderText="unit_of_goods" 
                    SortExpression="unit_of_goods" />
                <asp:BoundField DataField="datee" HeaderText="datee" 
                    SortExpression="datee" />
               
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:hRegistrationConnectionString %>" 
            SelectCommand="SELECT [goods_name],[use_quantity],[unit_of_goods], [datee] FROM [goods_use] join [goods] on [gid]=[ugid] WHERE (([datee] between @g_add_datee1 and @g_add_datee2) and ([goods_name] LIKE '%' + @v1 + '%'))">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" DbType="Date" Name="g_add_datee1" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox2" DbType="Date" Name="g_add_datee2" 
                    PropertyName="Text" />
                    <asp:ControlParameter ControlID="DropDownList1" DbType="String" Name="v1" 
                    PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</div>
</asp:Content>
