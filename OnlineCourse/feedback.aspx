<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="OnlineCourse.feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Hero Banner -->

<section class="hero-wrap hero-wrap-2" style="background-image:url('images/bg_2.jpg');">
    <div class="overlay"></div>

    <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">

            <div class="col-md-9 text-center pb-5">

                <h1 class="bread">Course Feedback</h1>

                <p class="breadcrumbs">
                    Share Your Learning Experience
                </p>

            </div>

        </div>
    </div>

</section>

<!-- Feedback Form -->

<section class="ftco-section">

<div class="container">

<div class="row justify-content-center">

<div class="col-lg-8">

<div class="bg-white shadow rounded p-5">

<h2 class="mb-4 text-center">
Give Your Feedback
</h2>

<div class="form-group">

<label><strong>Select Course</strong></label>

<select class="form-control">

<option>HTML & CSS</option>

<option>ASP.NET Web Forms</option>

<option>Python Programming</option>

<option>Java Programming</option>

<option>JavaScript</option>

<option>Database Management</option>

</select>

</div>

<div class="form-group">

<label><strong>Rating</strong></label>

<select class="form-control">

<option>⭐⭐⭐⭐⭐ Excellent</option>

<option>⭐⭐⭐⭐ Very Good</option>

<option>⭐⭐⭐ Good</option>

<option>⭐⭐ Average</option>

<option>⭐ Poor</option>

</select>

</div>

<div class="form-group">

<label><strong>Your Feedback</strong></label>

<textarea class="form-control"
rows="6"
placeholder="Write your feedback here..."></textarea>

</div>

<div class="text-center">

<a href="#" class="btn btn-primary px-5">
Submit Feedback
</a>

</div>

</div>

</div>

</div>

</div>

</section>

<!-- Previous Feedback -->

<section class="ftco-section bg-light">

<div class="container">

<div class="row justify-content-center mb-5">

<div class="col-md-8 text-center">

<h2>Student Reviews</h2>

<p>Recent feedback from students.</p>

</div>

</div>

<div class="row">

<div class="col-md-4">

<div class="bg-white shadow rounded p-4">

<h4>Rahul Patel</h4>

<p>⭐⭐⭐⭐⭐</p>

<p>

Excellent course with easy explanations.
Highly recommended for beginners.

</p>

</div>

</div>

<div class="col-md-4">

<div class="bg-white shadow rounded p-4">

<h4>Priya Shah</h4>

<p>⭐⭐⭐⭐</p>

<p>

The video quality was excellent and
assignments were very helpful.

</p>

</div>

</div>

<div class="col-md-4">

<div class="bg-white shadow rounded p-4">

<h4>Meet Joshi</h4>

<p>⭐⭐⭐⭐⭐</p>

<p>

One of the best online learning
platforms I have used.

</p>

</div>

</div>

</div>

</div>

</section>

<!-- Why Feedback Matters -->

<section class="ftco-section">

<div class="container">

<div class="row justify-content-center">

<div class="col-md-10 text-center">

<h2 class="mb-4">
Why Your Feedback Matters
</h2>

<p>

Your valuable feedback helps us improve course quality,
enhance learning experience, and provide better educational
content for future students.

</p>

</div>

</div>

</div>

</section>
</asp:Content>
