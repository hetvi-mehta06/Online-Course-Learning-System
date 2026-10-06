<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageCategories.aspx.cs" Inherits="OnlineCourse.ManageCategories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>

    /* =========================================================
       MANAGE CATEGORIES
       ========================================================= */

    .manage-category-page {
        width: 100%;
        min-height: 100vh;

        /* FIXED: navbar overlap */
        padding-top: 100px;
        padding-bottom: 80px;

        background:
            radial-gradient(
                circle at 10% 15%,
                rgba(124, 58, 237, 0.22),
                transparent 30%
            ),
            radial-gradient(
                circle at 90% 20%,
                rgba(6, 182, 212, 0.16),
                transparent 28%
            ),
            linear-gradient(
                135deg,
                #09051a 0%,
                #12082b 48%,
                #080b20 100%
            );

        position: relative;
        overflow: hidden;
        box-sizing: border-box;
    }

    .manage-category-page *,
    .manage-category-page *::before,
    .manage-category-page *::after {
        box-sizing: border-box;
    }


    /* =========================================================
       BACKGROUND GLOW
       ========================================================= */

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


    /* =========================================================
       MAIN CONTAINER
       ========================================================= */

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


    /* =========================================================
       PAGE HERO
       ========================================================= */

    .category-hero {
        width: 100%;

        margin-bottom: 30px;

        padding: 32px 35px;

        border-radius: 25px;

        background: rgba(255,255,255,.07);

        border: 1px solid rgba(255,255,255,.14);

        backdrop-filter: blur(18px);
        -webkit-backdrop-filter: blur(18px);

        box-shadow:
            0 25px 60px rgba(0,0,0,.35),
            inset 0 1px 0 rgba(255,255,255,.08);
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

        background:
            linear-gradient(
                135deg,
                #7c3aed,
                #06b6d4
            );

        box-shadow:
            0 12px 30px rgba(124,58,237,.4),
            0 0 25px rgba(6,182,212,.18);
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


    /* =========================================================
       MAIN CATEGORY CARD
       ========================================================= */

    .category-main-card {
        width: 100%;

        padding: 30px;

        border-radius: 25px;

        background: rgba(255,255,255,.065);

        border: 1px solid rgba(255,255,255,.13);

        backdrop-filter: blur(20px);
        -webkit-backdrop-filter: blur(20px);

        box-shadow:
            0 25px 70px rgba(0,0,0,.35),
            inset 0 1px 0 rgba(255,255,255,.07);
    }


    /* =========================================================
       SECTION HEADING
       ========================================================= */

    .section-heading {
        display: flex;

        justify-content: space-between;

        align-items: center;

        width: 100%;

        margin-bottom: 25px;

        gap: 20px;
    }

    .section-heading h3 {
        margin: 0;

        color: #fff;

        font-size: 23px;

        line-height: 1.3;

        font-weight: 750;
    }

    .section-heading p {
        margin: 6px 0 0;

        color: #8993b3;

        font-size: 13px;
    }


    /* =========================================================
       ADD CATEGORY BUTTON
       ========================================================= */

    .btn-add-category {
        border: none !important;

        border-radius: 12px !important;

        padding: 11px 20px !important;

        color: #fff !important;

        font-weight: 700 !important;

        background:
            linear-gradient(
                135deg,
                #7c3aed,
                #06b6d4
            ) !important;

        box-shadow:
            0 10px 25px rgba(124,58,237,.28);

        transition: all .3s ease;

        white-space: nowrap;
    }

    .btn-add-category:hover {
        color: #fff !important;

        transform: translateY(-2px);

        box-shadow:
            0 15px 35px rgba(124,58,237,.4),
            0 0 20px rgba(6,182,212,.15);
    }


    /* =========================================================
       GRIDVIEW
       ========================================================= */

    .category-grid {
        width: 100%;

        border-collapse: separate !important;

        border-spacing: 0 10px !important;

        color: #e7eaff;

        border: none !important;
    }

    .category-grid th {
        background:
            rgba(124,58,237,.18) !important;

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
        background:
            rgba(255,255,255,.045) !important;

        color: #d9def1 !important;

        border: none !important;

        border-top:
            1px solid rgba(255,255,255,.05) !important;

        border-bottom:
            1px solid rgba(255,255,255,.05) !important;

        padding: 16px 15px !important;

        vertical-align: middle !important;
    }

    .category-grid td:first-child {
        border-left:
            1px solid rgba(255,255,255,.05) !important;

        border-radius: 12px 0 0 12px;

        color: #67e8f9 !important;

        font-weight: 700;
    }

    .category-grid td:last-child {
        border-right:
            1px solid rgba(255,255,255,.05) !important;

        border-radius: 0 12px 12px 0;
    }

    .category-grid tr:hover td {
        background:
            rgba(124,58,237,.10) !important;

        border-color:
            rgba(124,58,237,.18) !important;
    }


    /* =========================================================
       GRIDVIEW BUTTONS
       ========================================================= */

    .category-grid input[type="submit"] {
        border: none !important;

        border-radius: 9px !important;

        padding: 7px 14px !important;

        font-size: 12px !important;

        font-weight: 700 !important;

        transition: all .25s ease;
    }

    .category-grid input[value="Edit"] {
        color: #67e8f9 !important;

        background:
            rgba(6,182,212,.13) !important;

        border:
            1px solid rgba(6,182,212,.25) !important;
    }

    .category-grid input[value="Edit"]:hover {
        background:
            rgba(6,182,212,.25) !important;

        box-shadow:
            0 0 15px rgba(6,182,212,.18);
    }

    .category-grid input[value="Delete"] {
        color: #fda4af !important;

        background:
            rgba(244,63,94,.11) !important;

        border:
            1px solid rgba(244,63,94,.23) !important;
    }

    .category-grid input[value="Delete"]:hover {
        background:
            rgba(244,63,94,.22) !important;

        box-shadow:
            0 0 15px rgba(244,63,94,.15);
    }


    /* =========================================================
       BOTTOM CARDS
       ========================================================= */

    .bottom-card {
        height: 100%;

        padding: 28px;

        border-radius: 22px;

        background:
            rgba(255,255,255,.06);

        border:
            1px solid rgba(255,255,255,.12);

        backdrop-filter: blur(18px);
        -webkit-backdrop-filter: blur(18px);

        box-shadow:
            0 20px 50px rgba(0,0,0,.25),
            inset 0 1px 0 rgba(255,255,255,.06);
    }

    .bottom-card h3 {
        margin: 0 0 22px;

        color: #fff;

        font-size: 20px;

        line-height: 1.4;

        font-weight: 750;
    }


    /* =========================================================
       STATISTICS
       ========================================================= */

    .stat-item {
        display: flex;

        align-items: center;

        justify-content: space-between;

        padding: 13px 15px;

        margin-bottom: 10px;

        border-radius: 12px;

        background:
            rgba(255,255,255,.045);

        border:
            1px solid rgba(255,255,255,.06);
    }

    .stat-label {
        color: #aeb7d4;

        font-size: 14px;
    }

    .stat-value {
        color: #fff;

        font-weight: 800;

        font-size: 15px;
    }

    .stat-value.active {
        color: #67e8a5;
    }

    .stat-value.inactive {
        color: #fbbf24;
    }

    .stat-value.cyan {
        color: #67e8f9;
    }

    .stat-value.purple {
        color: #c4b5fd;
    }

    .stats-divider {
        height: 1px;

        border: 0;

        margin: 22px 0;

        background:
            linear-gradient(
                90deg,
                transparent,
                rgba(255,255,255,.15),
                transparent
            );
    }


    /* =========================================================
       QUICK ACTIONS
       ========================================================= */

    .quick-btn {
        width: 100%;

        display: block;

        border-radius: 12px !important;

        padding: 12px 16px !important;

        margin-bottom: 12px;

        border:
            1px solid rgba(255,255,255,.12) !important;

        color: #fff !important;

        font-weight: 700 !important;

        text-align: center;

        transition: all .3s ease;
    }

    .quick-btn:hover {
        color: #fff !important;

        transform: translateY(-2px);
    }

    .quick-add {
        background:
            linear-gradient(
                135deg,
                rgba(124,58,237,.85),
                rgba(91,33,182,.85)
            ) !important;

        box-shadow:
            0 8px 22px rgba(124,58,237,.2);
    }

    .quick-courses {
        background:
            rgba(6,182,212,.12) !important;

        border-color:
            rgba(6,182,212,.25) !important;

        color: #67e8f9 !important;
    }

    .quick-videos {
        background:
            rgba(245,158,11,.11) !important;

        border-color:
            rgba(245,158,11,.24) !important;

        color: #fcd34d !important;
    }

    .quick-enrollments {
        background:
            rgba(148,163,184,.10) !important;

        border-color:
            rgba(148,163,184,.22) !important;

        color: #cbd5e1 !important;
    }

    .quick-feedback {
        background:
            rgba(244,63,94,.10) !important;

        border-color:
            rgba(244,63,94,.23) !important;

        color: #fda4af !important;

        margin-bottom: 0 !important;
    }

    .quick-courses:hover {
        background:
            rgba(6,182,212,.22) !important;

        box-shadow:
            0 0 18px rgba(6,182,212,.13);
    }

    .quick-videos:hover {
        background:
            rgba(245,158,11,.20) !important;
    }

    .quick-enrollments:hover {
        background:
            rgba(148,163,184,.18) !important;
    }

    .quick-feedback:hover {
        background:
            rgba(244,63,94,.19) !important;
    }


    /* =========================================================
       VIEW ALL BUTTON
       ========================================================= */

    .btn-view-all {
        width: 100%;

        border: none !important;

        border-radius: 12px !important;

        padding: 12px !important;

        color: #fff !important;

        font-weight: 700 !important;

        background:
            linear-gradient(
                135deg,
                #06b6d4,
                #2563eb
            ) !important;

        box-shadow:
            0 10px 25px rgba(6,182,212,.18);

        transition: all .3s ease;
    }

    .btn-view-all:hover {
        color: #fff !important;

        transform: translateY(-2px);

        box-shadow:
            0 14px 30px rgba(6,182,212,.28),
            0 0 18px rgba(124,58,237,.14);
    }


    /* =========================================================
       RESPONSIVE
       ========================================================= */

    @media (max-width: 992px) {

        .manage-category-page {
            padding-top: 90px;
        }

        .hero-text h1 {
            font-size: 30px;
        }

        .category-main-card {
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

        .category-main-card {
            padding: 18px;

            overflow-x: auto;
        }

        .section-heading {
            align-items: flex-start;

            flex-direction: column;
        }

        .category-grid {
            min-width: 700px;
        }

        .bottom-card {
            margin-bottom: 20px;
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

        .category-main-card {
            padding: 14px;
        }

        .bottom-card {
            padding: 20px;
        }
    }

</style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="manage-category-page">

    <div class="category-inner">


        <!-- ==========================================
             PAGE HERO
             ========================================== -->

        <div class="category-hero">

            <div class="category-hero-content">

                <div class="hero-left">

                    <div class="hero-icon">
                        <i class="fa fa-th-large"></i>
                    </div>

                    <div class="hero-text">

                        <h1>Manage Categories</h1>

                        <p>
                            Organize and manage all course categories from one place
                        </p>

                    </div>

                </div>


                <div class="admin-badge">

                    <i class="fa fa-shield"></i>

                    &nbsp; ADMIN PANEL

                </div>

            </div>

        </div>


        <!-- ==========================================
             CATEGORY TABLE
             ========================================== -->

        <div class="category-main-card">

            <div class="section-heading">

                <div>

                    <h3>

                        <i class="fa fa-folder-open"
                           style="color:#67e8f9;"></i>

                        &nbsp;Course Categories

                    </h3>

                    <p>
                        View, edit and manage your course categories
                    </p>

                </div>


                <asp:Button
                    ID="btnAddCategory"
                    runat="server"
                    Text="＋ Add New Category"
                    CssClass="btn-add-category" />

            </div>


            <asp:GridView
                ID="gvCategories"
                runat="server"
                AutoGenerateColumns="False"
                CssClass="category-grid"
                GridLines="None"
                HeaderStyle-CssClass="category-grid-header">

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

        </div>


        <!-- ==========================================
             BOTTOM SECTION
             ========================================== -->

        <div class="row mt-4">


            <!-- CATEGORY STATISTICS -->

            <div class="col-md-6 mb-4">

                <div class="bottom-card">

                    <h3>

                        <i class="fa fa-bar-chart"
                           style="color:#67e8f9;"></i>

                        &nbsp;Category Statistics

                    </h3>


                    <div class="stat-item">

                        <span class="stat-label">
                            Total Categories
                        </span>

                        <span class="stat-value purple">
                            8
                        </span>

                    </div>


                    <div class="stat-item">

                        <span class="stat-label">
                            Active Categories
                        </span>

                        <span class="stat-value active">
                            7
                        </span>

                    </div>


                    <div class="stat-item">

                        <span class="stat-label">
                            Inactive Categories
                        </span>

                        <span class="stat-value inactive">
                            1
                        </span>

                    </div>


                    <div class="stat-item">

                        <span class="stat-label">
                            Total Courses
                        </span>

                        <span class="stat-value cyan">
                            39
                        </span>

                    </div>


                    <div class="stat-item">

                        <span class="stat-label">
                            Total Students
                        </span>

                        <span class="stat-value">
                            2500
                        </span>

                    </div>


                    <hr class="stats-divider" />


                    <asp:Button
                        ID="btnViewCategories"
                        runat="server"
                        Text="View All Categories"
                        CssClass="btn-view-all" />

                </div>

            </div>


            <!-- QUICK ACTIONS -->

            <div class="col-md-6 mb-4">

                <div class="bottom-card">

                    <h3>

                        <i class="fa fa-bolt"
                           style="color:#fcd34d;"></i>

                        &nbsp;Quick Actions

                    </h3>


                    <asp:Button
                        ID="btnNewCategory"
                        runat="server"
                        Text="＋ Add New Category"
                        CssClass="quick-btn quick-add" />


                    <asp:HyperLink
                        ID="hlManageCourses"
                        runat="server"
                        NavigateUrl="~/ManageCourses.aspx"
                        CssClass="quick-btn quick-courses">

                        <i class="fa fa-book"></i>

                        &nbsp; Manage Courses

                    </asp:HyperLink>


                    <asp:HyperLink
                        ID="hlManageVideos"
                        runat="server"
                        NavigateUrl="~/ManageVideos.aspx"
                        CssClass="quick-btn quick-videos">

                        <i class="fa fa-video-camera"></i>

                        &nbsp; Manage Videos

                    </asp:HyperLink>


                    <asp:HyperLink
                        ID="hlManageEnrollments"
                        runat="server"
                        NavigateUrl="~/ManageEnrollments.aspx"
                        CssClass="quick-btn quick-enrollments">

                        <i class="fa fa-users"></i>

                        &nbsp; Manage Enrollments

                    </asp:HyperLink>


                    <asp:HyperLink
                        ID="hlManageFeedback"
                        runat="server"
                        NavigateUrl="~/ManageFeedback.aspx"
                        CssClass="quick-btn quick-feedback">

                        <i class="fa fa-comments"></i>

                        &nbsp; View Feedback

                    </asp:HyperLink>

                </div>

            </div>

        </div>

    </div>

</div>

</asp:Content>