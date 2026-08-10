<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="OnlineCourse.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!-- Hero Banner -->

<section class="hero-wrap hero-wrap-2" style="background-image:url('images/bg_2.jpg');">
    <div class="overlay"></div>

    <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">

            <div class="col-md-9 text-center pb-5">

                <h1 class="bread">My Profile</h1>

                <p class="breadcrumbs">
                    <span>
                        Student Profile
                    </span>
                </p>

            </div>

        </div>
    </div>

</section>

<!-- Profile Section -->

<section class="ftco-section">

<div class="container">

<div class="row">

<!-- Left Side -->

<div class="col-lg-4">

<div class="bg-white shadow rounded p-4 text-center">

<img src="images/person_1.jpg"
     class="img-fluid rounded-circle mb-3"
     style="width:180px;height:180px;" />

<h3>Hetvi Mehta</h3>

<p class="text-muted">
Student
</p>

<a href="#" class="btn btn-primary btn-block">
Edit Profile
</a>

</div>

</div>

<!-- Right Side -->

<div class="col-lg-8">

<div class="bg-white shadow rounded p-5">

<h3 class="mb-4">
Personal Information
</h3>

<div class="row">

<div class="col-md-6 mb-3">

<label><strong>Full Name</strong></label>

<input type="text"
class="form-control"
value="Hetvi Mehta"
readonly />

</div>

<div class="col-md-6 mb-3">

<label><strong>Email</strong></label>

<input type="text"
class="form-control"
value="hetvi@gmail.com"
readonly />

</div>

<div class="col-md-6 mb-3">

<label><strong>Mobile Number</strong></label>

<input type="text"
class="form-control"
value="+91 9876543210"
readonly />

</div>

<div class="col-md-6 mb-3">

<label><strong>City</strong></label>

<input type="text"
class="form-control"
value="Ahmedabad"
readonly />

</div>

<div class="col-md-6 mb-3">

<label><strong>Gender</strong></label>

<input type="text"
class="form-control"
value="Female"
readonly />

</div>

<div class="col-md-6 mb-3">

<label><strong>Date of Birth</strong></label>

<input type="text"
class="form-control"
value="10 July 2005"
readonly />

</div>

<div class="col-md-6 mb-3">

<label><strong>Joined Date</strong></label>

<input type="text"
class="form-control"
value="20 July 2026"
readonly />

</div>

<div class="col-md-6 mb-3">

<label><strong>Course Enrolled</strong></label>

<input type="text"
class="form-control"
value="6 Courses"
readonly />

</div>

</div>

<hr />

<h4 class="mt-4 mb-3">
Skills
</h4>

<span class="badge badge-primary p-2 m-1">
HTML
</span>

<span class="badge badge-success p-2 m-1">
CSS
</span>

<span class="badge badge-info p-2 m-1">
JavaScript
</span>

<span class="badge badge-warning p-2 m-1">
ASP.NET
</span>

<span class="badge badge-danger p-2 m-1">
SQL
</span>

<span class="badge badge-dark p-2 m-1">
Python
</span>

<hr />

<h4 class="mt-4">
Learning Statistics
</h4>

<div class="row text-center mt-4">

<div class="col-md-3">

<h2 class="text-primary">
6
</h2>

<p>Courses</p>

</div>

<div class="col-md-3">

<h2 class="text-success">
48
</h2>

<p>Lessons</p>

</div>

<div class="col-md-3">

<h2 class="text-warning">
2
</h2>

<p>Certificates</p>

</div>

<div class="col-md-3">

<h2 class="text-danger">
75%
</h2>

<p>Progress</p>

</div>

</div>

</div>

</div>

</div>

</div>

</section>

</asp:Content>
