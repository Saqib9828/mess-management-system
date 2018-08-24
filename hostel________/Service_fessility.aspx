<%@ Page Title="Facility" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Service_fessility.aspx.cs" Inherits="hostel________.Service_fessility" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            text-align: justify;
            font-size: large;
        }
        .style2
        {
            text-align: left;
        }
        .style3
        {
            font-size: large;
            text-align: left;
        }
        .style4
        {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div style="float: left; width: 74%">
<p class="style1">
A healthy mind dwells in a healthy body and a healthy body is maintained in pleasing and healthy environment. We have provided the accommodation for the students in a pollution free environment.
<br /></p>
<h1 class="style2"><strong style="font-size: x-large">&nbsp;&nbsp;&nbsp; </strong>
    <span class="style4"><strong>Services</strong></span></h1>
<br />

<ul type="circle" style="font-family: 'Times New Roman', Times, serif; font-size: 13pt; font-variant: normal; text-transform: capitalize">
    <li>Reception.</li>
    <li>Room Service.</li> 
    <li>Parking for Vehicle.</li>
    <li>Internet (WiFi).</li>
    <li>24 hours running hot and R.O. cold water.</li>
    <li>24 Hours Power Backup.</li>
    <li>Fresh and healthy food facilities.</li>
    <li>Laundry Facility - Washing and ironing of the clothes.</li>
    <li>Clean Bathroom Facilities is available.</li>
    <li>Gym facilities is also available.</li>
    <li>Common room with a T.V and Indoor Game.</li>
    <li>Ground for Outdoor game.</li>
    </ul>
    <br />
    <h1 class="style2">&nbsp;&nbsp;&nbsp; <span class="style3">Hostel Allotment</span></h1>
    <p>
    Based on the recommendation of the Hostel Allotment Committee, hostel  is allotted to eligible students. Students from outside Aligarh and have highest percentage of the qualified examination, given preference in the hostel acocomodation as possible can be accommodated in the hostels.
    </p>
    <h1 class="style2">&nbsp;&nbsp; <span class="style3">&nbsp;Hostel & Mess Fee Structure</span></h1>
    <p>A regular student is charged Rs 15,00 monthly for every bonafide student.</p>
    </div>
<div style="float:left; width: 24%; height: 771px; margin-top: 20px;">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/facility_hostel.jpg" 
        Height="680px" Width="232px" />
</div>
</asp:Content>
