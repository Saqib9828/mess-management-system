<%@ Page Title="" Language="C#" MasterPageFile="~/munshi.Master" AutoEventWireup="true" CodeBehind="munshi_start_stop.aspx.cs" Inherits="hostel________.munsi.munshi_start_stop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h1>Stop-Start Dining</h1>
    <br /><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
        CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black" 
        Width="80%">
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
        SelectCommand="SELECT [enno], [start], [endd], [reason] FROM [diningclose] WHERE ([IsSeen] = @IsSeen)">
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="IsSeen" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Button ID="Button5" runat="server" Text="Clear Notification" 
        onclick="Button5_Click" />
    &nbsp;<asp:Label ID="Label3" runat="server"></asp:Label> 
    <br />
    <br /> 
    &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="TextBox1" ErrorMessage="*" Font-Size="Larger" 
        ForeColor="Red" ValidationGroup="1"></asp:RequiredFieldValidator>
    <asp:Label ID="Label1" runat="server"
        Text=""></asp:Label>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Check Status" 
        onclick="Button1_Click" ValidationGroup="1" />
    <asp:Button ID="Button2" runat="server" Text="Stop" Visible="False" 
        onclick="Button2_Click" />
    <asp:Button ID="Button3" runat="server" Text="Start" Visible="False" 
        onclick="Button3_Click" />
        <br /><br />
    <asp:Button ID="Button4" runat="server" Text="Calculate" 
        onclick="Button4_Click" />
    <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
</asp:Content>
