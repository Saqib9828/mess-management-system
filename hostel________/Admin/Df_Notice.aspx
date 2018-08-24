<%@ Page Title="" Language="C#" MasterPageFile="~/admin_site.Master" AutoEventWireup="true" CodeBehind="Df_Notice.aspx.cs" Inherits="hostel________.Admin.Df_Notice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 77%;
        }
        .style2
        {
            text-align: right;
            font-size: large;
            width: 384px;
        }
        .style3
        {
            width: 256px;
        }
        .style4
        {
            width: 372px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<p style="font-size: 16pt;   font-weight: bold"> 
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
   Home Page Notice
</p>
    <table class="style1">
        <tr>
            <td class="style2">
                Message Id:</td>
            <td class="style3">
                <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter Id" 
                    ForeColor="Red" style="font-size: medium"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Date:</td>
            <td class="style3">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Date" Width="180px"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Enter Date" 
                    style="font-size: medium; color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Message:</td>
            <td class="style3">
                <asp:TextBox ID="TextBox3" runat="server" Height="138px" TextMode="MultiLine" 
                    Width="336px"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Create Message" 
                    style="font-size: medium; color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                    Width="82px" />
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
    </table><br /><br /><br /><br />
    <div>
     
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Notice_Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Notice_Id" HeaderText="Notice_Id" ReadOnly="True" 
                    SortExpression="Notice_Id" />
                <asp:BoundField DataField="Notice_Date" HeaderText="Notice_Date" 
                    SortExpression="Notice_Date" />
                <asp:BoundField DataField="Notice" HeaderText="Notice" 
                    SortExpression="Notice" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:hRegistrationConnectionString %>" 
            DeleteCommand="DELETE FROM [Notice_Data] WHERE [Notice_Id] = @Notice_Id" 
            InsertCommand="INSERT INTO [Notice_Data] ([Notice_Id], [Notice_Date], [Notice]) VALUES (@Notice_Id, @Notice_Date, @Notice)" 
            SelectCommand="SELECT * FROM [Notice_Data]" 
            UpdateCommand="UPDATE [Notice_Data] SET [Notice_Date] = @Notice_Date, [Notice] = @Notice WHERE [Notice_Id] = @Notice_Id">
            <DeleteParameters>
                <asp:Parameter Name="Notice_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Notice_Id" Type="Int32" />
                <asp:Parameter DbType="Date" Name="Notice_Date" />
                <asp:Parameter Name="Notice" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter DbType="Date" Name="Notice_Date" />
                <asp:Parameter Name="Notice" Type="String" />
                <asp:Parameter Name="Notice_Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </asp:Content>
