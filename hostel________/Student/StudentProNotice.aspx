<%@ Page Title="" Language="C#" MasterPageFile="~/Student_site.Master" AutoEventWireup="true" CodeBehind="StudentProNotice.aspx.cs" Inherits="hostel________.Student.StudentProNotice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="Notice_Id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="Notice_Id" HeaderText="Notice_Id" ReadOnly="True" 
                SortExpression="Notice_Id" />
            <asp:BoundField DataField="Notice_Date" HeaderText="Notice_Date" 
                SortExpression="Notice_Date" />
            <asp:HyperLinkField DataTextField="Notice" HeaderText="Notice" 
                NavigateUrl="~/Admin/Noticepdf/6420.pdf">
            <ItemStyle ForeColor="White" />
            </asp:HyperLinkField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:hRegistrationConnectionString %>" 
        SelectCommand="SELECT * FROM [pdfNotice]" 
        DeleteCommand="DELETE FROM [pdfNotice] WHERE [Notice_Id] = @Notice_Id" 
        InsertCommand="INSERT INTO [pdfNotice] ([Notice_Id], [Notice_Date], [Notice]) VALUES (@Notice_Id, @Notice_Date, @Notice)" 
        UpdateCommand="UPDATE [pdfNotice] SET [Notice_Date] = @Notice_Date, [Notice] = @Notice WHERE [Notice_Id] = @Notice_Id">
        <DeleteParameters>
            <asp:Parameter Name="Notice_Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Notice_Id" Type="Int32" />
            <asp:Parameter Name="Notice_Date" Type="String" />
            <asp:Parameter Name="Notice" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Notice_Date" Type="String" />
            <asp:Parameter Name="Notice" Type="String" />
            <asp:Parameter Name="Notice_Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
     
</asp:Content>
