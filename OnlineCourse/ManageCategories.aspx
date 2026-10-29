
﻿
<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageCategories.aspx.cs" Inherits="OnlineCourse.ManageCategories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
    .manage-category-page {
        width: 100%;
        min-height: 100vh;
        padding-top: 100px;
        padding-bottom: 80px;
        background:
            radial-gradient(circle at 10% 15%, rgba(124, 58, 237, 0.22), transparent 30%),
            radial-gradient(circle at 90% 20%, rgba(6, 182, 212, 0.16), transparent 28%),
            linear-gradient(135deg, #09051a 0%, #12082b 48%, #080b20 100%);
        position: relative;
        overflow: hidden;
        box-sizing: border-box;
    }

    .manage-category-page *,
    .manage-category-page *::before,
    .manage-category-page *::after {
        box-sizing: border-box;
    }

    .manage-category-page::before,
    .manage-category-page::after {
        content: "";
        position: absolute;
        border-radius: 50%;
        filter: blur(75px);
        pointer-events: none;
        z-index: 0;
    }

    .manage-category-page::before {
        width: 280px;
        height: 280px;
        background: #7c3aed;
        top: 80px;
        left: -120px;
        opacity: .30;
    }

    .manage-category-page::after {
        width: 260px;
        height: 260px;
        background: #06b6d4;
        bottom: 100px;
        right: -110px;
        opacity: .25;
    }

    .category-inner {
        width: 100%;
        max-width: 1140px;
        margin-left: auto;
        margin-right: auto;
        padding-left: 15px;
        padding-right: 15px;
        position: relative;
        z-index: 2;
    }

    .category-hero {
        width: 100%;
        margin-bottom: 30px;
        padding: 32px 35px;
        border-radius: 25px;
        background: rgba(255,255,255,.07);
        border: 1px solid rgba(255,255,255,.14);
        backdrop-filter: blur(18px);
        -webkit-backdrop-filter: blur(18px);
        box-shadow: 0 25px 60px rgba(0,0,0,.35), inset 0 1px 0 rgba(255,255,255,.08);
    }

    .category-hero-content {
        display: flex;
        align-items: center;
        justify-content: space-between;
        gap: 25px;
        width: 100%;
    }

    .hero-left {
        display: flex;
        align-items: center;
        gap: 20px;
        min-width: 0;
    }

    .hero-icon {
        width: 70px;
        height: 70px;
        flex-shrink: 0;
        border-radius: 20px;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 30px;
        color: #fff;
        background: linear-gradient(135deg, #7c3aed, #06b6d4);
        box-shadow: 0 12px 30px rgba(124,58,237,.4), 0 0 25px rgba(6,182,212,.18);
    }

    .hero-text {
        min-width: 0;
    }

    .hero-text h1 {
        margin: 0 0 7px;
        color: #fff;
        font-size: 34px;
        line-height: 1.2;
        font-weight: 800;
        letter-spacing: -.5px;
    }

    .hero-text p {
        margin: 0;
        color: #aeb7d4;
        font-size: 14px;
        line-height: 1.6;
    }

    .admin-badge {
        flex-shrink: 0;
        padding: 10px 17px;
        border-radius: 30px;
        color: #67e8f9;
        background: rgba(6,182,212,.09);
        border: 1px solid rgba(103,232,249,.25);
        font-size: 13px;
        font-weight: 700;
        letter-spacing: .4px;
        white-space: nowrap;
    }

    .category-main-card,
    .category-form,
    .category-grid,
    .bottom-card {
        width: 100%;
        padding: 30px;
        margin-bottom: 25px;
        border-radius: 25px;
        background: rgba(255,255,255,.065);
        border: 1px solid rgba(255,255,255,.13);
        backdrop-filter: blur(20px);
        -webkit-backdrop-filter: blur(20px);
        box-shadow: 0 25px 70px rgba(0,0,0,.35), inset 0 1px 0 rgba(255,255,255,.07);
    }

    .category-form h3,
    .category-grid h3,
    .bottom-card h3 {
        margin: 0 0 22px;
        color: #fff;
        font-size: 23px;
        line-height: 1.4;
        font-weight: 750;
    }

    .category-form label {
        display: block;
        margin-bottom: 8px;
        color: #cbd5e1;
        font-weight: 600;
    }

    .category-form .form-control {
        min-height: 45px;
        margin-bottom: 20px;
        color: #fff;
        background: rgba(8,11,32,.75);
        border: 1px solid rgba(255,255,255,.15);
        border-radius: 10px;
    }

    .category-form .form-control:focus {
        color: #fff;
        background: rgba(8,11,32,.9);
        border-color: #8b5cf6;
        box-shadow: 0 0 0 3px rgba(124,58,237,.15);
    }

    .category-form .btn {
        margin: 5px 5px 5px 0;
        padding: 10px 18px;
        border-radius: 10px;
        font-weight: 700;
    }

    .category-form #lblMessage {
        color: #67e8f9;
    }

    .category-grid {
        overflow-x: auto;
    }

    .category-grid table,
    .category-grid .table {
        width: 100%;
        min-width: 650px;
        margin-bottom: 0;
        border-collapse: separate !important;
        border-spacing: 0 10px !important;
        color: #e7eaff;
        border: none !important;
        background: transparent;
    }

    .category-grid th {
        background: rgba(124,58,237,.18) !important;
        color: #c4b5fd !important;
        border: none !important;
        padding: 16px 15px !important;
        font-size: 13px;
        text-transform: uppercase;
        letter-spacing: .7px;
        font-weight: 750;
    }

    .category-grid th:first-child {
        border-radius: 12px 0 0 12px;
    }

    .category-grid th:last-child {
        border-radius: 0 12px 12px 0;
    }

    .category-grid td {
        background: rgba(255,255,255,.045) !important;
        color: #d9def1 !important;
        border: none !important;
        border-top: 1px solid rgba(255,255,255,.05) !important;
        border-bottom: 1px solid rgba(255,255,255,.05) !important;
        padding: 16px 15px !important;
        vertical-align: middle !important;
    }

    .category-grid td:first-child {
        border-left: 1px solid rgba(255,255,255,.05) !important;
        border-radius: 12px 0 0 12px;
        color: #67e8f9 !important;
        font-weight: 700;
    }

    .category-grid td:last-child {
        border-right: 1px solid rgba(255,255,255,.05) !important;
        border-radius: 0 12px 12px 0;
    }

    .category-grid tr:hover td {
        background: rgba(124,58,237,.10) !important;
        border-color: rgba(124,58,237,.18) !important;
    }

    .category-grid .btn {
        margin: 2px;
        border-radius: 9px;
        padding: 7px 14px;
        font-size: 12px;
        font-weight: 700;
    }

    .category-grid .btn-warning {
        color: #67e8f9;
        background: rgba(6,182,212,.13);
        border: 1px solid rgba(6,182,212,.25);
    }

    .category-grid .btn-danger {
        color: #fda4af;
        background: rgba(244,63,94,.11);
        border: 1px solid rgba(244,63,94,.23);
    }

    @media (max-width: 992px) {
        .manage-category-page {
            padding-top: 90px;
        }

        .hero-text h1 {
            font-size: 30px;
        }

        .category-form,
        .category-grid {
            padding: 24px;
        }
    }

    @media (max-width: 768px) {
        .manage-category-page {
            padding-top: 80px;
            padding-bottom: 50px;
        }

        .category-inner {
            padding-left: 12px;
            padding-right: 12px;
        }

        .category-hero {
            padding: 25px 20px;
        }

        .category-hero-content {
            align-items: flex-start;
            flex-direction: column;
        }

        .hero-left {
            width: 100%;
        }

        .hero-text h1 {
            font-size: 27px;
        }

        .hero-icon {
            width: 58px;
            height: 58px;
            font-size: 25px;
        }

        .admin-badge {
            align-self: flex-start;
        }

        .category-form,
        .category-grid {
            padding: 18px;
        }
    }

    @media (max-width: 480px) {
        .manage-category-page {
            padding-top: 70px;
        }

        .hero-text h1 {
            font-size: 23px;
        }

        .hero-text p {
            font-size: 12px;
        }

        .category-form,
        .category-grid {
            padding: 14px;
        }
    }
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="manage-category-page">
        <div class="category-inner">

            <!-- Page Hero -->
            <div class="category-hero">
                <div class="category-hero-content">
                    <div class="hero-left">
                        <div class="hero-icon">
                            <i class="fa fa-th-large"></i>
                        </div>

                        <div class="hero-text">
                            <h1>Manage Categories</h1>
                            <p>Organize and manage all course categories from one place</p>
                        </div>
                    </div>

                    <div class="admin-badge">
                        <i class="fa fa-shield"></i>
                        &nbsp; ADMIN PANEL
                    </div>
                </div>
            </div>

            <!-- Categories Section -->
            <section class="ftco-section">
                <div class="container">

                    <!-- Add Category Form -->
                    <div class="category-form">
                        <h3>Add Course Category</h3>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Category Name</label>
                                <asp:TextBox
                                    ID="txtCategoryName"
                                    runat="server"
                                    CssClass="form-control"
                                    placeholder="Enter category name">
                                </asp:TextBox>
                            </div>

                            <div class="col-md-6">
                                <label>Total Courses</label>
                                <asp:TextBox
                                    ID="txtTotalCourses"
                                    runat="server"
                                    Text="0"
                                    TextMode="Number"
                                    CssClass="form-control"
                                    placeholder="Enter total courses">
                                </asp:TextBox>
                            </div>

                            <div class="col-md-6">
                                <label>Status</label>
                                <asp:DropDownList
                                    ID="ddlStatus"
                                    runat="server"
                                    CssClass="form-control">
                                    <asp:ListItem Text="Active" Value="Active"></asp:ListItem>
                                    <asp:ListItem Text="Inactive" Value="Inactive"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>

                        <asp:Button
                            ID="btnSave"
                            runat="server"
                            Text="Save Category"
                            CssClass="btn btn-success"
                            OnClick="btnSave_Click" />

                        <asp:Button
                            ID="btnUpdate"
                            runat="server"
                            Text="Update Category"
                            CssClass="btn btn-primary"
                            OnClick="btnUpdate_Click" />

                        <asp:Button
                            ID="btnClear"
                            runat="server"
                            Text="Clear"
                            CssClass="btn btn-secondary"
                            CausesValidation="false"
                            OnClick="btnClear_Click" />

                        <asp:Label
                            ID="lblMessage"
                            runat="server"
                            CssClass="d-block mt-3">
                        </asp:Label>

                        <asp:TextBox
                            ID="txtCategoryID"
                            runat="server"
                            Visible="false">
                        </asp:TextBox>
                    </div>

                    <!-- Category Grid -->
                    <div class="category-grid">
                        <h3>Course Categories</h3>

                        <asp:GridView
                            ID="gvCategories"
                            runat="server"
                            AutoGenerateColumns="False"
                            CssClass="category-grid"
                            GridLines="None"
                            OnRowCommand="gvCategories_RowCommand"
                            OnSelectedIndexChanged="gvCategories_SelectedIndexChanged">

                            <Columns>
                                <asp:TemplateField HeaderText="ID">
                                    <ItemTemplate>
                                        <asp:Label
                                            ID="lblID"
                                            runat="server"
                                            Text='<%# Eval("ID") %>'>
                                        </asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Category Name">
                                    <ItemTemplate>
                                        <asp:Label
                                            ID="lblCategoryName"
                                            runat="server"
                                            Text='<%# Eval("CategoryName") %>'>
                                        </asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Total Courses">
                                    <ItemTemplate>
                                        <asp:Label
                                            ID="lblTotalCourses"
                                            runat="server"
                                            Text='<%# Eval("TotalCourses") %>'>
                                        </asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Status">
                                    <ItemTemplate>
                                        <asp:Label
                                            ID="lblStatus"
                                            runat="server"
                                            Text='<%# Eval("Status") %>'>
                                        </asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Action">
                                    <ItemTemplate>
                                        <asp:LinkButton
                                            ID="btnEdit"
                                            runat="server"
                                            Text="Edit"
                                            CommandName="cmd_edit"
                                            CommandArgument='<%# Eval("ID") %>'
                                            CausesValidation="false"
                                            CssClass="btn btn-warning btn-sm">
                                        </asp:LinkButton>

                                        <asp:LinkButton
                                            ID="btnDelete"
                                            runat="server"
                                            Text="Delete"
                                            CommandName="cmd_delete"
                                            CommandArgument='<%# Eval("ID") %>'
                                            CausesValidation="false"
                                            CssClass="btn btn-danger btn-sm"
                                            OnClientClick="return confirm('Are you sure you want to delete this category?');">
                                        </asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>

                </div>
            </section>

        </div>
    </div>

</asp:Content>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <section class="hero-wrap hero-wrap-2"
        style="background-image:url('images/bg_2.jpg');">

        <div class="overlay"></div>

        <div class="container">

            <div class="row no-gutters slider-text align-items-end justify-content-center">

                <div class="col-md-9 text-center pb-5">

                    <h1 class="bread">
                        Manage Categories
                    </h1>

                    <p class="breadcrumbs">
                        Admin Panel / Manage Categories
                    </p>

                </div>

            </div>

        </div>

    </section>


    <section class="category-page">

        <div class="container">


            <div class="category-form">

                <h3>
                    Add Course Category
                </h3>


                <div class="row">


                    <div class="col-md-6">

                        <asp:Label
                            ID="lblCategoryName"
                            runat="server"
                            Text="Category Name"
                            CssClass="category-label">
                        </asp:Label>


                        <asp:TextBox
                            ID="txtCategoryName"
                            runat="server"
                            CssClass="category-input"
                            placeholder="Enter category name">
                        </asp:TextBox>

                    </div>


                    <div class="col-md-6">

                        <asp:Label
                            ID="lblTotalCourses"
                            runat="server"
                            Text="Total Courses"
                            CssClass="category-label">
                        </asp:Label>


                        <asp:TextBox
                            ID="txtTotalCourses"
                            runat="server"
                            Text="0"
                            TextMode="Number"
                            CssClass="category-input"
                            placeholder="Enter total courses">
                        </asp:TextBox>

                    </div>


                    <div class="col-md-6">

                        <asp:Label
                            ID="lblCategoryStatus"
                            runat="server"
                            Text="Status"
                            CssClass="category-label">
                        </asp:Label>


                        <asp:DropDownList
                            ID="ddlStatus"
                            runat="server"
                            CssClass="category-input">

                            <asp:ListItem
                                Text="Active"
                                Value="Active">
                            </asp:ListItem>

                            <asp:ListItem
                                Text="Inactive"
                                Value="Inactive">
                            </asp:ListItem>

                        </asp:DropDownList>

                    </div>


                </div>


                <div class="category-buttons">


                    <asp:Button
                        ID="btnSave"
                        runat="server"
                        Text="Save Category"
                        CssClass="category-btn category-btn-save"
                        OnClick="btnSave_Click" />


                    <asp:Button
                        ID="btnUpdate"
                        runat="server"
                        Text="Update Category"
                        CssClass="category-btn category-btn-update"
                        OnClick="btnUpdate_Click" />


                    <asp:Button
                        ID="btnClear"
                        runat="server"
                        Text="Clear"
                        CssClass="category-btn category-btn-clear"
                        CausesValidation="false"
                        OnClick="btnClear_Click" />


                </div>


                <asp:Label
                    ID="lblMessage"
                    runat="server"
                    CssClass="category-message">
                </asp:Label>


                <asp:TextBox
                    ID="txtCategoryID"
                    runat="server"
                    Visible="false">
                </asp:TextBox>


            </div>



            <div class="category-grid-card">

                <h3 class="category-grid-title">
                    Course Categories
                </h3>


                <div class="category-table-wrapper">


                    <asp:GridView
                        ID="gvCategories"
                        runat="server"
                        AutoGenerateColumns="False"
                        CssClass="category-grid"
                        GridLines="None"
                        OnRowCommand="gvCategories_RowCommand">


                        <Columns>


                            <asp:TemplateField
                                HeaderText="ID">

                                <ItemTemplate>

                                    <asp:Label
                                        ID="lblID"
                                        runat="server"
                                        Text='<%# Eval("ID") %>'
                                        CssClass="category-id">
                                    </asp:Label>

                                </ItemTemplate>

                            </asp:TemplateField>


                            <asp:TemplateField
                                HeaderText="Category Name">

                                <ItemTemplate>

                                    <asp:Label
                                        ID="lblCategoryNameGrid"
                                        runat="server"
                                        Text='<%# Eval("CategoryName") %>'
                                        CssClass="category-name">
                                    </asp:Label>

                                </ItemTemplate>

                            </asp:TemplateField>


                            <asp:TemplateField
                                HeaderText="Total Courses">

                                <ItemTemplate>

                                    <asp:Label
                                        ID="lblTotalCoursesGrid"
                                        runat="server"
                                        Text='<%# Eval("TotalCourses") %>'
                                        CssClass="category-total">
                                    </asp:Label>

                                </ItemTemplate>

                            </asp:TemplateField>


                            <asp:TemplateField
                                HeaderText="Status">

                                <ItemTemplate>

                                    <asp:Label
                                        ID="lblStatusGrid"
                                        runat="server"
                                        Text='<%# Eval("Status") %>'
                                        CssClass="category-status">
                                    </asp:Label>

                                </ItemTemplate>

                            </asp:TemplateField>


                            <asp:TemplateField
                                HeaderText="Action">

                                <ItemTemplate>


                                    <asp:LinkButton
                                        ID="btnEdit"
                                        runat="server"
                                        Text="Edit"
                                        CommandName="cmd_edit"
                                        CommandArgument='<%# Eval("ID") %>'
                                        CausesValidation="false"
                                        CssClass="category-edit-btn">
                                    </asp:LinkButton>


                                    <asp:LinkButton
                                        ID="btnDelete"
                                        runat="server"
                                        Text="Delete"
                                        CommandName="cmd_delete"
                                        CommandArgument='<%# Eval("ID") %>'
                                        CausesValidation="false"
                                        CssClass="category-delete-btn"
                                        OnClientClick="return confirm('Are you sure you want to delete this category?');">
                                    </asp:LinkButton>


                                </ItemTemplate>

                            </asp:TemplateField>


                        </Columns>


                    </asp:GridView>


                </div>

            </div>



            <div class="category-quick-card">

                <h3 class="category-quick-title">
                    Quick Actions
                </h3>


                <asp:HyperLink
                    ID="hlCourses"
                    runat="server"
                    NavigateUrl="~/ManageCourses.aspx"
                    CssClass="quick-category-btn quick-courses"
                    Text="Manage Courses">
                </asp:HyperLink>


                <asp:HyperLink
                    ID="hlVideos"
                    runat="server"
                    NavigateUrl="~/ManageVideos.aspx"
                    CssClass="quick-category-btn quick-videos"
                    Text="Manage Videos">
                </asp:HyperLink>


                <asp:HyperLink
                    ID="hlEnrollments"
                    runat="server"
                    NavigateUrl="~/ManageEnrollments.aspx"
                    CssClass="quick-category-btn quick-enrollments"
                    Text="Manage Enrollments">
                </asp:HyperLink>


                <asp:HyperLink
                    ID="hlFeedback"
                    runat="server"
                    NavigateUrl="~/ManageFeedback.aspx"
                    CssClass="quick-category-btn quick-feedback"
                    Text="View Feedback">
                </asp:HyperLink>


            </div>


        </div>

    </section>

</asp:Content>

