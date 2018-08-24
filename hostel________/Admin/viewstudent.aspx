<%@ Page Title="Student Data" Language="C#" MasterPageFile="~/admin_site.Master" AutoEventWireup="true" CodeBehind="viewstudent.aspx.cs" Inherits="hostel________.Admin.viewstudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<asp:Label ID="Label1" runat="server" Text="Search Student:  according to " 
        style="font-size: large"></asp:Label>
    &nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Text="Enrollment No. " 
        style="font-size: large"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Search" onclick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <asp:Label ID="Label3" runat="server" Text="Course " style="font-size: large"></asp:Label>
    <asp:DropDownList ID="DropDownList3" runat="server" 
        DataSourceID="SqlDataSource4" DataTextField="Course" DataValueField="Course" 
        Width="180px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:hRegistrationConnectionString %>" 
        SelectCommand="SELECT DISTINCT [Course] FROM [StudentData] ORDER BY [Course] DESC">
    </asp:SqlDataSource>
    &nbsp;
    <asp:Button ID="Button2" runat="server" Text="Search" onclick="Button2_Click" /><br />
    <br />

    <asp:Label ID="Label4" runat="server" Text="Faculty " style="font-size: large"></asp:Label>
                <asp:DropDownList ID="DropDownListF" runat="server" Width="180px">
                    <asp:ListItem>Select Faculty</asp:ListItem>
                    <asp:ListItem>Agriculture Sciences</asp:ListItem>
                    <asp:ListItem>Management</asp:ListItem>
                    <asp:ListItem>Arts</asp:ListItem>
                    <asp:ListItem>Medicine</asp:ListItem>
                    <asp:ListItem>Engineering &amp; Technology</asp:ListItem>
                    <asp:ListItem>Theology</asp:ListItem>
                    <asp:ListItem>Life Sciences</asp:ListItem>
                    <asp:ListItem>Commerce</asp:ListItem>
                    <asp:ListItem>Social Science</asp:ListItem>
                    <asp:ListItem>Science</asp:ListItem>
                    <asp:ListItem>Unani Medicine</asp:ListItem>
                    <asp:ListItem>Law</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" Text="Search" onclick="Button3_Click" />&nbsp;&nbsp;&nbsp;&nbsp;

    &nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <asp:Label ID="Label6" runat="server" Text="Batch " style="font-size: large"></asp:Label>
    <asp:DropDownList ID="DropDownList2" runat="server" 
        DataSourceID="SqlDataSource7" DataTextField="Batch" DataValueField="Batch" 
        Width="180px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
        ConnectionString="<%$ ConnectionStrings:hRegistrationConnectionString %>" 
        SelectCommand="SELECT DISTINCT [Batch] FROM [StudentData] ORDER BY [Batch] DESC">
    </asp:SqlDataSource>
&nbsp;&nbsp;
    <asp:Button ID="Button5" runat="server" Text="Search" onclick="Button5_Click" />
    <br />
    <br />
    <asp:Label ID="Label7" runat="server"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
    <div style=" overflow: auto;   ">
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" Visible="False" 
        EmptyDataText="No Recored Found" Width="100%" BackColor="#CCCCCC" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
            CellSpacing="2" DataKeyNames="Enrollment_No" ForeColor="Black" 
            AllowSorting="True" >
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="Room_No" HeaderText="Room_No" 
                SortExpression="Room_No" />
            <asp:BoundField DataField="Date" HeaderText="Date_Of_Joining" 
                SortExpression="Date" />
            <asp:BoundField DataField="Name" HeaderText="Name" 
                SortExpression="Name" />
            <asp:BoundField DataField="Enrollment_No" HeaderText="Enrollment_No" 
                SortExpression="Enrollment_No" ReadOnly="True" />
            <asp:BoundField DataField="Course" HeaderText="Course" 
                SortExpression="Course" />
            <asp:BoundField DataField="Batch" HeaderText="Batch" 
                SortExpression="Batch" />
            <asp:BoundField DataField="Semester" HeaderText="Semester" 
                SortExpression="Semester" />
            <asp:BoundField DataField="Faculty" HeaderText="Faculty" 
                SortExpression="Faculty" />
            <asp:BoundField DataField="Fauculty_No" HeaderText="Fauculty_No" 
                SortExpression="Fauculty_No" />
            <asp:BoundField DataField="Department" HeaderText="Department" 
                SortExpression="Department" />
            <asp:BoundField DataField="DOB" HeaderText="Date_Of_Birth" 
                SortExpression="DOB" />
            <asp:BoundField DataField="SplCat" HeaderText="Special_Category" 
                SortExpression="SplCat" />
            <asp:BoundField DataField="Father_Name" HeaderText="Father_Name" 
                SortExpression="Father_Name" />
            <asp:BoundField DataField="Mother_Name" HeaderText="Mother_Name" 
                SortExpression="Mother_Name" />
            <asp:BoundField DataField="Permanent_Address" HeaderText="Permanent_Address" 
                SortExpression="Permanent_Address" />
            <asp:BoundField DataField="District" HeaderText="District" 
                SortExpression="District" />
            <asp:BoundField DataField="State" HeaderText="State" 
                SortExpression="State" />
            <asp:BoundField DataField="Home_Phone_No" HeaderText="Home_Phone_No" 
                SortExpression="Home_Phone_No" />
            <asp:BoundField DataField="MobileNo" HeaderText="Student_Cont_No" 
                SortExpression="MobileNo" />
            <asp:BoundField DataField="Id" HeaderText="Email_Id" SortExpression="Id" />
            <asp:ImageField DataImageUrlField="Photo" HeaderText="Photograph" ControlStyle-Width="100" ControlStyle-Height="100"
                 />
      
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
        
        
        
            SelectCommand="SELECT [Room_No], [Date], [Name], [Enrollment_No], [Course], [Batch], [Semester], [Faculty], [Fauculty_No], [Department], [DOB], [SplCat], [Father_Name], [Mother_Name], [Permanent_Address], [District], [State], [Home_Phone_No], [MobileNo], [Id], [Photo] FROM [StudentData] WHERE ([Enrollment_No] = @Enrollment_No)">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="Enrollment_No" 
                PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource2" Visible="False" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
        CellSpacing="2" DataKeyNames="Enrollment_No" ForeColor="Black" 
        AllowSorting="True" EmptyDataText="NO RECORD FOUND" AllowPaging="True">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="Room_No" HeaderText="Room_No" 
                SortExpression="Room_No" />
            <asp:BoundField DataField="Date" HeaderText="Date_Of_Joining" 
                SortExpression="Date" />
            <asp:BoundField DataField="Name" HeaderText="Name" 
                SortExpression="Name" />
            <asp:BoundField DataField="Enrollment_No" HeaderText="Enrollment_No" 
                SortExpression="Enrollment_No" ReadOnly="True" />
            <asp:BoundField DataField="Course" HeaderText="Course" 
                SortExpression="Course" />
            <asp:BoundField DataField="Batch" HeaderText="Batch" 
                SortExpression="Batch" />
            <asp:BoundField DataField="Semester" HeaderText="Semester" 
                SortExpression="Semester" />
            <asp:BoundField DataField="Faculty" HeaderText="Faculty" 
                SortExpression="Faculty" />
            <asp:BoundField DataField="Fauculty_No" HeaderText="Fauculty_No" 
                SortExpression="Fauculty_No" />
            <asp:BoundField DataField="Department" HeaderText="Department" 
                SortExpression="Department" />
            <asp:BoundField DataField="DOB" HeaderText="Date_Of_Birth" 
                SortExpression="DOB" />
            <asp:BoundField DataField="SplCat" HeaderText="Special_Category" 
                SortExpression="SplCat" />
            <asp:BoundField DataField="Father_Name" HeaderText="Father_Name" 
                SortExpression="Father_Name" />
            <asp:BoundField DataField="Mother_Name" HeaderText="Mother_Name" 
                SortExpression="Mother_Name" />
            <asp:BoundField DataField="Permanent_Address" HeaderText="Permanent_Address" 
                SortExpression="Permanent_Address" />
            <asp:BoundField DataField="District" HeaderText="District" 
                SortExpression="District" />
            <asp:BoundField DataField="State" HeaderText="State" 
                SortExpression="State" />
            <asp:BoundField DataField="Home_Phone_No" HeaderText="Home_Phone_No" 
                SortExpression="Home_Phone_No" />
            <asp:BoundField DataField="MobileNo" HeaderText="Student_Cont_No" 
                SortExpression="MobileNo" />
            <asp:BoundField DataField="Id" HeaderText="Email_Id" SortExpression="Id" />
            <asp:BoundField DataField="Photo" HeaderText="Photograph" 
                SortExpression="Photo" />
            <asp:BoundField DataField="Room_No" HeaderText="Room_No" 
                SortExpression="Room_No" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Enrollment_No" HeaderText="Enrollment_No" 
                ReadOnly="True" SortExpression="Enrollment_No" />
            <asp:BoundField DataField="Course" HeaderText="Course" 
                SortExpression="Course" />
            <asp:BoundField DataField="Batch" HeaderText="Batch" SortExpression="Batch" />
            <asp:BoundField DataField="Semester" HeaderText="Semester" 
                SortExpression="Semester" />
            <asp:BoundField DataField="Faculty" HeaderText="Faculty" 
                SortExpression="Faculty" />
            <asp:BoundField DataField="Fauculty_No" HeaderText="Fauculty_No" 
                SortExpression="Fauculty_No" />
            <asp:BoundField DataField="Department" HeaderText="Department" 
                SortExpression="Department" />
            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
            <asp:BoundField DataField="SplCat" HeaderText="SplCat" 
                SortExpression="SplCat" />
            <asp:BoundField DataField="Father_Name" HeaderText="Father_Name" 
                SortExpression="Father_Name" />
            <asp:BoundField DataField="Mother_Name" HeaderText="Mother_Name" 
                SortExpression="Mother_Name" />
            <asp:BoundField DataField="Permanent_Address" HeaderText="Permanent_Address" 
                SortExpression="Permanent_Address" />
            <asp:BoundField DataField="District" HeaderText="District" 
                SortExpression="District" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="Home_Phone_No" HeaderText="Home_Phone_No" 
                SortExpression="Home_Phone_No" />
            <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" 
                SortExpression="MobileNo" />
            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
           <asp:ImageField DataImageUrlField="Photo" HeaderText="Photograph" ControlStyle-Width="100" ControlStyle-Height="100"
                 />
        
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="Gray" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:hRegistrationConnectionString %>" 
        
        
        
            SelectCommand="SELECT [Room_No], [Date], [Name], [Enrollment_No], [Course], [Batch], [Semester], [Faculty], [Fauculty_No], [Department], [DOB], [SplCat], [Father_Name], [Mother_Name], [Permanent_Address], [District], [State], [Home_Phone_No], [MobileNo], [Id], [Photo] FROM [StudentData] WHERE ([Course] = @Course)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList3" Name="Course" PropertyName="SelectedValue" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource3" Visible="False" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
        CellSpacing="2" DataKeyNames="Enrollment_No" ForeColor="Black" 
        AllowSorting="True" EmptyDataText="NO RECORD FOUND">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="Room_No" HeaderText="Room_No" 
                SortExpression="Room_No" />
            <asp:BoundField DataField="Date" HeaderText="Date_Of_Joining" 
                SortExpression="Date" />
            <asp:BoundField DataField="Name" HeaderText="Name" 
                SortExpression="Name" />
            <asp:BoundField DataField="Enrollment_No" HeaderText="Enrollment_No" 
                SortExpression="Enrollment_No" ReadOnly="True" />
            <asp:BoundField DataField="Course" HeaderText="Course" 
                SortExpression="Course" />
            <asp:BoundField DataField="Semester" HeaderText="Semester" 
                SortExpression="Semester" />
            <asp:BoundField DataField="Batch" HeaderText="Batch" SortExpression="Batch" />
            <asp:BoundField DataField="Faculty" HeaderText="Faculty" 
                SortExpression="Faculty" />
            <asp:BoundField DataField="Fauculty_No" HeaderText="Fauculty_No" 
                SortExpression="Fauculty_No" />
            <asp:BoundField DataField="Department" HeaderText="Department" 
                SortExpression="Department" />
            <asp:BoundField DataField="DOB" HeaderText="Date_Of_Birth" 
                SortExpression="DOB" />
            <asp:BoundField DataField="SplCat" HeaderText="Special_Category" 
                SortExpression="SplCat" />
            <asp:BoundField DataField="Father_Name" HeaderText="Father_Name" 
                SortExpression="Father_Name" />
            <asp:BoundField DataField="Mother_Name" HeaderText="Mother_Name" 
                SortExpression="Mother_Name" />
            <asp:BoundField DataField="Permanent_Address" HeaderText="Permanent_Address" 
                SortExpression="Permanent_Address" />
            <asp:BoundField DataField="District" HeaderText="District" 
                SortExpression="District" />
            <asp:BoundField DataField="State" HeaderText="State" 
                SortExpression="State" />
            <asp:BoundField DataField="Home_Phone_No" HeaderText="Home_Phone_No" 
                SortExpression="Home_Phone_No" />
            <asp:BoundField DataField="MobileNo" HeaderText="Student_Cont_No" 
                SortExpression="MobileNo" />
            <asp:BoundField DataField="Id" HeaderText="Email_Id" SortExpression="Id" />
            <asp:ImageField DataImageUrlField="Photo" HeaderText="Photograph" ControlStyle-Width="100" ControlStyle-Height="100"
                 />

        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="Gray" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:hRegistrationConnectionString %>" 
        
        
        
            SelectCommand="SELECT [Room_No], [Date], [Name], [Enrollment_No], [Course], [Batch], [Semester], [Faculty], [Fauculty_No], [Department], [DOB], [SplCat], [Father_Name], [Mother_Name], [Permanent_Address], [District], [State], [Home_Phone_No], [MobileNo], [Id], [Photo] FROM [StudentData] WHERE ([Faculty] = @Faculty)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownListF" Name="Faculty" PropertyName="SelectedValue" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    

    
    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource5" Visible="False" 
        EmptyDataText="NO RECORD FOUND" BackColor="#CCCCCC" BorderColor="#999999" 
        BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
        DataKeyNames="Enrollment_No" ForeColor="Black" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="Room_No" HeaderText="Room_No" 
                SortExpression="Room_No" />
            <asp:BoundField DataField="Date" HeaderText="Date_Of_Joining" 
                SortExpression="Date" />
            <asp:BoundField DataField="Name" HeaderText="Name" 
                SortExpression="Name" />
            <asp:BoundField DataField="Enrollment_No" HeaderText="Enrollment_No" 
                SortExpression="Enrollment_No" ReadOnly="True" />
            <asp:BoundField DataField="Course" HeaderText="Course" 
                SortExpression="Course" />
            <asp:BoundField DataField="Batch" HeaderText="Batch" 
                SortExpression="Batch" />
            <asp:BoundField DataField="Semester" HeaderText="Semester" 
                SortExpression="Semester" />
            <asp:BoundField DataField="Faculty" HeaderText="Faculty" 
                SortExpression="Faculty" />
            <asp:BoundField DataField="Fauculty_No" HeaderText="Fauculty_No" 
                SortExpression="Fauculty_No" />
            <asp:BoundField DataField="Department" HeaderText="Department" 
                SortExpression="Department" />
            <asp:BoundField DataField="DOB" HeaderText="Date_Of_Birth" 
                SortExpression="DOB" />
            <asp:BoundField DataField="SplCat" HeaderText="Special_Category" 
                SortExpression="SplCat" />
            <asp:BoundField DataField="Father_Name" HeaderText="Father_Name" 
                SortExpression="Father_Name" />
            <asp:BoundField DataField="Mother_Name" HeaderText="Mother_Name" 
                SortExpression="Mother_Name" />
            <asp:BoundField DataField="Permanent_Address" HeaderText="Permanent_Address" 
                SortExpression="Permanent_Address" />
            <asp:BoundField DataField="District" HeaderText="District" 
                SortExpression="District" />
            <asp:BoundField DataField="State" HeaderText="State" 
                SortExpression="State" />
            <asp:BoundField DataField="Home_Phone_No" HeaderText="Home_Phone_No" 
                SortExpression="Home_Phone_No" />
            <asp:BoundField DataField="MobileNo" HeaderText="Student_Cont_No" 
                SortExpression="MobileNo" />
            <asp:BoundField DataField="Id" HeaderText="Email_Id" SortExpression="Id" />
            <asp:ImageField DataImageUrlField="Photo" HeaderText="Photograph" ControlStyle-Width="100" ControlStyle-Height="100"
                 />
          
        </Columns>
        <EmptyDataRowStyle ForeColor="#993333" HorizontalAlign="Center" />
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
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
        ConnectionString="<%$ ConnectionStrings:hRegistrationConnectionString %>" 
        
        
        
            SelectCommand="SELECT [Room_No], [Date], [Name], [Enrollment_No], [Course], [Batch], [Semester], [Faculty], [Fauculty_No], [Department], [DOB], [SplCat], [Father_Name], [Mother_Name], [Permanent_Address], [District], [State], [Home_Phone_No], [MobileNo], [Id], [Photo] FROM [StudentData] WHERE ([Batch] = @Batch)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList2" Name="Batch" PropertyName="SelectedValue" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    
    <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource6" 
        DataKeyNames="Enrollment_No" Width="145px" BackColor="#CCCCCC" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
            CellSpacing="2" ForeColor="Black" AllowSorting="True" 
            EmptyDataText="No Record Found"  >
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="Room_No" HeaderText="Room_No" 
                SortExpression="Room_No" >
            </asp:BoundField>
            <asp:BoundField DataField="Date" HeaderText="Date_Of_Joining" 
                SortExpression="Date" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Enrollment_No" HeaderText="Enrollment_No" 
                SortExpression="Enrollment_No" ReadOnly="True" />
            <asp:BoundField DataField="Course" HeaderText="Course" 
                SortExpression="Course" />
            <asp:BoundField DataField="Batch" HeaderText="Batch" 
                SortExpression="Batch" />
            <asp:BoundField DataField="Semester" HeaderText="Semester" 
                SortExpression="Semester" />
            <asp:BoundField DataField="Faculty" HeaderText="Faculty" 
                SortExpression="Faculty" />
            <asp:BoundField DataField="Fauculty_No" HeaderText="Fauculty_No" 
                SortExpression="Fauculty_No" />
            <asp:BoundField DataField="Department" HeaderText="Department" 
                SortExpression="Department" />
            <asp:BoundField DataField="DOB" HeaderText="Date_Of_Birth" 
                SortExpression="DOB" />
            <asp:BoundField DataField="SplCat" HeaderText="Splecial_Category" 
                SortExpression="SplCat" />
            <asp:BoundField DataField="Father_Name" HeaderText="Father_Name" 
                SortExpression="Father_Name" />
            <asp:BoundField DataField="Mother_Name" HeaderText="Mother_Name" 
                SortExpression="Mother_Name" />
            <asp:BoundField DataField="Permanent_Address" HeaderText="Permanent_Address" 
                SortExpression="Permanent_Address" />
            <asp:BoundField DataField="District" HeaderText="District" 
                SortExpression="District" />
            <asp:BoundField DataField="State" HeaderText="State" 
                SortExpression="State" />
            <asp:BoundField DataField="Home_Phone_No" HeaderText="Home_Phone_No" 
                SortExpression="Home_Phone_No" />
            <asp:BoundField DataField="MobileNo" HeaderText="Student_Cont_No." 
                SortExpression="MobileNo" />
            <asp:BoundField DataField="Id" HeaderText="Email_Id" SortExpression="Id" />
            <asp:ImageField DataImageUrlField="Photo" HeaderText="Photograph" ControlStyle-Width="100" ControlStyle-Height="100"
                 />
           
        </Columns>
        <EditRowStyle Width="5px" />
        <EmptyDataTemplate>
            <asp:Image ID="Image13" runat="server" Height="50px" 
                ImageUrl='<%# Eval("Photo") %>' Width="50px" />
        </EmptyDataTemplate>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" ForeColor="White" Font-Bold="True" />
        
        <RowStyle Width="5px" BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="Gray" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
        ConnectionString="<%$ ConnectionStrings:hRegistrationConnectionString %>" 
        
        
        
        
        SelectCommand="SELECT [Room_No], [Date], [Name], [Enrollment_No], [Course], [Batch], [Semester], [Faculty], [Fauculty_No], [Department], [DOB], [SplCat], [Father_Name], [Mother_Name], [Permanent_Address], [District], [State], [Home_Phone_No], [Id], [Photo], [MobileNo] FROM [StudentData]" 
        DeleteCommand="DELETE FROM [StudentData] WHERE [Enrollment_No] = @Enrollment_No" 
        InsertCommand="INSERT INTO [StudentData] ([Room_No], [Date], [Name], [Enrollment_No], [Course], [Batch], [Semester], [Faculty], [Fauculty_No], [Department], [DOB], [SplCat], [Father_Name], [Mother_Name], [Permanent_Address], [District], [State], [Home_Phone_No], [Id], [Photo], [MobileNo]) VALUES (@Room_No, @Date, @Name, @Enrollment_No, @Course, @Batch, @Semester, @Faculty, @Fauculty_No, @Department, @DOB, @SplCat, @Father_Name, @Mother_Name, @Permanent_Address, @District, @State, @Home_Phone_No, @Id, @Photo, @MobileNo)" 
        UpdateCommand="UPDATE [StudentData] SET [Room_No] = @Room_No, [Date] = @Date, [Name] = @Name, [Course] = @Course, [Batch] = @Batch, [Semester] = @Semester, [Faculty] = @Faculty, [Fauculty_No] = @Fauculty_No, [Department] = @Department, [DOB] = @DOB, [SplCat] = @SplCat, [Father_Name] = @Father_Name, [Mother_Name] = @Mother_Name, [Permanent_Address] = @Permanent_Address, [District] = @District, [State] = @State, [Home_Phone_No] = @Home_Phone_No, [Id] = @Id, [Photo] = @Photo, [MobileNo] = @MobileNo WHERE [Enrollment_No] = @Enrollment_No">
        <DeleteParameters>
            <asp:Parameter Name="Enrollment_No" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Room_No" Type="String" />
            <asp:Parameter Name="Date" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Enrollment_No" Type="String" />
            <asp:Parameter Name="Course" Type="String" />
            <asp:Parameter Name="Batch" Type="String" />
            <asp:Parameter Name="Semester" Type="String" />
            <asp:Parameter Name="Faculty" Type="String" />
            <asp:Parameter Name="Fauculty_No" Type="String" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="DOB" Type="String" />
            <asp:Parameter Name="SplCat" Type="String" />
            <asp:Parameter Name="Father_Name" Type="String" />
            <asp:Parameter Name="Mother_Name" Type="String" />
            <asp:Parameter Name="Permanent_Address" Type="String" />
            <asp:Parameter Name="District" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Home_Phone_No" Type="String" />
            <asp:Parameter Name="Id" Type="String" />
            <asp:Parameter Name="Photo" Type="String" />
            <asp:Parameter Name="MobileNo" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Room_No" Type="String" />
            <asp:Parameter Name="Date" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Course" Type="String" />
            <asp:Parameter Name="Batch" Type="String" />
            <asp:Parameter Name="Semester" Type="String" />
            <asp:Parameter Name="Faculty" Type="String" />
            <asp:Parameter Name="Fauculty_No" Type="String" />
            <asp:Parameter Name="Department" Type="String" />
            <asp:Parameter Name="DOB" Type="String" />
            <asp:Parameter Name="SplCat" Type="String" />
            <asp:Parameter Name="Father_Name" Type="String" />
            <asp:Parameter Name="Mother_Name" Type="String" />
            <asp:Parameter Name="Permanent_Address" Type="String" />
            <asp:Parameter Name="District" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="Home_Phone_No" Type="String" />
            <asp:Parameter Name="Id" Type="String" />
            <asp:Parameter Name="Photo" Type="String" />
            <asp:Parameter Name="MobileNo" Type="String" />
            <asp:Parameter Name="Enrollment_No" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </div>
    <br />
    <br />
</asp:Content>
