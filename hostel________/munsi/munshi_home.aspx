<%@ Page Title="" Language="C#" MasterPageFile="~/munshi.Master" AutoEventWireup="true" CodeBehind="munshi_home.aspx.cs" Inherits="hostel________.munsi.munshi_home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


<h1>Welcome Munshi</h1>
<p>You Have: 
    <asp:Label ID="Label1" runat="server" Font-Size="Larger"></asp:Label>
    New dining related notification. 
    <asp:HyperLink ID="HyperLink1" runat="server" 
        NavigateUrl="~/munsi/munshi_start_stop.aspx">Click Here!</asp:HyperLink>
 </p>
</asp:Content>
