<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Panel.aspx.cs" Inherits="OnlineCourse.Panel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>LearnSphere - Select Panel</title>

<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800" rel="stylesheet" />

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />

<link rel="stylesheet" href="css/bootstrap.min.css" />

<link rel="stylesheet" href="css/style.css" />

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins',sans-serif;
}

body{
background:#eef4ff;
overflow-x:hidden;
}

/* HERO */

.hero{

min-height:100vh;

background:
linear-gradient(135deg,#4F46E5 0%,#6D28D9 50%,#2563EB 100%);

position:relative;

overflow:hidden;

display:flex;

align-items:center;

}

.hero::before{

content:'';

position:absolute;

width:500px;

height:500px;

border-radius:50%;

background:rgba(255,255,255,.08);

top:-150px;

left:-120px;

}

.hero::after{

content:'';

position:absolute;

width:420px;

height:420px;

border-radius:50%;

background:rgba(255,255,255,.06);

bottom:-120px;

right:-120px;

}

.hero .container{

position:relative;

z-index:10;

}

.hero-text h5{

color:#E0E7FF;

letter-spacing:2px;

font-weight:600;

text-transform:uppercase;

margin-bottom:15px;

}

.hero-text h1{

font-size:68px;

font-weight:800;

color:#fff;

line-height:1.2;

margin-bottom:20px;

}

.hero-text p{

font-size:20px;

color:#E5E7EB;

max-width:540px;

line-height:34px;

margin-bottom:35px;

}

.hero-image img{

width:100%;

max-width:520px;

animation:float 4s ease-in-out infinite;

filter:drop-shadow(0 30px 50px rgba(0,0,0,.25));

}

@keyframes float{

0%{transform:translateY(0);}
50%{transform:translateY(-15px);}
100%{transform:translateY(0);}

}

.btn-main{

background:#fff;

color:#4F46E5;

padding:14px 35px;

border-radius:50px;

font-weight:700;

text-decoration:none;

margin-right:15px;

transition:.3s;

}

.btn-main:hover{

background:#EEF2FF;

text-decoration:none;

color:#4F46E5;

}

.btn-outline-custom{

border:2px solid #fff;

padding:14px 35px;

border-radius:50px;

color:#fff;

font-weight:700;

text-decoration:none;

transition:.3s;

}

.btn-outline-custom:hover{

background:#fff;

color:#4F46E5;

text-decoration:none;

}

</style>

</head>

<body>

<form id="form1" runat="server">

<section class="hero">

<div class="container">

<div class="row align-items-center">

<div class="col-lg-6 hero-text">

<h5>WELCOME TO LEARNSPHERE</h5>

<h1>
Learn Without Limits
</h1>

<p>

A modern online learning platform where students can
discover courses, watch HD video lessons and earn
professional certificates.

</p>

<a href="Index2.aspx" class="btn-main">
Student Panel
</a>

<a href="AdminLogin.aspx" class="btn-outline-custom">
Admin Login
</a>

</div>

<div class="col-lg-6 text-center hero-image">

<img src="images/panel-banner.png" class="img-fluid"/>

</div>

</div>

</div>

</section>

<!-- ========================= -->
<!-- Select Your Panel -->
<!-- ========================= -->

<section style="padding:90px 0;background:#eef4ff;">

<div class="container">

<div class="text-center mb-5">

<span style="
background:#4F46E5;
color:white;
padding:8px 22px;
border-radius:30px;
font-size:14px;
font-weight:600;
letter-spacing:1px;">

GET STARTED

</span>

<h2 style="
font-size:42px;
font-weight:700;
color:#222;
margin-top:25px;">

Choose Your Panel

</h2>

<p style="
color:#6b7280;
font-size:18px;
max-width:650px;
margin:auto;">

Select the appropriate panel to continue your learning journey.

</p>

</div>

<div class="row">

<!-- Public -->

<div class="col-lg-4 mb-4">

<div class="panel-box">

<div class="icon-circle bg-primary">

<i class="fa fa-globe"></i>

</div>

<h3>Public Website</h3>

<p>

Explore courses, categories,
about us and contact information.

</p>

<a href="index.aspx"
class="btn btn-primary btn-block">

Visit Website

</a>

</div>

</div>

<!-- Student -->

<div class="col-lg-4 mb-4">

<div class="panel-box">

<div class="icon-circle bg-success">

<i class="fa fa-graduation-cap"></i>

</div>

<h3>Student Panel</h3>

<p>

Access your enrolled courses,
video lessons and certificates.

</p>

<a href="Index2.aspx"
class="btn btn-success btn-block">

Student Login

</a>

</div>

</div>

<!-- Admin -->

<div class="col-lg-4 mb-4">

<div class="panel-box">

<div class="icon-circle bg-danger">

<i class="fa fa-user-secret"></i>

</div>

<h3>Admin Panel</h3>

<p>

Manage students, courses,
videos and system settings.

</p>

<a href="AdminLogin.aspx"
class="btn btn-danger btn-block">

Admin Login

</a>

</div>

</div>

</div>

</div>

</section>

<style>

.panel-box{

background:rgba(255,255,255,.70);

backdrop-filter:blur(12px);

border-radius:25px;

padding:45px 30px;

text-align:center;

box-shadow:0 15px 35px rgba(79,70,229,.12);

transition:.35s;

height:100%;

border:1px solid rgba(255,255,255,.4);

}

.panel-box:hover{

transform:translateY(-12px);

box-shadow:0 25px 45px rgba(79,70,229,.25);

}

.icon-circle{

width:90px;

height:90px;

border-radius:50%;

margin:auto;

display:flex;

align-items:center;

justify-content:center;

color:#fff;

font-size:34px;

margin-bottom:25px;

}

.panel-box h3{

font-size:28px;

font-weight:700;

margin-bottom:18px;

color:#222;

}

.panel-box p{

font-size:17px;

color:#666;

line-height:30px;

min-height:85px;

}

.panel-box .btn{

border-radius:50px;

padding:13px;

font-weight:600;

font-size:17px;

}

</style>

    <!-- ========================= -->
<!-- Footer -->
<!-- ========================= -->

<footer class="footer-area">

<div class="container">

<div class="row align-items-center">

<div class="col-md-6">

<h3 class="footer-logo">

<span style="color:#ffffff;">Learn</span>
<span style="color:#FFD54F;">Sphere</span>

</h3>

<p class="footer-text">

Learn. Practice. Achieve.

</p>

</div>

<div class="col-md-6 text-md-right text-center mt-3 mt-md-0">

<a href="index.aspx" class="footer-link">Website</a>

<a href="Index2.aspx" class="footer-link">Student</a>

<a href="AdminLogin.aspx" class="footer-link">Admin</a>

</div>

</div>

<hr style="background:rgba(255,255,255,.25);" />

<div class="text-center">

<p class="copyright">

© 2026 LearnSphere | Online Course Learning System

</p>

</div>

</div>

</footer>

</form>

<script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<style>

.footer-area{

background:linear-gradient(135deg,#4F46E5,#2563EB);

padding:45px 0;

}

.footer-logo{

font-size:34px;

font-weight:700;

margin-bottom:10px;

}

.footer-text{

color:#E5E7EB;

margin:0;

font-size:17px;

}

.footer-link{

color:#ffffff;

margin-left:22px;

font-weight:500;

text-decoration:none;

transition:.3s;

}

.footer-link:hover{

color:#FFD54F;

text-decoration:none;

}

.copyright{

color:#E5E7EB;

margin:0;

font-size:15px;

}

</style>
<script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>

</body>
</html>