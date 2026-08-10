<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageCourses.aspx.cs" Inherits="OnlineCourse.ManageCourses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Hero Banner -->

<section class="hero-wrap hero-wrap-2" style="background-image:url('images/bg_2.jpg');">
    <div class="overlay"></div>

    <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
            <div class="col-md-9 text-center pb-5">
                <h1 class="bread">Manage Courses</h1>
                <p class="breadcrumbs">Admin Panel / Manage Courses</p>
            </div>
        </div>
    </div>
</section>

<!-- Course Table -->

<section class="ftco-section">

<div class="container">

<div class="row">

<div class="col-md-12">

<div class="bg-white shadow rounded p-4">

<div class="d-flex justify-content-between mb-4">

<h3>Course List</h3>

 <asp:Button
        ID="btnAddCourse"
        runat="server"
        Text="Add New Course"
        CssClass="btn btn-success" />

</div>

<asp:GridView
    ID="gvCourses"
    runat="server"
    AutoGenerateColumns="False"
    CssClass="table table-bordered table-hover"
    GridLines="None"
    HeaderStyle-CssClass="thead-dark">

    <Columns>

        <asp:BoundField DataField="ID" HeaderText="ID" />

        <asp:BoundField DataField="CourseName" HeaderText="Course Name" />

        <asp:BoundField DataField="Category" HeaderText="Category" />

        <asp:BoundField DataField="Instructor" HeaderText="Instructor" />

        <asp:BoundField DataField="Price" HeaderText="Price" />

        <asp:BoundField DataField="Status" HeaderText="Status" />

        <asp:TemplateField HeaderText="Action">

            <ItemTemplate>

                <asp:Button
                    ID="btnEdit"
                    runat="server"
                    Text="Edit"
                    CssClass="btn btn-primary btn-sm" />

                &nbsp;

                <asp:Button
                    ID="btnDelete"
                    runat="server"
                    Text="Delete"
                    CssClass="btn btn-danger btn-sm" />

            </ItemTemplate>

        </asp:TemplateField>

    </Columns>

</asp:GridView>

<%--<a href="#" class="btn btn-success">
Add New Course
</a>

</div>

<table class="table table-bordered table-hover">

<thead class="thead-dark">

<tr>

<th>ID</th>

<th>Course Name</th>

<th>Category</th>

<th>Instructor</th>

<th>Price</th>

<th>Status</th>

<th>Action</th>

</tr>

</thead>

<tbody>

<tr>

<td>1</td>

<td>HTML & CSS</td>

<td>Web Development</td>

<td>Tony Garret</td>

<td>₹199</td>

<td><span class="badge badge-success">Active</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">Edit</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>

<tr>

<td>2</td>

<td>ASP.NET Web Forms</td>

<td>Web Development</td>

<td>Tony Garret</td>

<td>₹299</td>

<td><span class="badge badge-success">Active</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">Edit</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>

<tr>

<td>3</td>

<td>Python Programming</td>

<td>Programming</td>

<td>Tony Garret</td>

<td>₹249</td>

<td><span class="badge badge-success">Active</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">Edit</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>

    <tr>

<td>4</td>

<td>Java Programming</td>

<td>Programming</td>

<td>Tony Garret</td>

<td>₹249</td>

<td><span class="badge badge-success">Active</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">Edit</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>

<tr>

<td>5</td>

<td>JavaScript</td>

<td>Programming</td>

<td>Tony Garret</td>

<td>₹199</td>

<td><span class="badge badge-success">Active</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">Edit</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>

<tr>

<td>6</td>

<td>Database Management</td>

<td>Database</td>

<td>Tony Garret</td>

<td>₹199</td>

<td><span class="badge badge-success">Active</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">Edit</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>

<tr>

<td>7</td>

<td>Cyber Security</td>

<td>Security</td>

<td>David Miller</td>

<td>₹399</td>

<td><span class="badge badge-warning">Upcoming</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">Edit</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>

<tr>

<td>8</td>

<td>Artificial Intelligence</td>

<td>AI</td>

<td>John Smith</td>

<td>₹499</td>

<td><span class="badge badge-success">Active</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">Edit</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>

<tr>

<td>9</td>

<td>Data Science</td>

<td>Data Analytics</td>

<td>Emily Johnson</td>

<td>₹449</td>

<td><span class="badge badge-success">Active</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">Edit</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>

</tbody>

</table>

</div>

</div>

</div>--%>

<div class="row mt-5">

<div class="col-md-6">

<div class="bg-light shadow rounded p-4">

<h3 class="mb-4">Course Statistics</h3>

<p><strong>Total Courses :</strong> 20</p>

<p><strong>Active Courses :</strong> 18</p>

<p><strong>Upcoming Courses :</strong> 2</p>

<p><strong>Total Students Enrolled :</strong> 2500</p>

<p><strong>Total Categories :</strong> 6</p>

<hr />


            <asp:Button
                ID="btnViewCourses"
                runat="server"
                Text="View All Courses"
                CssClass="btn btn-primary btn-block" />

</div>

</div>

<div class="col-md-6">

<div class="bg-light shadow rounded p-4">

<h3 class="mb-4">Quick Actions</h3>

<asp:Button
            ID="btnNewCourse"
            runat="server"
            Text="Add New Course"
            CssClass="btn btn-success btn-block mb-3" />

        <asp:HyperLink
            ID="hlCategory"
            runat="server"
            NavigateUrl="~/ManageCategories.aspx"
            CssClass="btn btn-warning btn-block mb-3">
            Manage Categories
        </asp:HyperLink>

        <asp:HyperLink
            ID="hlVideos"
            runat="server"
            NavigateUrl="~/ManageVideos.aspx"
            CssClass="btn btn-info btn-block mb-3">
            Manage Videos
        </asp:HyperLink>

        <asp:HyperLink
            ID="hlEnrollments"
            runat="server"
            NavigateUrl="~/ManageEnrollments.aspx"
            CssClass="btn btn-secondary btn-block mb-3">
            Manage Enrollments
        </asp:HyperLink>

        <asp:HyperLink
            ID="hlFeedback"
            runat="server"
            NavigateUrl="~/ManageFeedback.aspx"
            CssClass="btn btn-danger btn-block">
            View Feedback
        </asp:HyperLink>

    </div>

</div>

<%--<a href="#" class="btn btn-success btn-block mb-3">
Add New Course
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
View Feedback
</a>

</div>

</div>

</div>

</div>--%>

</section>
</asp:Content>
