<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="MyCourses.aspx.cs" Inherits="OnlineCourse.MyCourses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="hero-wrap hero-wrap-2" style="background-image:url('images/bg_2.jpg');">
<div class="overlay"></div>
<div class="container">
<div class="row no-gutters slider-text align-items-end justify-content-center">
<div class="col-md-9 text-center pb-5">
<h1 class="bread">My Courses</h1>
</div>
</div>
</div>
</section>

<section class="ftco-section">
<div class="container">

<div class="row">

<!-- HTML & CSS -->
<div class="col-md-4 d-flex align-items-stretch ftco-animate">
    <div class="project-wrap">
        <img src="images/work-1.jpg" class="img-fluid" />
        <div class="text p-4">
            <h3>HTML & CSS</h3>
            <p>Progress : 80%</p>
            <a href="CourseDetails.aspx?course=html" class="btn btn-primary">Continue Learning</a>
        </div>
    </div>
</div>

<!-- ASP.NET -->
<div class="col-md-4 d-flex align-items-stretch ftco-animate">
    <div class="project-wrap">
        <img src="images/work-2.jpg" class="img-fluid" />
        <div class="text p-4">
            <h3>ASP.NET Web Forms</h3>
            <p>Progress : 65%</p>
            <a href="CourseDetails.aspx?course=aspnet" class="btn btn-primary">Continue Learning</a>
        </div>
    </div>
</div>

<!-- Python -->
<div class="col-md-4 d-flex align-items-stretch ftco-animate">
    <div class="project-wrap">
        <img src="images/work-3.jpg" class="img-fluid" />
        <div class="text p-4">
            <h3>Python Programming</h3>
            <p>Progress : 45%</p>
            <a href="CourseDetails.aspx?course=python" class="btn btn-primary">Continue Learning</a>
        </div>
    </div>
</div>

<!-- Java -->
<div class="col-md-4 d-flex align-items-stretch ftco-animate mt-4">
    <div class="project-wrap">
        <img src="images/work-4.jpg" class="img-fluid" />
        <div class="text p-4">
            <h3>Java Programming</h3>
            <p>Progress : 70%</p>
            <a href="CourseDetails.aspx?course=java" class="btn btn-primary">Continue Learning</a>
        </div>
    </div>
</div>

<!-- JavaScript -->
<div class="col-md-4 d-flex align-items-stretch ftco-animate mt-4">
    <div class="project-wrap">
        <img src="images/work-5.jpg" class="img-fluid" />
        <div class="text p-4">
            <h3>JavaScript</h3>
            <p>Progress : 55%</p>
            <a href="CourseDetails.aspx?course=javascript" class="btn btn-primary">Continue Learning</a>
        </div>
    </div>
</div>

<!-- Database -->
<div class="col-md-4 d-flex align-items-stretch ftco-animate mt-4">
    <div class="project-wrap">
        <img src="images/work-6.jpg" class="img-fluid" />
        <div class="text p-4">
            <h3>Database Management</h3>
            <p>Progress : 90%</p>
            <a href="CourseDetails.aspx?course=database" class="btn btn-primary">Continue Learning</a>
        </div>
    </div>
</div>

</div>

</div>
</section>



</asp:Content>
