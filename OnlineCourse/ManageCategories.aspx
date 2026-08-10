<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageCategories.aspx.cs" Inherits="OnlineCourse.ManageCategories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Hero Banner -->

<section class="hero-wrap hero-wrap-2" style="background-image:url('images/bg_2.jpg');">
    <div class="overlay"></div>

    <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
            <div class="col-md-9 text-center pb-5">
                <h1 class="bread">Manage Categories</h1>
                <p class="breadcrumbs">Admin Panel / Manage Categories</p>
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

<h3>Course Categories</h3>

<asp:Button
        ID="btnAddCategory"
        runat="server"
        Text="Add New Category"
        CssClass="btn btn-success" />

</div>

<asp:GridView
    ID="gvCategories"
    runat="server"
    AutoGenerateColumns="False"
    CssClass="table table-bordered table-hover"
    GridLines="None"
    HeaderStyle-CssClass="thead-dark">

    <Columns>

        <asp:BoundField
            DataField="ID"
            HeaderText="ID" />

        <asp:BoundField
            DataField="CategoryName"
            HeaderText="Category Name" />

        <asp:BoundField
            DataField="TotalCourses"
            HeaderText="Total Courses" />

        <asp:BoundField
            DataField="Status"
            HeaderText="Status" />

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
Add New Category
</a>

</div>

<table class="table table-bordered table-hover">

<thead class="thead-dark">

<tr>

<th>ID</th>
<th>Category Name</th>
<th>Total Courses</th>
<th>Status</th>
<th>Action</th>

</tr>

</thead>

<tbody>

<tr>

<td>1</td>
<td>Web Development</td>
<td>8</td>
<td><span class="badge badge-success">Active</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">Edit</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>--%>

<%--<tr>

<td>2</td>
<td>Programming</td>
<td>10</td>
<td><span class="badge badge-success">Active</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">Edit</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>

<tr>

<td>3</td>
<td>Database</td>
<td>4</td>
<td><span class="badge badge-success">Active</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">Edit</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>
    <tr>

<td>4</td>
<td>Cyber Security</td>
<td>3</td>
<td><span class="badge badge-success">Active</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">Edit</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>

<tr>

<td>5</td>
<td>Artificial Intelligence</td>
<td>5</td>
<td><span class="badge badge-success">Active</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">Edit</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>

<tr>

<td>6</td>
<td>Data Science</td>
<td>4</td>
<td><span class="badge badge-success">Active</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">Edit</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>

<tr>

<td>7</td>
<td>Cloud Computing</td>
<td>2</td>
<td><span class="badge badge-warning">Inactive</span></td>

<td>
<a href="#" class="btn btn-primary btn-sm">Edit</a>
<a href="#" class="btn btn-danger btn-sm">Delete</a>
</td>

</tr>

<tr>

<td>8</td>
<td>Machine Learning</td>
<td>3</td>
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

        <h3 class="mb-4">Category Statistics</h3>

        <p><strong>Total Categories :</strong> 8</p>

        <p><strong>Active Categories :</strong> 7</p>

        <p><strong>Inactive Categories :</strong> 1</p>

        <p><strong>Total Courses :</strong> 39</p>

        <p><strong>Total Students :</strong> 2500</p>

        <hr />

      <asp:Button
                ID="btnViewCategories"
                runat="server"
                Text="View All Categories"
                CssClass="btn btn-primary btn-block" />


    </div>

</div>

<div class="col-md-6">

    <div class="bg-light shadow rounded p-4">

        <h3 class="mb-4">Quick Actions</h3>

         <asp:Button
            ID="btnNewCategory"
            runat="server"
            Text="Add New Category"
            CssClass="btn btn-success btn-block mb-3" />

        <asp:HyperLink
            ID="hlManageCourses"
            runat="server"
            NavigateUrl="~/ManageCourses.aspx"
            CssClass="btn btn-info btn-block mb-3">
            Manage Courses
        </asp:HyperLink>

        <asp:HyperLink
            ID="hlManageVideos"
            runat="server"
            NavigateUrl="~/ManageVideos.aspx"
            CssClass="btn btn-warning btn-block mb-3">
            Manage Videos
        </asp:HyperLink>

        <asp:HyperLink
            ID="hlManageEnrollments"
            runat="server"
            NavigateUrl="~/ManageEnrollments.aspx"
            CssClass="btn btn-secondary btn-block mb-3">
            Manage Enrollments
        </asp:HyperLink>

        <asp:HyperLink
            ID="hlManageFeedback"
            runat="server"
            NavigateUrl="~/ManageFeedback.aspx"
            CssClass="btn btn-danger btn-block">
            View Feedback
        </asp:HyperLink>


       <%-- <a href="#" class="btn btn-success btn-block mb-3">
            Add New Category
        </a>

        <a href="ManageCourses.aspx" class="btn btn-info btn-block mb-3">
            Manage Courses
        </a>

        <a href="ManageVideos.aspx" class="btn btn-warning btn-block mb-3">
            Manage Videos
        </a>

        <a href="ManageEnrollments.aspx" class="btn btn-secondary btn-block mb-3">
            Manage Enrollments
        </a>

        <a href="ManageFeedback.aspx" class="btn btn-danger btn-block">
            View Feedback
        </a>--%>

    </div>

</div>

</div>

</div>

</section>
</asp:Content>
