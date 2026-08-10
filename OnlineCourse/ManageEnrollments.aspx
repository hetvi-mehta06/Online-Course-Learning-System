<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageEnrollments.aspx.cs" Inherits="OnlineCourse.ManageEnrollments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Hero Banner -->

<section class="hero-wrap hero-wrap-2" style="background-image:url('images/bg_2.jpg');">
    <div class="overlay"></div>

    <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
            <div class="col-md-9 text-center pb-5">
                <h1 class="bread">Manage Enrollments</h1>
                <p class="breadcrumbs">Admin Panel / Manage Enrollments</p>
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

<h3>Student Enrollments</h3>

<a href="#" class="btn btn-success">
Add Enrollment
</a>

</div>

<table class="table table-bordered table-hover">

<thead class="thead-dark">

<tr>

<th>ID</th>
<th>Student Name</th>
<th>Course</th>
<th>Enroll Date</th>
<th>Progress</th>
<th>Certificate</th>
<th>Action</th>

</tr>

</thead>

<tbody>

<tr>

<td>1</td>
<td>Rahul Patel</td>
<td>HTML & CSS</td>
<td>10-Jul-2026</td>
<td>100%</td>
<td><span class="badge badge-success">Generated</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">View</a>
<a href="#" class="btn btn-success btn-sm">Generate</a>
</td>

</tr>

<tr>

<td>2</td>
<td>Priya Shah</td>
<td>ASP.NET Web Forms</td>
<td>12-Jul-2026</td>
<td>80%</td>
<td><span class="badge badge-warning">Pending</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">View</a>
<a href="#" class="btn btn-success btn-sm">Generate</a>
</td>

</tr>

<tr>

<td>3</td>
<td>Meet Joshi</td>
<td>Python Programming</td>
<td>15-Jul-2026</td>
<td>65%</td>
<td><span class="badge badge-warning">Pending</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">View</a>
<a href="#" class="btn btn-success btn-sm">Generate</a>
</td>

</tr>
    <tr>

<td>4</td>
<td>Riya Mehta</td>
<td>Java Programming</td>
<td>18-Jul-2026</td>
<td>90%</td>
<td><span class="badge badge-warning">Pending</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">View</a>
<a href="#" class="btn btn-success btn-sm">Generate</a>
</td>

</tr>

<tr>

<td>5</td>
<td>Dhruv Patel</td>
<td>JavaScript</td>
<td>20-Jul-2026</td>
<td>100%</td>
<td><span class="badge badge-success">Generated</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">View</a>
<a href="#" class="btn btn-success btn-sm">Generate</a>
</td>

</tr>

<tr>

<td>6</td>
<td>Neha Shah</td>
<td>Database Management</td>
<td>21-Jul-2026</td>
<td>75%</td>
<td><span class="badge badge-warning">Pending</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">View</a>
<a href="#" class="btn btn-success btn-sm">Generate</a>
</td>

</tr>

<tr>

<td>7</td>
<td>Amit Patel</td>
<td>Cyber Security</td>
<td>22-Jul-2026</td>
<td>40%</td>
<td><span class="badge badge-secondary">Not Eligible</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">View</a>
<a href="#" class="btn btn-success btn-sm">Generate</a>
</td>

</tr>

<tr>

<td>8</td>
<td>Krishna Joshi</td>
<td>Artificial Intelligence</td>
<td>24-Jul-2026</td>
<td>100%</td>
<td><span class="badge badge-success">Generated</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">View</a>
<a href="#" class="btn btn-success btn-sm">Generate</a>
</td>

</tr>

<tr>

<td>9</td>
<td>Pooja Patel</td>
<td>Data Science</td>
<td>25-Jul-2026</td>
<td>55%</td>
<td><span class="badge badge-warning">Pending</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">View</a>
<a href="#" class="btn btn-success btn-sm">Generate</a>
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

        <h3 class="mb-4">Enrollment Statistics</h3>

        <p><strong>Total Enrollments :</strong> 250</p>

        <p><strong>Completed Courses :</strong> 120</p>

        <p><strong>In Progress :</strong> 95</p>

        <p><strong>Pending :</strong> 35</p>

        <p><strong>Certificates Generated :</strong> 120</p>

        <hr />

        <a href="#" class="btn btn-primary btn-block">
            View All Enrollments
        </a>

    </div>

</div>

<div class="col-md-6">

    <div class="bg-light shadow rounded p-4">

        <h3 class="mb-4">Quick Actions</h3>

        <a href="#" class="btn btn-success btn-block mb-3">
            Add Enrollment
        </a>

        <a href="ManageUsers.aspx" class="btn btn-info btn-block mb-3">
            Manage Users
        </a>

        <a href="ManageCourses.aspx" class="btn btn-warning btn-block mb-3">
            Manage Courses
        </a>

        <a href="Certificate.aspx" class="btn btn-primary btn-block mb-3">
            Generate Certificates
        </a>

        <a href="ManageFeedback.aspx" class="btn btn-danger btn-block">
            View Feedback
        </a>

    </div>

</div>

</div>

</div>

</asp:Content>
