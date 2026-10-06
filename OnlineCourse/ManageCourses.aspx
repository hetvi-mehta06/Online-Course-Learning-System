<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageCourses.aspx.cs" Inherits="OnlineCourse.ManageCourses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>

.manage-course-page {
    width: 100%;
    min-height: 100vh;

    /* NAVBAR OVERLAP FIX */
    padding-top: 100px;
    padding-bottom: 80px;

    background:
        radial-gradient(circle at 8% 15%, rgba(124,58,237,.22), transparent 30%),
        radial-gradient(circle at 92% 20%, rgba(6,182,212,.16), transparent 28%),
        linear-gradient(135deg,#09051a 0%,#12082b 48%,#080b20 100%);

    position: relative;
    overflow: hidden;
    box-sizing: border-box;
}

.manage-course-page *,
.manage-course-page *::before,
.manage-course-page *::after {
    box-sizing: border-box;
}

.manage-course-page::before,
.manage-course-page::after {
    content: "";
    position: absolute;
    border-radius: 50%;
    filter: blur(75px);
    pointer-events: none;
    z-index: 0;
}

.manage-course-page::before {
    width: 280px;
    height: 280px;
    background: #7c3aed;
    top: 90px;
    left: -120px;
    opacity: .28;
}

.manage-course-page::after {
    width: 260px;
    height: 260px;
    background: #06b6d4;
    right: -110px;
    bottom: 100px;
    opacity: .24;
}


/* CONTAINER */

.course-inner {
    width: 100%;
    max-width: 1140px;

    margin-left: auto;
    margin-right: auto;

    padding-left: 15px;
    padding-right: 15px;

    position: relative;
    z-index: 2;
}


/* HERO */

.course-hero {
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

.course-hero-content {
    width: 100%;

    display: flex;
    align-items: center;
    justify-content: space-between;

    gap: 25px;
}

.course-hero-left {
    display: flex;
    align-items: center;
    gap: 20px;

    min-width: 0;
}

.course-hero-icon {
    width: 70px;
    height: 70px;

    flex-shrink: 0;

    border-radius: 20px;

    display: flex;
    align-items: center;
    justify-content: center;

    color: #fff;
    font-size: 30px;

    background:
        linear-gradient(135deg,#7c3aed,#06b6d4);

    box-shadow:
        0 12px 30px rgba(124,58,237,.4),
        0 0 25px rgba(6,182,212,.18);
}

.course-hero-text h1 {
    margin: 0 0 7px;

    color: #fff;

    font-size: 34px;
    line-height: 1.2;
    font-weight: 800;
}

.course-hero-text p {
    margin: 0;

    color: #aeb7d4;

    font-size: 14px;
    line-height: 1.6;
}

.course-admin-badge {
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


/* MAIN CARD */

.course-main-card {
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


/* HEADING */

.course-section-heading {
    width: 100%;

    display: flex;
    align-items: center;
    justify-content: space-between;

    gap: 20px;

    margin-bottom: 25px;
}

.course-section-heading h3 {
    margin: 0;

    color: #fff;

    font-size: 23px;
    line-height: 1.3;
    font-weight: 750;
}

.course-section-heading p {
    margin: 6px 0 0;

    color: #8993b3;

    font-size: 13px;
}


/* ADD COURSE */

.btn-add-course {
    border: none !important;

    border-radius: 12px !important;

    padding: 11px 20px !important;

    color: #fff !important;

    font-weight: 700 !important;

    background:
        linear-gradient(135deg,#7c3aed,#06b6d4) !important;

    box-shadow:
        0 10px 25px rgba(124,58,237,.28);

    transition: all .3s ease;

    white-space: nowrap;
}

.btn-add-course:hover {
    color: #fff !important;

    transform: translateY(-2px);

    box-shadow:
        0 15px 35px rgba(124,58,237,.4),
        0 0 20px rgba(6,182,212,.15);
}


/* COURSE GRID */

.course-grid {
    width: 100%;

    border-collapse: separate !important;

    border-spacing: 0 10px !important;

    color: #e7eaff;

    border: none !important;
}

.course-grid th {
    background:
        rgba(124,58,237,.18) !important;

    color: #c4b5fd !important;

    border: none !important;

    padding: 16px 14px !important;

    font-size: 12px;

    text-transform: uppercase;

    letter-spacing: .65px;

    font-weight: 750;

    white-space: nowrap;
}

.course-grid th:first-child {
    border-radius: 12px 0 0 12px;
}

.course-grid th:last-child {
    border-radius: 0 12px 12px 0;
}

.course-grid td {
    background:
        rgba(255,255,255,.045) !important;

    color: #d9def1 !important;

    border: none !important;

    border-top:
        1px solid rgba(255,255,255,.05) !important;

    border-bottom:
        1px solid rgba(255,255,255,.05) !important;

    padding: 16px 14px !important;

    vertical-align: middle !important;
}

.course-grid td:first-child {
    border-left:
        1px solid rgba(255,255,255,.05) !important;

    border-radius: 12px 0 0 12px;

    color: #67e8f9 !important;

    font-weight: 700;
}

.course-grid td:last-child {
    border-right:
        1px solid rgba(255,255,255,.05) !important;

    border-radius: 0 12px 12px 0;
}

.course-grid tr:hover td {
    background:
        rgba(124,58,237,.10) !important;

    border-color:
        rgba(124,58,237,.18) !important;
}


/* GRID BUTTONS */

.course-grid input[type="submit"] {
    border-radius: 9px !important;

    padding: 7px 13px !important;

    font-size: 12px !important;

    font-weight: 700 !important;

    transition: all .25s ease;
}

.course-grid input[value="Edit"] {
    color: #67e8f9 !important;

    background:
        rgba(6,182,212,.13) !important;

    border:
        1px solid rgba(6,182,212,.25) !important;
}

.course-grid input[value="Edit"]:hover {
    background:
        rgba(6,182,212,.25) !important;

    box-shadow:
        0 0 15px rgba(6,182,212,.18);
}

.course-grid input[value="Delete"] {
    color: #fda4af !important;

    background:
        rgba(244,63,94,.11) !important;

    border:
        1px solid rgba(244,63,94,.23) !important;
}

.course-grid input[value="Delete"]:hover {
    background:
        rgba(244,63,94,.22) !important;

    box-shadow:
        0 0 15px rgba(244,63,94,.15);
}


/* BOTTOM CARDS */

.course-bottom-card {
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

.course-bottom-card h3 {
    margin: 0 0 22px;

    color: #fff;

    font-size: 20px;

    line-height: 1.4;

    font-weight: 750;
}


/* STATISTICS */

.course-stat {
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

.course-stat-label {
    color: #aeb7d4;

    font-size: 14px;
}

.course-stat-value {
    color: #fff;

    font-size: 15px;

    font-weight: 800;
}

.course-stat-value.active {
    color: #67e8a5;
}

.course-stat-value.upcoming {
    color: #fbbf24;
}

.course-stat-value.cyan {
    color: #67e8f9;
}

.course-stat-value.purple {
    color: #c4b5fd;
}

.course-stat-divider {
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


/* VIEW COURSES */

.btn-view-courses {
    width: 100%;

    border: none !important;

    border-radius: 12px !important;

    padding: 12px !important;

    color: #fff !important;

    font-weight: 700 !important;

    background:
        linear-gradient(135deg,#06b6d4,#2563eb) !important;

    box-shadow:
        0 10px 25px rgba(6,182,212,.18);

    transition: all .3s ease;
}

.btn-view-courses:hover {
    color: #fff !important;

    transform: translateY(-2px);

    box-shadow:
        0 14px 30px rgba(6,182,212,.28),
        0 0 18px rgba(124,58,237,.14);
}


/* QUICK ACTIONS */

.course-quick-btn {
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

.course-quick-btn:hover {
    color: #fff !important;

    transform: translateY(-2px);
}

.quick-course-add {
    background:
        linear-gradient(
            135deg,
            rgba(124,58,237,.85),
            rgba(91,33,182,.85)
        ) !important;

    box-shadow:
        0 8px 22px rgba(124,58,237,.2);
}

.quick-category {
    background:
        rgba(245,158,11,.11) !important;

    border-color:
        rgba(245,158,11,.24) !important;

    color: #fcd34d !important;
}

.quick-videos {
    background:
        rgba(6,182,212,.12) !important;

    border-color:
        rgba(6,182,212,.25) !important;

    color: #67e8f9 !important;
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

.quick-category:hover {
    background:
        rgba(245,158,11,.20) !important;
}

.quick-videos:hover {
    background:
        rgba(6,182,212,.22) !important;

    box-shadow:
        0 0 18px rgba(6,182,212,.13);
}

.quick-enrollments:hover {
    background:
        rgba(148,163,184,.18) !important;
}

.quick-feedback:hover {
    background:
        rgba(244,63,94,.19) !important;
}


/* RESPONSIVE */

@media (max-width: 992px) {

    .manage-course-page {
        padding-top: 90px;
    }

    .course-hero-text h1 {
        font-size: 30px;
    }

    .course-main-card {
        padding: 24px;
    }
}


@media (max-width: 768px) {

    .manage-course-page {
        padding-top: 80px;
        padding-bottom: 50px;
    }

    .course-inner {
        padding-left: 12px;
        padding-right: 12px;
    }

    .course-hero {
        padding: 25px 20px;
    }

    .course-hero-content {
        align-items: flex-start;
        flex-direction: column;
    }

    .course-hero-left {
        width: 100%;
    }

    .course-hero-text h1 {
        font-size: 27px;
    }

    .course-hero-icon {
        width: 58px;
        height: 58px;
        font-size: 25px;
    }

    .course-admin-badge {
        align-self: flex-start;
    }

    .course-main-card {
        padding: 18px;
        overflow-x: auto;
    }

    .course-section-heading {
        align-items: flex-start;
        flex-direction: column;
    }

    .course-grid {
        min-width: 900px;
    }

    .course-bottom-card {
        margin-bottom: 20px;
    }
}


@media (max-width: 480px) {

    .manage-course-page {
        padding-top: 70px;
    }

    .course-hero-text h1 {
        font-size: 23px;
    }

    .course-hero-text p {
        font-size: 12px;
    }

    .course-main-card {
        padding: 14px;
    }

    .course-bottom-card {
        padding: 20px;
    }
}

</style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="manage-course-page">

    <div class="course-inner">


        <!-- PREMIUM HERO -->

        <div class="course-hero">

            <div class="course-hero-content">

                <div class="course-hero-left">

                    <div class="course-hero-icon">
                        <i class="fa fa-book"></i>
                    </div>

                    <div class="course-hero-text">

                        <h1>Manage Courses</h1>

                        <p>
                            Create, organize and manage all courses from one place
                        </p>

                    </div>

                </div>


                <div class="course-admin-badge">

                    <i class="fa fa-shield"></i>

                    &nbsp; ADMIN PANEL

                </div>

            </div>

        </div>


        <!-- COURSE TABLE -->

        <div class="course-main-card">

            <div class="course-section-heading">

                <div>

                    <h3>

                        <i class="fa fa-graduation-cap"
                           style="color:#67e8f9;"></i>

                        &nbsp;Course List

                    </h3>

                    <p>
                        View, edit and manage all available courses
                    </p>

                </div>


                <asp:Button
                    ID="btnAddCourse"
                    runat="server"
                    Text="＋ Add New Course"
                    CssClass="btn-add-course" />

            </div>


            <asp:GridView
                ID="gvCourses"
                runat="server"
                AutoGenerateColumns="False"
                CssClass="course-grid"
                GridLines="None"
                HeaderStyle-CssClass="course-grid-header">

                <Columns>

                    <asp:BoundField
                        DataField="ID"
                        HeaderText="ID" />

                    <asp:BoundField
                        DataField="CourseName"
                        HeaderText="Course Name" />

                    <asp:BoundField
                        DataField="Category"
                        HeaderText="Category" />

                    <asp:BoundField
                        DataField="Instructor"
                        HeaderText="Instructor" />

                    <asp:BoundField
                        DataField="Price"
                        HeaderText="Price" />

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


        <!-- BOTTOM SECTION -->

        <div class="row mt-4">


            <!-- COURSE STATISTICS -->

            <div class="col-md-6 mb-4">

                <div class="course-bottom-card">

                    <h3>

                        <i class="fa fa-bar-chart"
                           style="color:#67e8f9;"></i>

                        &nbsp;Course Statistics

                    </h3>


                    <div class="course-stat">

                        <span class="course-stat-label">
                            Total Courses
                        </span>

                        <span class="course-stat-value purple">
                            20
                        </span>

                    </div>


                    <div class="course-stat">

                        <span class="course-stat-label">
                            Active Courses
                        </span>

                        <span class="course-stat-value active">
                            18
                        </span>

                    </div>


                    <div class="course-stat">

                        <span class="course-stat-label">
                            Upcoming Courses
                        </span>

                        <span class="course-stat-value upcoming">
                            2
                        </span>

                    </div>


                    <div class="course-stat">

                        <span class="course-stat-label">
                            Total Students Enrolled
                        </span>

                        <span class="course-stat-value cyan">
                            2500
                        </span>

                    </div>


                    <div class="course-stat">

                        <span class="course-stat-label">
                            Total Categories
                        </span>

                        <span class="course-stat-value">
                            6
                        </span>

                    </div>


                    <hr class="course-stat-divider" />


                    <asp:Button
                        ID="btnViewCourses"
                        runat="server"
                        Text="View All Courses"
                        CssClass="btn-view-courses" />

                </div>

            </div>


            <!-- QUICK ACTIONS -->

            <div class="col-md-6 mb-4">

                <div class="course-bottom-card">

                    <h3>

                        <i class="fa fa-bolt"
                           style="color:#fcd34d;"></i>

                        &nbsp;Quick Actions

                    </h3>


                    <asp:Button
                        ID="btnNewCourse"
                        runat="server"
                        Text="＋ Add New Course"
                        CssClass="course-quick-btn quick-course-add" />


                    <asp:HyperLink
                        ID="hlCategory"
                        runat="server"
                        NavigateUrl="~/ManageCategories.aspx"
                        CssClass="course-quick-btn quick-category">

                        <i class="fa fa-th-large"></i>

                        &nbsp; Manage Categories

                    </asp:HyperLink>


                    <asp:HyperLink
                        ID="hlVideos"
                        runat="server"
                        NavigateUrl="~/ManageVideos.aspx"
                        CssClass="course-quick-btn quick-videos">

                        <i class="fa fa-video-camera"></i>

                        &nbsp; Manage Videos

                    </asp:HyperLink>


                    <asp:HyperLink
                        ID="hlEnrollments"
                        runat="server"
                        NavigateUrl="~/ManageEnrollments.aspx"
                        CssClass="course-quick-btn quick-enrollments">

                        <i class="fa fa-users"></i>

                        &nbsp; Manage Enrollments

                    </asp:HyperLink>


                    <asp:HyperLink
                        ID="hlFeedback"
                        runat="server"
                        NavigateUrl="~/ManageFeedback.aspx"
                        CssClass="course-quick-btn quick-feedback">

                        <i class="fa fa-comments"></i>

                        &nbsp; View Feedback

                    </asp:HyperLink>

                </div>

            </div>

        </div>

    </div>

</div>

</asp:Content>