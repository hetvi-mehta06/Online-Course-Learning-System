<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="videolesson.aspx.cs" Inherits="OnlineCourse.videolesson" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Hero Banner -->

<section class="hero-wrap hero-wrap-2" style="background-image:url('images/bg_2.jpg');">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
            <div class="col-md-9 text-center pb-5">
                <h1 class="bread">Video Lesson</h1>
                <p class="breadcrumbs">
                    Learn Anytime, Anywhere
                </p>
            </div>
        </div>
    </div>
</section>

<!-- Video Section -->

<section class="ftco-section">

<div class="container">

<div class="row">

<!-- Left -->

<div class="col-lg-8">

<h2 class="mb-4">
HTML & CSS Complete Course
</h2>

<div class="embed-responsive embed-responsive-16by9 mb-4">

<iframe class="embed-responsive-item"
src="https://www.youtube.com/embed/qz0aGYrrlhU"
allowfullscreen>
</iframe>

</div>

<h4>Course Description</h4>

<p>
Learn HTML & CSS from beginner to advanced level.
Build responsive websites with real-world examples,
practical projects and HD video lessons.
</p>

<hr>

<h4>Course Curriculum</h4>

<ul class="list-group">

<li class="list-group-item">✔ Introduction</li>

<li class="list-group-item">✔ HTML Basics</li>

<li class="list-group-item">✔ HTML Forms</li>

<li class="list-group-item">✔ CSS Basics</li>

<li class="list-group-item">✔ Flexbox</li>

<li class="list-group-item">✔ CSS Grid</li>

<li class="list-group-item">✔ Responsive Website</li>

<li class="list-group-item">✔ Final Project</li>

</ul>

</div>

<!-- Right -->

<div class="col-lg-4">

<div class="bg-light p-4 shadow rounded">

<h3>Course Information</h3>

<hr>

<p><strong>Instructor :</strong> Tony Garret</p>

<p><strong>Category :</strong> Web Development</p>

<p><strong>Duration :</strong> 8 Weeks</p>

<p><strong>Lessons :</strong> 20</p>

<p><strong>Language :</strong> English</p>

<p><strong>Level :</strong> Beginner</p>

<hr>

<h4>Progress</h4>

<div class="progress mb-3">

<div class="progress-bar bg-success"
style="width:80%;">

80%

</div>

</div>

<a href="#" class="btn btn-primary btn-block mb-2">

Next Lesson

</a>

<a href="MyCourses.aspx" class="btn btn-outline-primary btn-block">

Back to My Courses

</a>

</div>

</div>

</div>

</div>

</section>

<!-- Related Courses -->

<section class="ftco-section bg-light">

<div class="container">

<div class="row justify-content-center mb-5">

<div class="col-md-8 text-center">

<h2>Related Courses</h2>

<p>You may also like these courses.</p>

</div>

</div>

<div class="row">

<div class="col-md-4">

<div class="project-wrap">

<img src="images/work-2.jpg" class="img-fluid">

<div class="text p-4">

<h3>ASP.NET Web Forms</h3>

<a href="CourseDetails.aspx?course=aspnet"
class="btn btn-primary">

View Course

</a>

</div>

</div>

</div>

<div class="col-md-4">

<div class="project-wrap">

<img src="images/work-3.jpg" class="img-fluid">

<div class="text p-4">

<h3>Python Programming</h3>

<a href="CourseDetails.aspx?course=python"
class="btn btn-primary">

View Course

</a>

</div>

</div>

</div>

<div class="col-md-4">

<div class="project-wrap">

<img src="images/work-4.jpg" class="img-fluid">

<div class="text p-4">

<h3>Java Programming</h3>

<a href="CourseDetails.aspx?course=java"
class="btn btn-primary">

View Course

</a>

</div>

</div>

</div>

</div>

</div>

</section>
</asp:Content>
