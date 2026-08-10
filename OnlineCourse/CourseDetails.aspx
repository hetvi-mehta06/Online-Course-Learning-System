<%@ Page Title="" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="CourseDetails.aspx.cs" Inherits="OnlineCourse.CourseDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_2.jpg');">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
            <div class="col-md-9 ftco-animate pb-5 text-center">
                <p class="breadcrumbs">
                    <span class="mr-2">
                        <a href="index.aspx">Home <i class="fa fa-chevron-right"></i></a>
                    </span>
                    <span class="mr-2">
                        <a href="course.aspx">Courses <i class="fa fa-chevron-right"></i></a>
                    </span>
                    <span>Course Details</span>
                </p>
                <h1 class="mb-0 bread">HTML & CSS Course</h1>
            </div>
        </div>
    </div>
</section>

    <section class="ftco-section">
    <div class="container">
        <div class="row">

            <div class="col-lg-8">

                <img src="images/work-1.jpg" class="img-fluid mb-4" alt="Course Image">

                <h2>HTML & CSS Complete Course</h2>

                <p>
                    Learn HTML and CSS from scratch and build responsive websites.
                    This course is perfect for beginners who want to start web development.
                </p>

                <hr />

                <h3>What You'll Learn</h3>

                <ul>
                    <li>✔ HTML Basics</li>
                    <li>✔ CSS Styling</li>
                    <li>✔ Responsive Design</li>
                    <li>✔ Flexbox</li>
                    <li>✔ CSS Grid</li>
                    <li>✔ Forms</li>
                    <li>✔ Bootstrap Basics</li>
                </ul>

                <hr />

                <h3>Course Curriculum</h3>

                <ol>
                    <li>Introduction</li>
                    <li>HTML Basics</li>
                    <li>HTML Forms</li>
                    <li>CSS Basics</li>
                    <li>Flexbox</li>
                    <li>Responsive Website</li>
                    <li>Mini Project</li>
                </ol>

                <hr />

                <h3>Preview Video</h3>

                <iframe width="100%" height="450"
                    src="https://www.youtube.com/embed/qz0aGYrrlhU"
                    frameborder="0"
                    allowfullscreen>
                </iframe>

            </div>

            <div class="col-lg-4">

                <div class="bg-light p-4">

                    <h3>Course Information</h3>

                    <p><strong>Instructor :</strong> Tony Garret</p>

                    <p><strong>Category :</strong> Web Development</p>

                    <p><strong>Level :</strong> Beginner</p>

                    <p><strong>Duration :</strong> 8 Weeks</p>

                    <p><strong>Language :</strong> English</p>

                    <p><strong>Price :</strong> ₹199</p>

                    <a href="#" class="btn btn-primary btn-block">
                        Enroll Now
                    </a>

                </div>

            </div>

        </div>
    </div>
</section>
</asp:Content>
