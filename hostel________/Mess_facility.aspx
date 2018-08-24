<%@ Page Title="Mess" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Mess_facility.aspx.cs" Inherits="hostel________.mess_facity" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="image" style="width: 100%; height: 25%"><asp:Image ID="Image1" runat="server" ImageUrl="~/images/mess.jpg" Width="98%" Height="250px" BorderColor="#990033" BorderStyle="Solid" />
  </div>
<div class="info" style="width: 40%; height:555px; float: left">
  
  <p style="width: 100%; height: 532px;">A large Maess Hall with a capacity of 500 members to dine at the same time enables all students and staff to have launc and breakfast.
                         <br /> A large modern kitchen with steam cooking is attached to the mess hall.
The Mess Menu is updated every month according to the Referendum and new combinations are tried. Two menus are used per month and each menu is used in alternate weeks. 
 A modem bakery and RO water refrigerater included in mess.
There are saperate dishes for Vegetarian and Non-Vegetarian in the Mess Black to dine.


 
<br /><br />
<h>Mess Timings</h>
<br />
Breakfast: 7.30am to 9.30am (weekdays) / 8.00am to 10.00am (weekends).<br /><br />
Lunch: 12pm to 2pm.<br />
Tiffin: 4.30pm to 6pm.<br />
Dinner: 7.30pm to 9.30pm.<br /><br />
   &nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;   <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Canteen.aspx" runat="server">CANTEEN FACILITY.....</asp:HyperLink>
    </p>
</div>
<div class="table" style="width: 57%; height: 555px; float: left">
    <asp:Image ID="Image2" runat="server" ImageUrl="~/images/mess_table.jpg" 
        Width="98%" Height="480px" BorderColor="#333300" BorderStyle="Ridge" />
</div>
</asp:Content>
