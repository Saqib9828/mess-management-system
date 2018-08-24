<%@ Page Title="Mess Payment" Language="C#" MasterPageFile="~/admin_site.Master" AutoEventWireup="true" CodeBehind="MessAcc.aspx.cs" Inherits="hostel________.Admin.MessAcc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            text-align: left;
            width: 201px;
            font-size: large;
        }
        .style4
        {
            width: 181px;
        }
        .style5
        {
            text-align: right;
            width: 89px;
            height: 32px;
        }
        .style6
        {
            width: 89px;
        }
        .style10
        {
            width: 89px;
            height: 32px;
            font-size: large;
            color: #999966;
            text-align: right;
        }
        .style12
        {
            text-align: right;
            width: 89px;
            height: 32px;
            color: #999966;
        }
        .style13
        {
            color: #FF0000;
        }
        .style19
        {
            width: 94px;
        }
        .style22
        {
            width: 201px;
        }
        .style31
        {
            text-align: right;
            width: 201px;
            font-size: large;
            height: 32px;
            color: #999966;
        }
        .style32
        {
            width: 181px;
            height: 32px;
        }
        .style33
        {
            width: 94px;
            height: 32px;
        }
        .style34
        {
            height: 32px;
        }
        .style38
        {
            width: 89px;
            height: 32px;
        }
        .style39
        {
            text-align: right;
            width: 201px;
            font-size: large;
            height: 33px;
            color: #999966;
        }
        .style40
        {
            width: 181px;
            height: 33px;
        }
        .style41
        {
            width: 94px;
            height: 33px;
        }
        .style42
        {
            width: 89px;
            height: 33px;
        }
        .style43
        {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style1">
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style19">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style31">
                EnrolmentNo:</td>
            <td class="style32">
                <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style33">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter EnrolNo." 
                    style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
            <td class="style10">
                Name:</td>
            <td class="style32">
                <asp:TextBox ID="TextBox7" runat="server" style="margin-right: 0px" 
                    Width="180px"></asp:TextBox>
            </td>
            <td class="style34">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="Enter Name" style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style31">
                MessFee:</td>
            <td class="style32">
                <asp:TextBox ID="TextBox2" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style33">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Enter fee" style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
            <td class="style5" style="font-size: large">
                </td>
            <td class="style32">
                </td>
            <td class="style34">
                </td>
        </tr>
        <tr>
            <td class="style31">
                MessDues:</td>
            <td class="style32">
                <asp:TextBox ID="TextBox3" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style33">
            </td>
            <td class="style12" style="font-size: large">
                Months:</td>
            <td class="style32">
                <asp:TextBox ID="TextBox4" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style34">
            </td>
        </tr>
        <tr>
            <td class="style31">
                ReceiptNo:</td>
            <td class="style32">
                <asp:TextBox ID="TextBox5" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style33">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox5" CssClass="style13" 
                    ErrorMessage="Enter Receipt No."></asp:RequiredFieldValidator>
            </td>
            <td class="style38">
            </td>
            <td class="style32">
            </td>
            <td class="style34">
            </td>
        </tr>
        <tr>
            <td class="style39">
                Date Of Submition:</td>
            <td class="style40">
                <asp:TextBox ID="TextBox6" runat="server" Width="180px" TextMode="Date"></asp:TextBox>
            </td>
            <td class="style41">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox6" CssClass="style13" ErrorMessage="Enter Date"></asp:RequiredFieldValidator>
            </td>
            <td class="style42">
                </td>
            <td class="style40">
                </td>
            <td class="style43">
                </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                <asp:Button ID="Button1" runat="server"  Text="Submit" 
                    Width="86px" onclick="Button1_Click1" />
            </td>
            <td class="style19">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label1" runat="server" 
                    style="font-size: medium; text-align: left; color: #FFFFCC"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>


    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:hRegistrationConnectionString %>" 
        SelectCommand="SELECT * FROM [hMessDetails]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
        CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="Enrollment_No" HeaderText="Enrollment_No" 
                SortExpression="Enrollment_No" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="MessFee" HeaderText="MessFee" 
                SortExpression="MessFee" />
            <asp:BoundField DataField="RecieptNo" HeaderText="RecieptNo" 
                SortExpression="RecieptNo" />
            <asp:BoundField DataField="Month" HeaderText="Month" SortExpression="Month" />
            <asp:BoundField DataField="MessDues" HeaderText="MessDues" 
                SortExpression="MessDues" />
            <asp:BoundField DataField="DoS" HeaderText="DoS" SortExpression="DoS" />
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


</asp:Content>
