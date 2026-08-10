<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageVideos.aspx.cs" Inherits="OnlineCourse.ManageVideos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Hero Banner -->

<section class="hero-wrap hero-wrap-2" style="background-image:url('images/bg_2.jpg');">
    <div class="overlay"></div>

    <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
            <div class="col-md-9 text-center pb-5">
                <h1 class="bread">Manage Videos</h1>
                <p class="breadcrumbs">Admin Panel / Manage Videos</p>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section">

<div class="container">

<div class="row">

<div class="col-md-12">

<div class="bg-white shadow rounded p-4">

<div class="d-flex justify-content-between mb-4">

<h3>Course Videos</h3>

<a href="#" class="btn btn-success">
Add New Video
</a>

</div>

<table class="table table-bordered table-hover">

<thead class="thead-dark">

<tr>

<th>ID</th>
<th>Video Title</th>
<th>Course</th>
<th>Duration</th>
<th>Status</th>
<th>Action</th>

</tr>

</thead>

<tbody>

<tr>

<td>1</td>
<td>Introduction to HTML</td>
<td>HTML & CSS</td>
<td>15 Min</td>
<td><span class="badge badge-success">Published</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">Edit</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>

<tr>

<td>2</td>
<td>HTML Forms</td>
<td>HTML & CSS</td>
<td>18 Min</td>
<td><span class="badge badge-success">Published</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">Edit</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>

<tr>

<td>3</td>
<td>ASP.NET Controls</td>
<td>ASP.NET Web Forms</td>
<td>22 Min</td>
<td><span class="badge badge-success">Published</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">Edit</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>
    <tr>

<td>4</td>
<td>CSS Flexbox</td>
<td>HTML & CSS</td>
<td>20 Min</td>
<td><span class="badge badge-success">Published</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">Edit</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>

<tr>

<td>5</td>
<td>Python Basics</td>
<td>Python Programming</td>
<td>25 Min</td>
<td><span class="badge badge-success">Published</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">Edit</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>

<tr>

<td>6</td>
<td>Java OOP Concepts</td>
<td>Java Programming</td>
<td>30 Min</td>
<td><span class="badge badge-success">Published</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">Edit</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>

<tr>

<td>7</td>
<td>JavaScript DOM</td>
<td>JavaScript</td>
<td>24 Min</td>
<td><span class="badge badge-warning">Draft</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">Edit</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>

<tr>

<td>8</td>
<td>SQL Queries</td>
<td>Database Management</td>
<td>28 Min</td>
<td><span class="badge badge-success">Published</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">Edit</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>

<tr>

<td>9</td>
<td>Cyber Security Basics</td>
<td>Cyber Security</td>
<td>35 Min</td>
<td><span class="badge badge-warning">Draft</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">Edit</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>

</tbody>

</table>

</div>

</div>

</div>

<div class="row mt-5">
    <div class="col-md-6">

    <div class="bg-light shadow rounded p-4">

        <h3 class="mb-4">Video Statistics</h3>

        <p><strong>Total Videos :</strong> 35</p>

        <p><strong>Published Videos :</strong> 30</p>

        <p><strong>Draft Videos :</strong> 5</p>

        <p><strong>Total Courses :</strong> 20</p>

        <p><strong>Total Watch Hours :</strong> 1250 Hours</p>

        <hr />

        <a href="#" class="btn btn-primary btn-block">
            View All Videos
        </a>

    </div>

</div>

<div class="col-md-6">

    <div class="bg-light shadow rounded p-4">

        <h3 class="mb-4">Quick Actions</h3>

        <a href="#" class="btn btn-success btn-block mb-3">
            Add New Video
        </a>

        <a href="ManageCourses.aspx" class="btn btn-info btn-block mb-3">
            Manage Courses
        </a>

        <a href="ManageCategories.aspx" class="btn btn-warning btn-block mb-3">
            Manage Categories
        </a>

        <a href="ManageEnrollments.aspx" class="btn btn-secondary btn-block mb-3">
            Manage Enrollments
        </a>

        <a href="ManageFeedback.aspx" class="btn btn-danger btn-block">
            View Feedback
        </a>

    </div>

</div>

</div>

</div>

</section>
</asp:Content>
