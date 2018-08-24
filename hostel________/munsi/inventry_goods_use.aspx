<%@ Page Title="" Language="C#" MasterPageFile="~/munshi.Master" AutoEventWireup="true" CodeBehind="inventry_goods_use.aspx.cs" Inherits="hostel________.munsi.inventry_goods_use" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 <h1 align="center">Add New Goods</h1>
 <table class="style1">
    <tr>
        <td>
            Goods Name</td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                DataSourceID="SqlDataSource1" DataTextField="goods_name" 
                DataValueField="goods_name" 
                onselectedindexchanged="DropDownList2_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:hRegistrationConnectionString %>" 
                SelectCommand="SELECT DISTINCT [goods_name] FROM [Goods]">
            </asp:SqlDataSource>
            <asp:DropDownList ID="DropDownList3" runat="server" 
                DataSourceID="SqlDataSource3" DataTextField="gid" DataValueField="gid" 
                Enabled="False">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:hRegistrationConnectionString %>" 
                SelectCommand="SELECT [gid] FROM [Goods] WHERE ([goods_name] = @goods_name)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList2" Name="goods_name" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            Quantity Use</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        &nbsp;-
            <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="SqlDataSource2" DataTextField="unit_of_goods" 
                DataValueField="unit_of_goods" Enabled="False">
                <asp:ListItem>Kg</asp:ListItem>
                <asp:ListItem>Ltr</asp:ListItem>
                <asp:ListItem>Unit</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:hRegistrationConnectionString %>" 
                SelectCommand="SELECT DISTINCT [unit_of_goods] FROM [Goods] WHERE ([goods_name] = @goods_name)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList2" Name="goods_name" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Add Goods Use" 
                onclick="Button1_Click1" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
