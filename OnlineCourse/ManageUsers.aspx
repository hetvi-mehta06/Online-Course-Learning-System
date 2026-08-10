<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="OnlineCourse.ManageUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Hero Banner -->

<section class="hero-wrap hero-wrap-2" style="background-image:url('images/bg_2.jpg');">
    <div class="overlay"></div>

    <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">

            <div class="col-md-9 text-center pb-5">

                <h1 class="bread">Manage Users</h1>

                <p class="breadcrumbs">
                    Admin Panel / Manage Users
                </p>

            </div>

        </div>
    </div>
</section>

<!-- Users Table -->

<section class="ftco-section">

<div class="container">

<div class="row">

<div class="col-md-12">

<div class="bg-white shadow rounded p-4">

<div class="d-flex justify-content-between mb-4">

<h3>Total Registered Users</h3>

 <asp:Button
        ID="btnAddUser"
        runat="server"
        Text="Add New User"
        CssClass="btn btn-success" />

</div>

<asp:GridView
    ID="gvUsers"
    runat="server"
    AutoGenerateColumns="False"
    CssClass="table table-bordered table-hover"
    GridLines="None"
    HeaderStyle-CssClass="thead-dark">

    <Columns>

        <asp:BoundField DataField="ID" HeaderText="ID" />

        <asp:BoundField DataField="Name" HeaderText="Name" />

        <asp:BoundField DataField="Email" HeaderText="Email" />

        <asp:BoundField DataField="Course" HeaderText="Course" />

        <asp:BoundField DataField="Status" HeaderText="Status" />

        <asp:TemplateField HeaderText="Action">

            <ItemTemplate>

                <asp:Button
                    ID="btnEdit"
                    runat="server"
                    Text="Edit"
                    CssClass="btn btn-primary btn-sm" />

                <asp:Button
                    ID="btnDelete"
                    runat="server"
                    Text="Delete"
                    CssClass="btn btn-danger btn-sm"
                    Style="margin-left:5px;" />

            </ItemTemplate>

        </asp:TemplateField>

    </Columns>

</asp:GridView>

<%--<a href="#" class="btn btn-success">
Add New User
</a>

</div>

<table class="table table-bordered table-hover">

<thead class="thead-dark">

<tr>

<th>ID</th>

<th>Name</th>

<th>Email</th>

<th>Course</th>

<th>Status</th>

<th>Action</th>

</tr>

</thead>

<tbody>

<tr>

<td>1</td>

<td>Rahul Patel</td>

<td>rahul@gmail.com</td>

<td>HTML & CSS</td>

<td><span class="badge badge-success">Active</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">Edit</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>--%>

<%--<tr>

<td>2</td>

<td>Priya Shah</td>

<td>priya@gmail.com</td>

<td>ASP.NET</td>

<td><span class="badge badge-success">Active</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">Edit</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>

<tr>

<td>3</td>

<td>Meet Joshi</td>

<td>meet@gmail.com</td>

<td>Python</td>

<td><span class="badge badge-warning">Pending</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">Edit</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>

    <tr>

<td>4</td>

<td>Riya Mehta</td>

<td>riya@gmail.com</td>

<td>Java Programming</td>

<td><span class="badge badge-success">Active</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">Edit</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>

<tr>

<td>5</td>

<td>Dhruv Patel</td>

<td>dhruv@gmail.com</td>

<td>JavaScript</td>

<td><span class="badge badge-success">Active</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">Edit</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>

<tr>

<td>6</td>

<td>Neha Shah</td>

<td>neha@gmail.com</td>

<td>Database Management</td>

<td><span class="badge badge-success">Active</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">Edit</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>

<tr>

<td>7</td>

<td>Amit Patel</td>

<td>amit@gmail.com</td>

<td>Python Programming</td>

<td><span class="badge badge-warning">Pending</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">Edit</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>

<tr>

<td>8</td>

<td>Krishna Joshi</td>

<td>krishna@gmail.com</td>

<td>ASP.NET Web Forms</td>

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

<h3 class="mb-4">User Statistics</h3>

     <p>
                <strong>Total Users :</strong>
                <asp:Label ID="lblTotalUsers" runat="server" Text="250"></asp:Label>
            </p>

            <p>
                <strong>Active Users :</strong>
                <asp:Label ID="lblActiveUsers" runat="server" Text="220"></asp:Label>
            </p>

            <p>
                <strong>Pending Users :</strong>
                <asp:Label ID="lblPendingUsers" runat="server" Text="30"></asp:Label>
            </p>

            <p>
                <strong>Total Courses :</strong>
                <asp:Label ID="lblCourses" runat="server" Text="480"></asp:Label>
            </p>

            <p>
                <strong>Certificates :</strong>
                <asp:Label ID="lblCertificates" runat="server" Text="175"></asp:Label>
            </p>

            <hr />

            <asp:Button
                ID="btnViewUsers"
                runat="server"
                Text="View All Users"
                CssClass="btn btn-primary btn-block" />

        </div>

    </div>

    <!-- Quick Actions -->

    <div class="col-md-6">

        <div class="bg-light shadow rounded p-4">

            <h3 class="mb-4">Quick Actions</h3>

            <asp:Button
                ID="btnNewUser"
                runat="server"
                Text="Add New User"
                CssClass="btn btn-success btn-block mb-3" />

            <asp:HyperLink
                ID="lnkCourses"
                runat="server"
                NavigateUrl="~/ManageCourses.aspx"
                CssClass="btn btn-info btn-block mb-3"
                Text="Manage Courses">
            </asp:HyperLink>

            <asp:HyperLink
                ID="lnkEnrollments"
                runat="server"
                NavigateUrl="~/ManageEnrollments.aspx"
                CssClass="btn btn-warning btn-block mb-3"
                Text="Manage Enrollments">
            </asp:HyperLink>

            <asp:HyperLink
                ID="lnkFeedback"
                runat="server"
                NavigateUrl="~/ManageFeedback.aspx"
                CssClass="btn btn-danger btn-block"
                Text="View Feedback">
            </asp:HyperLink>

        </div>

    </div>

</div>

<%--<p><strong>Total Users :</strong> 250</p>

<p><strong>Active Users :</strong> 220</p>

<p><strong>Pending Users :</strong> 30</p>

<p><strong>Total Courses Enrolled :</strong> 480</p>

<p><strong>Certificates Issued :</strong> 175</p>

<hr />

<a href="#" class="btn btn-primary btn-block">
View All Users
</a>

</div>

</div>

<div class="col-md-6">

<div class="bg-light shadow rounded p-4">

<h3 class="mb-4">Quick Actions</h3>

<a href="#" class="btn btn-success btn-block mb-3">
Add New User
</a>

<a href="ManageCourses.aspx" class="btn btn-info btn-block mb-3">
Manage Courses
</a>

<a href="ManageEnrollments.aspx" class="btn btn-warning btn-block mb-3">
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
