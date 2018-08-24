<%@ Page Title="Canteen" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Canteen.aspx.cs" Inherits="hostel________.canteen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            text-align: center;
            font-weight:bold;
            font-size:22pt;
            height: 55px;
        }
    .style2
    {
        font-size: x-large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="image" style="width: 100%; height: 25%"><asp:Image ID="Image1" runat="server" ImageUrl="~/images/canteen.jpg" Width="98%" Height="250px" BorderColor="#990033" BorderStyle="Solid" />
  </div><br />
  <div>
 
      <h1 class="style1"><strong>Items and it's respective price</strong></h1>
      </div>
      <div style="width: 71%; height: 548px; float: left;">
          <asp:Image ID="Image2" runat="server" ImageUrl="~/images/canteen_menu.jpg" 
              Height="542px" Width="686px" />
      </div>
      <div style="float: right; width: 24%; height: 289px; margin-left: 0px;">
      <p>
          <asp:Image ID="Image3" runat="server" ImageUrl="~/images/canteen_m2.png" 
              Height="55px" style="margin-left: 8px; margin-top: 35px" Width="220px" />
              <br /><br />
              &nbsp;&nbsp;&nbsp;<em><span class="style2">Complimented Special </span></em>
      </p>
      </div>
 
</asp:Content>
