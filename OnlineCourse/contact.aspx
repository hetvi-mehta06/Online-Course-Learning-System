<%@ Page Title="" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="OnlineCourse.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <section class="hero-wrap hero-wrap-2" style="background-image:url('images/bg_2.jpg');">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
            <div class="col-md-9 text-center pb-5">
                <h1 class="bread">Contact us</h1>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section">
<div class="container">

<div class="row justify-content-center">
<div class="col-md-12">

<div class="wrapper shadow">

<div class="row no-gutters">

<!-- LEFT SIDE -->

<div class="col-lg-4 col-md-5 d-flex align-items-stretch">

<div class="info-wrap bg-primary w-100 p-md-5 p-4 text-white">

<h3 class="mb-4 text-white">Let's get in touch</h3>

<p class="mb-4">
We're open for any suggestion or just to have a chat
</p>

<div class="dbox w-100 d-flex mb-4">

<div class="icon mr-3">
<span class="fa fa-map-marker"></span>
</div>

<div class="text">
<p>
<strong>Address:</strong><br />
Ahmedabad, Gujarat, India
</p>
</div>

</div>

<div class="dbox w-100 d-flex mb-4">

<div class="icon mr-3">
<span class="fa fa-phone"></span>
</div>

<div class="text">
<p>
<strong>Phone:</strong><br />
+91 9876543210
</p>
</div>

</div>

<div class="dbox w-100 d-flex mb-4">

<div class="icon mr-3">
<span class="fa fa-paper-plane"></span>
</div>

<div class="text">
<p>
<strong>Email:</strong><br />
learnsphere@gmail.com
</p>
</div>

</div>

<div class="dbox w-100 d-flex">

<div class="icon mr-3">
<span class="fa fa-globe"></span>
</div>

<div class="text">
<p>
<strong>Website:</strong><br />
www.learnsphere.com
</p>
</div>

</div>

</div>

</div>

<!-- RIGHT SIDE -->

<div class="col-lg-8 col-md-7">

<div class="contact-wrap w-100 p-md-5 p-4">

<h3 class="mb-4">Get in touch</h3>

<div class="row">

<div class="col-md-6">

<div class="form-group">

<asp:Label ID="lblName"
runat="server"
Text="Full Name"
CssClass="label">
</asp:Label>

<asp:TextBox
ID="txtName"
runat="server"
CssClass="form-control"
placeholder="Name">
</asp:TextBox>

</div>

</div>

<div class="col-md-6">

<div class="form-group">

<asp:Label
ID="lblEmail"
runat="server"
Text="Email Address"
CssClass="label">
</asp:Label>

<asp:TextBox
ID="txtEmail"
runat="server"
TextMode="Email"
CssClass="form-control"
placeholder="Email">
</asp:TextBox>

</div>

</div>

<div class="col-md-12">

<div class="form-group">

<asp:Label
ID="lblSubject"
runat="server"
Text="Subject"
CssClass="label">
</asp:Label>

<asp:TextBox
ID="txtSubject"
runat="server"
CssClass="form-control"
placeholder="Subject">
</asp:TextBox>

</div>

</div>

<div class="col-md-12">

<div class="form-group">

<asp:Label
ID="lblMessage"
runat="server"
Text="Message"
CssClass="label">
</asp:Label>

<asp:TextBox
ID="txtMessage"
runat="server"
TextMode="MultiLine"
Rows="5"
CssClass="form-control"
placeholder="Message">
</asp:TextBox>

</div>

</div>

<div class="col-md-12">

<div class="form-group">

<asp:Button
ID="btnSend"
runat="server"
Text="Send Message"
CssClass="btn btn-primary" />

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

</div>

<!-- GOOGLE MAP -->

<div class="row mt-5">

<div class="col-md-12">

<iframe
src="https://www.google.com/maps?q=Ahmedabad,Gujarat&output=embed"
width="100%"
height="450"
style="border:0;"
allowfullscreen=""
loading="lazy">
</iframe>

</div>

</div>

</div>

</section>

    </asp:Content>