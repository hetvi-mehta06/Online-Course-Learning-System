<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="logout.aspx.cs" Inherits="OnlineCourse.logout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="hero-wrap hero-wrap-2" style="background-image:url('images/bg_2.jpg');">
    <div class="overlay"></div>

    <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
            <div class="col-md-9 text-center pb-5">
                <h1 class="bread">Logout</h1>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section">

<div class="container">

<div class="row justify-content-center">

<div class="col-md-6">

<div class="bg-white shadow rounded p-5 text-center">

<h2 class="mb-4 text-success">
You have been logged out successfully.
</h2>

<p>
Thank you for using <strong>LearnSphere</strong>.
</p>

<a href="login.aspx" class="btn btn-primary mt-3">
Login Again
</a>

<a href="index.aspx" class="btn btn-outline-primary mt-3">
Go to Home
</a>

</div>

</div>

</div>

</div>

</section>
</asp:Content>
