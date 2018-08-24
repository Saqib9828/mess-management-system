<%@ Page Title="Account Record" Language="C#" MasterPageFile="~/admin_site.Master" AutoEventWireup="true" CodeBehind="Account_Record.aspx.cs" Inherits="hostel________.Admin.Account_Record" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<br /><br /><br />
<div style=" overflow: auto;">
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:hRegistrationConnectionString %>" 
            DeleteCommand="DELETE FROM [StudentData] WHERE [Enrollment_No] = @Enrollment_No" 
            InsertCommand="INSERT INTO [StudentData] ([Name], [Enrollment_No], [Admission_Fee], [Admissionfee_RecieptNo], [Hostel_Dues], [Halldues_RecieptNo], [Paid_Fee]) VALUES (@Name, @Enrollment_No, @Admission_Fee, @Admissionfee_RecieptNo, @Hostel_Dues, @Halldues_RecieptNo, @Paid_Fee)" 
            SelectCommand="SELECT [Name], [Enrollment_No], [Admission_Fee], [Admissionfee_RecieptNo], [Hostel_Dues], [Halldues_RecieptNo], [Paid_Fee] FROM [StudentData]" 
            
        UpdateCommand="UPDATE [StudentData] SET [Name] = @Name, [Admission_Fee] = @Admission_Fee, [Admissionfee_RecieptNo] = @Admissionfee_RecieptNo, [Hostel_Dues] = @Hostel_Dues, [Halldues_RecieptNo] = @Halldues_RecieptNo, [Paid_Fee] = @Paid_Fee WHERE [Enrollment_No] = @Enrollment_No">
            <DeleteParameters>
                <asp:Parameter Name="Enrollment_No" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Enrollment_No" Type="String" />
                <asp:Parameter Name="Admission_Fee" Type="Decimal" />
                <asp:Parameter Name="Admissionfee_RecieptNo" Type="String" />
                <asp:Parameter Name="Hostel_Dues" Type="Decimal" />
                <asp:Parameter Name="Halldues_RecieptNo" Type="String" />
                <asp:Parameter Name="Paid_Fee" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Admission_Fee" Type="Decimal" />
                <asp:Parameter Name="Admissionfee_RecieptNo" Type="String" />
                <asp:Parameter Name="Hostel_Dues" Type="Decimal" />
                <asp:Parameter Name="Halldues_RecieptNo" Type="String" />
                <asp:Parameter Name="Paid_Fee" Type="String" />
                <asp:Parameter Name="Enrollment_No" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Enrollment_No" DataSourceID="SqlDataSource1" 
        AllowSorting="True" BackColor="#CCCCCC" BorderColor="#999999" 
        BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
        ForeColor="Black">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Name" HeaderText="Name" 
                    SortExpression="Name" />
                <asp:BoundField DataField="Enrollment_No" HeaderText="Enrollment_No" 
                    SortExpression="Enrollment_No" ReadOnly="True" />
                <asp:BoundField DataField="Admission_Fee" HeaderText="Admission_Fee" 
                    SortExpression="Admission_Fee" />
                <asp:BoundField DataField="Admissionfee_RecieptNo" 
                    HeaderText="Admissionfee_RecieptNo" SortExpression="Admissionfee_RecieptNo" />
                <asp:BoundField DataField="Hostel_Dues" HeaderText="Hostel_Dues" 
                    SortExpression="Hostel_Dues" />
                <asp:BoundField DataField="Halldues_RecieptNo" HeaderText="Halldues_RecieptNo" 
                    SortExpression="Halldues_RecieptNo" />
                <asp:BoundField DataField="Paid_Fee" HeaderText="Paid_Fee" 
                    SortExpression="Paid_Fee" />
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
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        </div>
      
</asp:Content>
