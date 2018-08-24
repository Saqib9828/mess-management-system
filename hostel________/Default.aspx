<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="hostel________._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
 
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
    </style>
 
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div class = "slideshow" style="width: 100%;  float: left; margin-bottom: 25px;">
     
      <div class="img_slider" 
                     style="background-color: #000000; width: 100%; height: 80%">
                     
                     
                     <div class="img_slider" 
                     style="background-color: #000000; width: 100%; height: 80%">
                     
                     
                     <div id="sliderFrame">
               
        <div id="slider">   
            <img src="Styles/v1.jpg" alt="" style="width: 100%; height: 300px;" />
            <img src="Styles/v2.jpg" alt="" style="width: 100%; height: 300px;" />
            <img src="Styles/v3.jpg" alt="" style="width: 100%; height: 300px;" />
            <img src="Styles/v4.jpg" alt="" style="width: 100%; height: 300px;" />
            <img src="Styles/v5.jpg" alt="" style="width: 100%; height: 300px;" />
            <img src="Styles/v6.jpg" alt=""  style="width: 100%; height: 300px;"/>
            <img src="Styles/v8.jpg" alt=""  style="width: 100%; height: 300px;"/>
            <img src="Styles/v9.jpg" alt="" style="width: 100%; height: 300px; "/>
            
            </div>


    </div>
     
     </div>
     </div>
     </div>

<div class="notice" style="width: 30%; float: left; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10pt; background-color: #0c0c0c; height: 450px; margin-bottom: 25px;">
<h1 style="color: #FF6666; font-size: medium; font-weight: bold; text-decoration: none;
           text-transform: uppercase" align="center" class="style1">Notice Board</h1>
           <hr style="width: 96%; height: -12px;" />
  
   <marquee direction="up" scrollamount="3" onmouseover="this.stop()" 
        onmouseout="this.start()" style="height: 394px" scrolldelay="0">
          <p style="height: 400px"><asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
              <AlternatingItemTemplate>
                  <li style="">Notice_Id:
                      <asp:Label ID="Notice_IdLabel" runat="server" Text='<%# Eval("Notice_Id") %>' />
                      <br />
                      Notice_Date:
                      <asp:Label ID="Notice_DateLabel" runat="server" 
                          Text='<%# Eval("Notice_Date") %>' />
                      <br />
                      Notice:
                      <asp:Label ID="NoticeLabel" runat="server" Text='<%# Eval("Notice") %>' />
                      <br />
                  </li>
              </AlternatingItemTemplate>
              <EditItemTemplate>
                  <li style="">Notice_Id:
                      <asp:TextBox ID="Notice_IdTextBox" runat="server" 
                          Text='<%# Bind("Notice_Id") %>' />
                      <br />
                      Notice_Date:
                      <asp:TextBox ID="Notice_DateTextBox" runat="server" 
                          Text='<%# Bind("Notice_Date") %>' />
                      <br />
                      Notice:
                      <asp:TextBox ID="NoticeTextBox" runat="server" Text='<%# Bind("Notice") %>' />
                      <br />
                      <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                          Text="Update" />
                      <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                          Text="Cancel" />
                  </li>
              </EditItemTemplate>
              <EmptyDataTemplate>
                  No data was returned.
              </EmptyDataTemplate>
              <InsertItemTemplate>
                  <li style="">Notice_Id:
                      <asp:TextBox ID="Notice_IdTextBox" runat="server" 
                          Text='<%# Bind("Notice_Id") %>' />
                      <br />
                      Notice_Date:
                      <asp:TextBox ID="Notice_DateTextBox" runat="server" 
                          Text='<%# Bind("Notice_Date") %>' />
                      <br />
                      Notice:
                      <asp:TextBox ID="NoticeTextBox" runat="server" Text='<%# Bind("Notice") %>' />
                      <br />
                      <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                          Text="Insert" />
                      <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                          Text="Clear" />
                  </li>
              </InsertItemTemplate>
              <ItemSeparatorTemplate>
                  <br />
              </ItemSeparatorTemplate>
              <ItemTemplate>
                  <li style="">Notice_Id:
                      <asp:Label ID="Notice_IdLabel" runat="server" Text='<%# Eval("Notice_Id") %>' />
                      <br />
                      Notice_Date:
                      <asp:Label ID="Notice_DateLabel" runat="server" 
                          Text='<%# Eval("Notice_Date") %>' />
                      <br />
                      Notice:
                      <asp:Label ID="NoticeLabel" runat="server" Text='<%# Eval("Notice") %>' />
                      <br />
                  </li>
              </ItemTemplate>
              <LayoutTemplate>
                  <ul ID="itemPlaceholderContainer" runat="server" style="">
                      <li runat="server" id="itemPlaceholder" />
                  </ul>
                  <div style="">
                  </div>
              </LayoutTemplate>
              <SelectedItemTemplate>
                  <li style="">Notice_Id:
                      <asp:Label ID="Notice_IdLabel" runat="server" Text='<%# Eval("Notice_Id") %>' />
                      <br />
                      Notice_Date:
                      <asp:Label ID="Notice_DateLabel" runat="server" 
                          Text='<%# Eval("Notice_Date") %>' />
                      <br />
                      Notice:
                      <asp:Label ID="NoticeLabel" runat="server" Text='<%# Eval("Notice") %>' />
                      <br />
                  </li>
              </SelectedItemTemplate>
          </asp:ListView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
              ConnectionString="<%$ ConnectionStrings:hRegistrationConnectionString %>" 
              SelectCommand="SELECT * FROM [Notice_Data] ORDER BY [Notice_Date] DESC">
          </asp:SqlDataSource></p></marquee> 
  </div>

  <div class="intro" style="width: 68%; float: left; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 12pt; background-color: #0c0c0c; margin-left: 10px; height: 450px; margin-bottom: 25px;">
  <div style=" height: 150px;">
  <p style="width: auto; height: auto">
    Sir Syed Hall (North) along with South is the Heart of the University. To Begin with it has initially  served as the campus of MAO College. All the Departments such as Faculty of Law, Commerce, Social Science and Arts etc. operated from the premises.
  <br /><br />&nbsp;&nbsp;&nbsp;
      <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/About.aspx" 
          style="font-size: medium">Read more</asp:HyperLink>
      </p>
</div>

<div class="logins" style="float: left; width: 45%; height:270px; background-color: #090909; margin-left: 15px; ">
<h1 style="font-family: 'Times New Roman', Times, serif; color: #FF6666; font-size: 14pt; font-weight: bold; text-decoration: none;
           text-transform: uppercase" align="center" class="style1">quick logins</h1>
             
          
          <hr style="width: 90%; height: -12px;" />
        
          <div class="loginsde">
            <p style="margin-left:40px; margin-top: 40px; width: auto; height: auto;">
     <a href="provost/provost_login.aspx" class="loginsde">Provost Login</a> <br /> 
     <a href="Admin/admin_login.aspx" class="loginsde">Staff Login</a> <br />
    <a href="munsi/munsilogin.aspx" class="loginsde">Munshi Login</a> <br />
     <a href="Student/student_login.aspx" class="loginsde">Student Login</a> 
     </p>
      </div>
      
</div>


<div class="links" style="float: right; width: 45%; height:270px; background-color: #090909;  margin-right: 15px;">

 <h1 style=" font-family: 'Times New Roman', Times, serif; color: #FF6666; font-size: medium; font-weight: bold; text-decoration: none;
           text-transform: uppercase" align="center" class="style1">Usefull Links</h1>
           <hr style="width: 90%; height: -12px;" />

           <div class="loginsde">
            <p style="font-size: medium; text-transform: uppercase; text-decoration: none; margin-left: 40px; margin-bottom: 40px; width: auto; height: auto;">
     <a href="http://www.amu.ac.in" class="loginsde">amu home</a> <br /> 
     <a href="http://www.amucontrollerexams.com" class="loginsde">controllerexams amu</a><br /> 
     <a href="http://www.ugc.ac.in" class="loginsde">ugc</a> <br /> 
     <a href="http://www.csir.co.za/" class="loginsde">csir</a> <br />
     <a href="http://scholarship.up.nic.in/" class="loginsde">up scholarship</a> <br /> 
     <a href="http://www.momascholarship.gov.in/" class="loginsde">moma scholarship</a><br /> 
      <a href="http://www.nptel.ac.in" class="loginsde">nptl</a> 
       
    </p>   
 </div>

</div>

  
  </div>


                                                                                             
 </asp:Content>