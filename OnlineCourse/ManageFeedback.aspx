<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageFeedback.aspx.cs" Inherits="OnlineCourse.ManageFeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Hero Banner -->

<section class="hero-wrap hero-wrap-2" style="background-image:url('images/bg_2.jpg');">
    <div class="overlay"></div>

    <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">

            <div class="col-md-9 text-center pb-5">

                <h1 class="bread">Manage Feedback</h1>

                <p class="breadcrumbs">
                    Admin Panel / Manage Feedback
                </p>

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

<h3>Student Feedback</h3>

<a href="#" class="btn btn-success">
Export Feedback
</a>

</div>

<table class="table table-bordered table-hover">

<thead class="thead-dark">

<tr>

<th>ID</th>
<th>Student Name</th>
<th>Course</th>
<th>Rating</th>
<th>Feedback</th>
<th>Action</th>

</tr>

</thead>

<tbody>

<tr>

<td>1</td>
<td>Rahul Patel</td>
<td>HTML & CSS</td>
<td>⭐⭐⭐⭐⭐</td>
<td>Excellent course with practical examples.</td>

<td>
<a href="#" class="btn btn-primary btn-sm">View</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>

<tr>

<td>2</td>
<td>Priya Shah</td>
<td>ASP.NET Web Forms</td>
<td>⭐⭐⭐⭐</td>
<td>Very helpful and easy to understand.</td>

<td>
<a href="#" class="btn btn-primary btn-sm">View</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>

<tr>

<td>3</td>
<td>Meet Joshi</td>
<td>Python Programming</td>
<td>⭐⭐⭐⭐⭐</td>
<td>Great explanations and quality videos.</td>

<td>
<a href="#" class="btn btn-primary btn-sm">View</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>
    <tr>

<td>4</td>
<td>Riya Mehta</td>
<td>Java Programming</td>
<td>⭐⭐⭐⭐</td>
<td>Good course with clear concepts.</td>

<td>
<a href="#" class="btn btn-primary btn-sm">View</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>

<tr>

<td>5</td>
<td>Dhruv Patel</td>
<td>JavaScript</td>
<td>⭐⭐⭐⭐⭐</td>
<td>Excellent practical coding sessions.</td>

<td>
<a href="#" class="btn btn-primary btn-sm">View</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>

<tr>

<td>6</td>
<td>Neha Shah</td>
<td>Database Management</td>
<td>⭐⭐⭐⭐</td>
<td>Database examples were very useful.</td>

<td>
<a href="#" class="btn btn-primary btn-sm">View</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>

<tr>

<td>7</td>
<td>Amit Patel</td>
<td>Cyber Security</td>
<td>⭐⭐⭐</td>
<td>Need more practical demonstrations.</td>

<td>
<a href="#" class="btn btn-primary btn-sm">View</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>

<tr>

<td>8</td>
<td>Krishna Joshi</td>
<td>Artificial Intelligence</td>
<td>⭐⭐⭐⭐⭐</td>
<td>One of the best AI beginner courses.</td>

<td>
<a href="#" class="btn btn-primary btn-sm">View</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>

<tr>

<td>9</td>
<td>Pooja Patel</td>
<td>Data Science</td>
<td>⭐⭐⭐⭐</td>
<td>Very informative and easy to learn.</td>

<td>
<a href="#" class="btn btn-primary btn-sm">View</a>
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

        <h3 class="mb-4">Feedback Statistics</h3>

        <p><strong>Total Feedback :</strong> 180</p>

        <p><strong>Average Rating :</strong> ⭐⭐⭐⭐☆ (4.5/5)</p>

        <p><strong>5 Star Reviews :</strong> 95</p>

        <p><strong>4 Star Reviews :</strong> 60</p>

        <p><strong>3 Star Reviews :</strong> 25</p>

        <hr />

        <a href="#" class="btn btn-primary btn-block">
            View All Feedback
        </a>

    </div>

</div>

<div class="col-md-6">

    <div class="bg-light shadow rounded p-4">

        <h3 class="mb-4">Quick Actions</h3>

        <a href="ManageUsers.aspx" class="btn btn-success btn-block mb-3">
            Manage Users
        </a>

        <a href="ManageCourses.aspx" class="btn btn-info btn-block mb-3">
            Manage Courses
        </a>

        <a href="ManageEnrollments.aspx" class="btn btn-warning btn-block mb-3">
            Manage Enrollments
        </a>

        <a href="Dashboard.aspx" class="btn btn-secondary btn-block mb-3">
            Go to Dashboard
        </a>

        <a href="#" class="btn btn-danger btn-block">
            Export Feedback Report
        </a>

    </div>

</div>

</div>

</div>

</section>

</asp:Content>
