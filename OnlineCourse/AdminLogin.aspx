<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="OnlineCourse.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login - LearnSphere</title>

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />

    <link rel="stylesheet" href="css/animate.css" />
    <link rel="stylesheet" href="css/owl.carousel.min.css" />
    <link rel="stylesheet" href="css/owl.theme.default.min.css" />
    <link rel="stylesheet" href="css/magnific-popup.css" />
    <link rel="stylesheet" href="css/bootstrap-datepicker.css" />
    <link rel="stylesheet" href="css/jquery.timepicker.css" />
    <link rel="stylesheet" href="css/flaticon.css" />
    <link rel="stylesheet" href="css/style.css" />

</head>

<body>

<form id="form1" runat="server">

<!-- Hero Banner -->

<section class="hero-wrap hero-wrap-2" style="background-image:url('images/bg_2.jpg');">
    <div class="overlay"></div>

    <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
            <div class="col-md-9 text-center pb-5">
                <h1 class="bread">Admin Login</h1>
                <p class="breadcrumbs">LearnSphere Administration Panel</p>
            </div>
        </div>
    </div>
</section>

<!-- Login Form -->

<section class="ftco-section">

<div class="container">

<div class="row justify-content-center">

<div class="col-md-6">

<div class="bg-white shadow rounded p-5">

<h2 class="text-center mb-4">
Administrator Login
</h2>

<div class="form-group">

<label><strong>Admin Email</strong></label>

<input type="email"
class="form-control"
placeholder="admin@learnsphere.com" />

</div>

<div class="form-group">

<label><strong>Password</strong></label>

<input type="password"
class="form-control"
placeholder="Enter Password" />

</div>

<div class="form-group text-center mt-4">

<a href="Dashboard.aspx"
class="btn btn-primary btn-lg">

Login

</a>

</div>

<hr />

<p class="text-center">

Return to

<a href="index.aspx">

Home Page

</a>

</p>

</div>

</div>

</div>

</div>

</section>

<script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>

</form>

</body>
</html>
