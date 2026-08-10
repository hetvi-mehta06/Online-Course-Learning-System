<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="OnlineCourse.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Hero Banner -->

<section class="hero-wrap hero-wrap-2" style="background-image:url('images/bg_2.jpg');">
    <div class="overlay"></div>

    <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">

            <div class="col-md-9 text-center pb-5">

                <h1 class="bread">Admin Dashboard</h1>

                <p class="breadcrumbs">
                    Welcome Administrator
                </p>

            </div>

        </div>
    </div>
</section>

<!-- Dashboard Cards -->

<section class="ftco-section">

<div class="container">

<div class="row">

<div class="col-md-3">

<div class="bg-primary text-white text-center p-4 rounded shadow">

<h2>250</h2>

<p>Total Students</p>

</div>

</div>

<div class="col-md-3">

<div class="bg-success text-white text-center p-4 rounded shadow">

<h2>20</h2>

<p>Total Courses</p>

</div>

</div>

<div class="col-md-3">

<div class="bg-warning text-white text-center p-4 rounded shadow">

<h2>150</h2>

<p>Enrollments</p>

</div>

</div>

<div class="col-md-3">

<div class="bg-danger text-white text-center p-4 rounded shadow">

<h2>95</h2>

<p>Feedbacks</p>

</div>

</div>

</div>

    <!-- Quick Actions -->

<div class="row mt-5">

<div class="col-md-6">

<div class="bg-light p-4 rounded shadow">

<h3 class="mb-4">Quick Actions</h3>

<a href="ManageUsers.aspx" class="btn btn-primary btn-block mb-3">
Manage Users
</a>

<a href="ManageCourses.aspx" class="btn btn-success btn-block mb-3">
Manage Courses
</a>

<a href="ManageCategories.aspx" class="btn btn-warning btn-block mb-3">
Manage Categories
</a>

<a href="ManageVideos.aspx" class="btn btn-info btn-block mb-3">
Manage Videos
</a>

<a href="ManageEnrollments.aspx" class="btn btn-secondary btn-block mb-3">
Manage Enrollments
</a>

<a href="ManageFeedback.aspx" class="btn btn-danger btn-block">
Manage Feedback
</a>

</div>

</div>

<div class="col-md-6">

<div class="bg-light p-4 rounded shadow">

<h3 class="mb-4">Recent Activities</h3>

<ul class="list-group">

<li class="list-group-item">
✔ New Student Registered
</li>

<li class="list-group-item">
✔ New Course Added
</li>

<li class="list-group-item">
✔ Course Updated
</li>

<li class="list-group-item">
✔ New Enrollment Received
</li>

<li class="list-group-item">
✔ New Feedback Submitted
</li>

<li class="list-group-item">
✔ Certificate Generated
</li>

</ul>

</div>

</div>

</div>

<!-- Latest Courses -->

<div class="row mt-5">

<div class="col-md-12">

<div class="bg-white shadow rounded p-4">

<h3 class="mb-4">Latest Courses</h3>

<table class="table table-bordered table-hover">

<thead class="thead-dark">

<tr>

<th>ID</th>

<th>Course Name</th>

<th>Category</th>

<th>Price</th>

<th>Status</th>

</tr>

</thead>

<tbody>

<tr>

<td>1</td>

<td>HTML & CSS</td>

<td>Web Development</td>

<td>₹199</td>

<td>Active</td>

</tr>

<tr>

<td>2</td>

<td>ASP.NET Web Forms</td>

<td>Web Development</td>

<td>₹299</td>

<td>Active</td>

</tr>

<tr>

<td>3</td>

<td>Python Programming</td>

<td>Programming</td>

<td>₹249</td>

<td>Active</td>

</tr>

<tr>

<td>4</td>

<td>Java Programming</td>

<td>Programming</td>

<td>₹249</td>

<td>Active</td>

</tr>

<tr>

<td>5</td>

<td>Database Management</td>

<td>Database</td>

<td>₹199</td>

<td>Active</td>

</tr>

</tbody>

</table>

</div>

</div>

</div>

<!-- Recent Students -->

<div class="row mt-5">

<div class="col-md-7">

<div class="bg-white shadow rounded p-4">

<h3 class="mb-4">Recent Students</h3>

<table class="table table-striped">

<thead>

<tr>

<th>Name</th>

<th>Course</th>

<th>Status</th>

</tr>

</thead>

<tbody>

<tr>

<td>Rahul Patel</td>

<td>HTML & CSS</td>

<td><span class="badge badge-success">Active</span></td>

</tr>

<tr>

<td>Priya Shah</td>

<td>ASP.NET Web Forms</td>

<td><span class="badge badge-success">Active</span></td>

</tr>

<tr>

<td>Meet Joshi</td>

<td>Python Programming</td>

<td><span class="badge badge-warning">Pending</span></td>

</tr>

<tr>

<td>Riya Mehta</td>

<td>Java Programming</td>

<td><span class="badge badge-success">Active</span></td>

</tr>

<tr>

<td>Dhruv Patel</td>

<td>Database Management</td>

<td><span class="badge badge-success">Active</span></td>

</tr>

</tbody>

</table>

</div>

</div>

<!-- System Status -->

<div class="col-md-5">

<div class="bg-light shadow rounded p-4">

<h3 class="mb-4">System Status</h3>

<p>✅ Website Status : <strong>Online</strong></p>

<p>✅ Database : <strong>Connected</strong></p>

<p>✅ Total Courses : <strong>20</strong></p>

<p>✅ Total Students : <strong>250</strong></p>

<p>✅ Active Enrollments : <strong>150</strong></p>

<p>✅ Feedback Received : <strong>95</strong></p>

<hr>

<h5>Administrator</h5>

<p>Welcome back, Admin.</p>

<a href="ManageCourses.aspx" class="btn btn-primary btn-block">
Manage Courses
</a>

</div>

</div>

</div>

</div>

</section>
</asp:Content>
