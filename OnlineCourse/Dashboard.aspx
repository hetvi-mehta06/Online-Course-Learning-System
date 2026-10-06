<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="OnlineCourse.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>

/* =========================================================
   LEARNSPHERE ADMIN DASHBOARD
   ADMIN MASTER SAFE CSS
========================================================= */

.admin-dashboard {
    position: relative;
    width: 100%;
    min-height: 100vh;
    margin: 0 !important;
    padding: 0 0 90px !important;
    overflow: hidden;

    background:
        radial-gradient(
            circle at 5% 20%,
            rgba(122, 75, 255, .16),
            transparent 28%
        ),
        radial-gradient(
            circle at 95% 65%,
            rgba(0, 211, 255, .10),
            transparent 30%
        ),
        linear-gradient(
            135deg,
            #080419 0%,
            #10062a 50%,
            #080419 100%
        );

    font-family: 'Poppins', sans-serif;
}

/* =========================================================
   HERO
========================================================= */

.admin-hero {
    position: relative;
    width: 100%;
    min-height: 330px;

    display: flex;
    align-items: center;
    justify-content: center;

    padding: 75px 20px 60px;

    overflow: hidden;

    background:
        linear-gradient(
            135deg,
            rgba(8, 3, 27, .97),
            rgba(57, 28, 112, .90)
        );
}

.admin-hero::before {
    content: "";
    position: absolute;

    width: 520px;
    height: 520px;

    left: -250px;
    top: -260px;

    border-radius: 50%;

    border: 1px solid rgba(143, 98, 255, .22);

    box-shadow:
        0 0 100px rgba(112, 74, 255, .15);

    pointer-events: none;
}

.admin-hero::after {
    content: "";
    position: absolute;

    width: 450px;
    height: 450px;

    right: -230px;
    bottom: -250px;

    border-radius: 50%;

    border: 1px solid rgba(0, 220, 255, .18);

    box-shadow:
        0 0 100px rgba(0, 210, 255, .10);

    pointer-events: none;
}

.admin-hero .container {
    position: relative;
    z-index: 5;

    width: 100%;
    max-width: 1150px;

    margin-left: auto;
    margin-right: auto;
}

.admin-hero-content {
    text-align: center;
}

.admin-badge {
    display: inline-flex;
    align-items: center;
    justify-content: center;

    padding: 8px 17px;

    margin-bottom: 18px;

    border-radius: 30px;

    color: #bfaeff;

    background: rgba(123, 82, 255, .10);

    border: 1px solid rgba(145, 110, 255, .25);

    box-shadow:
        0 0 25px rgba(119, 79, 255, .10);

    font-size: 11px;
    font-weight: 600;

    letter-spacing: 1px;
    text-transform: uppercase;
}

.admin-badge i {
    margin-right: 8px;
    color: #67eaff;
}

.admin-title {
    margin: 0 !important;

    color: #ffffff !important;

    font-size: 45px !important;
    font-weight: 800 !important;

    line-height: 1.2 !important;

    letter-spacing: -.8px;

    background:
        linear-gradient(
            90deg,
            #ffffff,
            #c9b8ff,
            #64eaff
        );

    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}

.admin-subtitle {
    margin: 14px 0 0 !important;

    color: #aaa2bd !important;

    font-size: 13px !important;

    letter-spacing: .2px;
}

/* =========================================================
   MAIN CONTENT
========================================================= */

.dashboard-content {
    position: relative;

    width: 100%;

    padding: 65px 20px 0;
}

.dashboard-content .container {
    position: relative;
    z-index: 5;

    max-width: 1150px;

    margin-left: auto;
    margin-right: auto;
}

/* =========================================================
   STAT CARDS
========================================================= */

.stat-card {
    position: relative;

    height: 100%;

    padding: 28px 24px;

    border-radius: 22px;

    overflow: hidden;

    background:
        linear-gradient(
            145deg,
            rgba(255,255,255,.095),
            rgba(255,255,255,.025)
        );

    border: 1px solid rgba(255,255,255,.10);

    box-shadow:
        0 20px 45px rgba(0,0,0,.38),
        inset 0 1px 0 rgba(255,255,255,.08);

    backdrop-filter: blur(20px);
    -webkit-backdrop-filter: blur(20px);

    transition:
        transform .35s ease,
        box-shadow .35s ease,
        border-color .35s ease;
}

.stat-card:hover {
    transform: translateY(-8px);

    border-color: rgba(138, 101, 255, .35);

    box-shadow:
        0 30px 60px rgba(0,0,0,.48),
        0 0 35px rgba(112,75,255,.12),
        inset 0 1px 0 rgba(255,255,255,.12);
}

.stat-card::before {
    content: "";

    position: absolute;

    width: 120px;
    height: 120px;

    right: -45px;
    top: -45px;

    border-radius: 50%;

    background:
        radial-gradient(
            circle,
            rgba(130,90,255,.22),
            transparent 70%
        );
}

.stat-icon {
    width: 50px;
    height: 50px;

    display: flex;
    align-items: center;
    justify-content: center;

    margin-bottom: 18px;

    border-radius: 15px;

    color: #ffffff;

    background:
        linear-gradient(
            135deg,
            #704cff,
            #00c9eb
        );

    box-shadow:
        0 10px 25px rgba(103,70,255,.30);

    font-size: 19px;
}

.stat-number {
    position: relative;

    margin: 0 !important;

    color: #ffffff !important;

    font-size: 32px !important;
    font-weight: 750 !important;

    line-height: 1.2 !important;
}

.stat-label {
    margin: 7px 0 0 !important;

    color: #938ca4 !important;

    font-size: 11px !important;

    text-transform: uppercase;
    letter-spacing: .7px;
}

/* =========================================================
   COMMON DASHBOARD CARD
========================================================= */

.dashboard-card {
    position: relative;

    height: 100%;

    padding: 27px;

    border-radius: 22px;

    background:
        linear-gradient(
            145deg,
            rgba(255,255,255,.085),
            rgba(255,255,255,.025)
        );

    border: 1px solid rgba(255,255,255,.10);

    box-shadow:
        0 20px 45px rgba(0,0,0,.35),
        inset 0 1px 0 rgba(255,255,255,.07);

    backdrop-filter: blur(18px);
    -webkit-backdrop-filter: blur(18px);
}

.dashboard-card-title {
    display: flex;
    align-items: center;

    margin: 0 0 23px !important;

    color: #ffffff !important;

    font-size: 18px !important;
    font-weight: 650 !important;
}

.dashboard-card-title::before {
    content: "";

    display: inline-block;

    width: 4px;
    height: 19px;

    margin-right: 10px;

    border-radius: 10px;

    background:
        linear-gradient(
            180deg,
            #8058ff,
            #00d9ff
        );

    box-shadow:
        0 0 10px rgba(128,88,255,.45);
}

/* =========================================================
   QUICK ACTIONS
========================================================= */

.quick-action {
    display: flex;
    align-items: center;
    justify-content: flex-start;

    width: 100%;

    min-height: 48px;

    margin-bottom: 11px;

    padding: 0 17px;

    border-radius: 12px;

    color: #dcd7e9 !important;

    text-decoration: none !important;

    background: rgba(255,255,255,.045);

    border: 1px solid rgba(255,255,255,.07);

    font-size: 11px;
    font-weight: 500;

    transition:
        transform .25s ease,
        background .25s ease,
        border-color .25s ease,
        color .25s ease;
}

.quick-action:last-child {
    margin-bottom: 0;
}

.quick-action i {
    width: 27px;

    color: #8d70ff;

    font-size: 13px;
}

.quick-action:hover {
    transform: translateX(5px);

    color: #ffffff !important;

    background:
        linear-gradient(
            90deg,
            rgba(112,76,255,.18),
            rgba(0,210,255,.07)
        );

    border-color: rgba(130,95,255,.28);
}

/* =========================================================
   ACTIVITY LIST
========================================================= */

.activity-list {
    margin: 0;
    padding: 0;

    list-style: none;
}

.activity-item {
    display: flex;
    align-items: center;

    min-height: 45px;

    margin-bottom: 10px;
    padding: 10px 13px;

    border-radius: 11px;

    color: #aaa4b8;

    background: rgba(255,255,255,.035);

    border: 1px solid rgba(255,255,255,.055);

    font-size: 11px;

    transition: .25s ease;
}

.activity-item:last-child {
    margin-bottom: 0;
}

.activity-item:hover {
    color: #ffffff;

    background: rgba(117,78,255,.09);

    border-color: rgba(128,91,255,.20);

    transform: translateX(4px);
}

.activity-check {
    width: 27px;
    height: 27px;

    display: flex;
    align-items: center;
    justify-content: center;

    margin-right: 10px;

    border-radius: 50%;

    color: #6eeaff;

    background: rgba(0,215,255,.08);

    border: 1px solid rgba(0,215,255,.18);

    font-size: 10px;
}

/* =========================================================
   TABLE CARD
========================================================= */

.dashboard-table-wrapper {
    overflow-x: auto;

    border-radius: 15px;

    border: 1px solid rgba(255,255,255,.06);
}

.dashboard-table {
    width: 100%;

    margin: 0 !important;

    border-collapse: separate;
    border-spacing: 0;

    color: #aaa3b6 !important;

    background: rgba(255,255,255,.025);
}

.dashboard-table thead th {
    padding: 15px 16px !important;

    color: #bcaeff !important;

    background:
        linear-gradient(
            90deg,
            rgba(112,76,255,.15),
            rgba(0,210,255,.06)
        ) !important;

    border: 0 !important;

    font-size: 10px !important;

    font-weight: 650 !important;

    text-transform: uppercase;

    letter-spacing: .7px;
}

.dashboard-table tbody td {
    padding: 15px 16px !important;

    color: #aaa4b7 !important;

    border-top: 1px solid rgba(255,255,255,.055) !important;

    font-size: 11px !important;

    vertical-align: middle !important;
}

.dashboard-table tbody tr {
    transition: .25s ease;
}

.dashboard-table tbody tr:hover {
    background: rgba(113,76,255,.06);
}

.course-name {
    color: #ffffff !important;

    font-weight: 550;
}

.status-active {
    display: inline-flex;

    padding: 5px 11px;

    border-radius: 20px;

    color: #71edcf;

    background: rgba(38,210,169,.08);

    border: 1px solid rgba(38,210,169,.18);

    font-size: 9px;

    font-weight: 600;

    text-transform: uppercase;
}

.status-pending {
    display: inline-flex;

    padding: 5px 11px;

    border-radius: 20px;

    color: #ffd36d;

    background: rgba(255,195,70,.08);

    border: 1px solid rgba(255,195,70,.18);

    font-size: 9px;

    font-weight: 600;

    text-transform: uppercase;
}

/* =========================================================
   SYSTEM STATUS
========================================================= */

.system-status {
    margin: 0;
}

.system-row {
    display: flex;
    align-items: center;
    justify-content: space-between;

    padding: 12px 0;

    border-bottom: 1px solid rgba(255,255,255,.06);

    color: #9690a3;

    font-size: 11px;
}

.system-row:last-of-type {
    border-bottom: 0;
}

.system-row strong {
    color: #ffffff;

    font-weight: 600;
}

.online {
    color: #65edc9 !important;
}

.database {
    color: #70dfff !important;
}

.admin-welcome {
    margin: 22px 0 18px;

    padding: 15px;

    border-radius: 13px;

    color: #aaa3b8;

    background: rgba(112,76,255,.065);

    border: 1px solid rgba(128,92,255,.12);

    font-size: 11px;

    line-height: 1.7;
}

.manage-btn {
    display: flex;
    align-items: center;
    justify-content: center;

    min-height: 46px;

    border: 0 !important;
    border-radius: 12px !important;

    color: #ffffff !important;

    background:
        linear-gradient(
            135deg,
            #704cff,
            #985bff,
            #00c9eb
        ) !important;

    box-shadow:
        0 12px 25px rgba(103,70,255,.28);

    font-size: 11px !important;
    font-weight: 600 !important;

    text-decoration: none !important;

    transition: .3s ease;
}

.manage-btn:hover {
    transform: translateY(-3px);

    color: #ffffff !important;

    box-shadow:
        0 18px 35px rgba(103,70,255,.40);
}

/* =========================================================
   DECORATION
========================================================= */

.dashboard-content::before {
    content: "✦";

    position: absolute;

    left: 3%;
    top: 110px;

    color: #9174ff;

    font-size: 24px;

    text-shadow:
        0 0 18px #9174ff;

    animation:
        dashboardFloat 3s ease-in-out infinite;
}

.dashboard-content::after {
    content: "✧";

    position: absolute;

    right: 4%;
    bottom: 90px;

    color: #5de7ff;

    font-size: 28px;

    text-shadow:
        0 0 18px #5de7ff;

    animation:
        dashboardFloat 4s ease-in-out infinite;

    animation-delay: 1s;
}

@keyframes dashboardFloat {

    0%, 100% {
        transform: translateY(0);
        opacity: .45;
    }

    50% {
        transform: translateY(-14px);
        opacity: 1;
    }

}

/* =========================================================
   RESPONSIVE
========================================================= */

@media (max-width: 991px) {

    .stat-card {
        margin-bottom: 20px;
    }

    .dashboard-card {
        margin-bottom: 25px;
    }

}

@media (max-width: 767px) {

    .admin-hero {
        min-height: 285px;
        padding: 65px 15px 50px;
    }

    .admin-title {
        font-size: 34px !important;
    }

    .dashboard-content {
        padding: 50px 15px 0;
    }

    .stat-card {
        margin-bottom: 18px;
    }

}

@media (max-width: 480px) {

    .admin-title {
        font-size: 29px !important;
    }

    .dashboard-card {
        padding: 21px;
    }

    .stat-number {
        font-size: 28px !important;
    }

}

</style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="admin-dashboard">

    <!-- =====================================================
         HERO
    ====================================================== -->

    <section class="admin-hero">

        <div class="container">

            <div class="admin-hero-content">

                <div class="admin-badge">
                    <i class="fa fa-shield"></i>
                    Administrator Panel
                </div>

                <h1 class="admin-title">
                    Admin Dashboard
                </h1>

                <p class="admin-subtitle">
                    Welcome Administrator
                </p>

            </div>

        </div>

    </section>


    <!-- =====================================================
         DASHBOARD CONTENT
    ====================================================== -->

    <section class="dashboard-content">

        <div class="container">


            <!-- =================================================
                 STAT CARDS
            ================================================== -->

            <div class="row">

                <!-- Students -->

                <div class="col-lg-3 col-md-6">

                    <div class="stat-card">

                        <div class="stat-icon">
                            <i class="fa fa-users"></i>
                        </div>

                        <h2 class="stat-number">
                            250
                        </h2>

                        <p class="stat-label">
                            Total Students
                        </p>

                    </div>

                </div>


                <!-- Courses -->

                <div class="col-lg-3 col-md-6">

                    <div class="stat-card">

                        <div class="stat-icon">
                            <i class="fa fa-book"></i>
                        </div>

                        <h2 class="stat-number">
                            20
                        </h2>

                        <p class="stat-label">
                            Total Courses
                        </p>

                    </div>

                </div>


                <!-- Enrollments -->

                <div class="col-lg-3 col-md-6">

                    <div class="stat-card">

                        <div class="stat-icon">
                            <i class="fa fa-graduation-cap"></i>
                        </div>

                        <h2 class="stat-number">
                            150
                        </h2>

                        <p class="stat-label">
                            Enrollments
                        </p>

                    </div>

                </div>


                <!-- Feedback -->

                <div class="col-lg-3 col-md-6">

                    <div class="stat-card">

                        <div class="stat-icon">
                            <i class="fa fa-comments"></i>
                        </div>

                        <h2 class="stat-number">
                            95
                        </h2>

                        <p class="stat-label">
                            Feedbacks
                        </p>

                    </div>

                </div>

            </div>


            <!-- =================================================
                 QUICK ACTIONS + RECENT ACTIVITIES
            ================================================== -->

            <div class="row mt-5">


                <!-- QUICK ACTIONS -->

                <div class="col-lg-6 mb-4">

                    <div class="dashboard-card">

                        <h3 class="dashboard-card-title">
                            Quick Actions
                        </h3>


                        <a href="ManageUsers.aspx"
                           class="quick-action">

                            <i class="fa fa-users"></i>

                            Manage Users

                        </a>


                        <a href="ManageCourses.aspx"
                           class="quick-action">

                            <i class="fa fa-book"></i>

                            Manage Courses

                        </a>


                        <a href="ManageCategories.aspx"
                           class="quick-action">

                            <i class="fa fa-th-large"></i>

                            Manage Categories

                        </a>


                        <a href="ManageVideos.aspx"
                           class="quick-action">

                            <i class="fa fa-video-camera"></i>

                            Manage Videos

                        </a>


                        <a href="ManageEnrollments.aspx"
                           class="quick-action">

                            <i class="fa fa-graduation-cap"></i>

                            Manage Enrollments

                        </a>


                        <a href="ManageFeedback.aspx"
                           class="quick-action">

                            <i class="fa fa-comments"></i>

                            Manage Feedback

                        </a>

                    </div>

                </div>


                <!-- RECENT ACTIVITIES -->

                <div class="col-lg-6 mb-4">

                    <div class="dashboard-card">

                        <h3 class="dashboard-card-title">
                            Recent Activities
                        </h3>


                        <ul class="activity-list">


                            <li class="activity-item">

                                <span class="activity-check">
                                    <i class="fa fa-check"></i>
                                </span>

                                New Student Registered

                            </li>


                            <li class="activity-item">

                                <span class="activity-check">
                                    <i class="fa fa-check"></i>
                                </span>

                                New Course Added

                            </li>


                            <li class="activity-item">

                                <span class="activity-check">
                                    <i class="fa fa-check"></i>
                                </span>

                                Course Updated

                            </li>


                            <li class="activity-item">

                                <span class="activity-check">
                                    <i class="fa fa-check"></i>
                                </span>

                                New Enrollment Received

                            </li>


                            <li class="activity-item">

                                <span class="activity-check">
                                    <i class="fa fa-check"></i>
                                </span>

                                New Feedback Submitted

                            </li>


                            <li class="activity-item">

                                <span class="activity-check">
                                    <i class="fa fa-check"></i>
                                </span>

                                Certificate Generated

                            </li>


                        </ul>

                    </div>

                </div>

            </div>


            <!-- =================================================
                 LATEST COURSES
            ================================================== -->

            <div class="row mt-4">

                <div class="col-md-12">

                    <div class="dashboard-card">

                        <h3 class="dashboard-card-title">
                            Latest Courses
                        </h3>


                        <div class="dashboard-table-wrapper">

                            <table class="dashboard-table">

                                <thead>

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

                                        <td class="course-name">
                                            HTML &amp; CSS
                                        </td>

                                        <td>
                                            Web Development
                                        </td>

                                        <td>
                                            ₹199
                                        </td>

                                        <td>
                                            <span class="status-active">
                                                Active
                                            </span>
                                        </td>

                                    </tr>


                                    <tr>

                                        <td>2</td>

                                        <td class="course-name">
                                            ASP.NET Web Forms
                                        </td>

                                        <td>
                                            Web Development
                                        </td>

                                        <td>
                                            ₹299
                                        </td>

                                        <td>
                                            <span class="status-active">
                                                Active
                                            </span>
                                        </td>

                                    </tr>


                                    <tr>

                                        <td>3</td>

                                        <td class="course-name">
                                            Python Programming
                                        </td>

                                        <td>
                                            Programming
                                        </td>

                                        <td>
                                            ₹249
                                        </td>

                                        <td>
                                            <span class="status-active">
                                                Active
                                            </span>
                                        </td>

                                    </tr>


                                    <tr>

                                        <td>4</td>

                                        <td class="course-name">
                                            Java Programming
                                        </td>

                                        <td>
                                            Programming
                                        </td>

                                        <td>
                                            ₹249
                                        </td>

                                        <td>
                                            <span class="status-active">
                                                Active
                                            </span>
                                        </td>

                                    </tr>


                                    <tr>

                                        <td>5</td>

                                        <td class="course-name">
                                            Database Management
                                        </td>

                                        <td>
                                            Database
                                        </td>

                                        <td>
                                            ₹199
                                        </td>

                                        <td>
                                            <span class="status-active">
                                                Active
                                            </span>
                                        </td>

                                    </tr>


                                </tbody>

                            </table>

                        </div>

                    </div>

                </div>

            </div>


            <!-- =================================================
                 RECENT STUDENTS + SYSTEM STATUS
            ================================================== -->

            <div class="row mt-4">


                <!-- RECENT STUDENTS -->

                <div class="col-lg-7 mb-4">

                    <div class="dashboard-card">

                        <h3 class="dashboard-card-title">
                            Recent Students
                        </h3>


                        <div class="dashboard-table-wrapper">

                            <table class="dashboard-table">

                                <thead>

                                    <tr>

                                        <th>Name</th>

                                        <th>Course</th>

                                        <th>Status</th>

                                    </tr>

                                </thead>


                                <tbody>


                                    <tr>

                                        <td class="course-name">
                                            Rahul Patel
                                        </td>

                                        <td>
                                            HTML &amp; CSS
                                        </td>

                                        <td>
                                            <span class="status-active">
                                                Active
                                            </span>
                                        </td>

                                    </tr>


                                    <tr>

                                        <td class="course-name">
                                            Priya Shah
                                        </td>

                                        <td>
                                            ASP.NET Web Forms
                                        </td>

                                        <td>
                                            <span class="status-active">
                                                Active
                                            </span>
                                        </td>

                                    </tr>


                                    <tr>

                                        <td class="course-name">
                                            Meet Joshi
                                        </td>

                                        <td>
                                            Python Programming
                                        </td>

                                        <td>
                                            <span class="status-pending">
                                                Pending
                                            </span>
                                        </td>

                                    </tr>


                                    <tr>

                                        <td class="course-name">
                                            Riya Mehta
                                        </td>

                                        <td>
                                            Java Programming
                                        </td>

                                        <td>
                                            <span class="status-active">
                                                Active
                                            </span>
                                        </td>

                                    </tr>


                                    <tr>

                                        <td class="course-name">
                                            Dhruv Patel
                                        </td>

                                        <td>
                                            Database Management
                                        </td>

                                        <td>
                                            <span class="status-active">
                                                Active
                                            </span>
                                        </td>

                                    </tr>


                                </tbody>

                            </table>

                        </div>

                    </div>

                </div>


                <!-- SYSTEM STATUS -->

                <div class="col-lg-5 mb-4">

                    <div class="dashboard-card">

                        <h3 class="dashboard-card-title">
                            System Status
                        </h3>


                        <div class="system-status">


                            <div class="system-row">

                                <span>
                                    Website Status
                                </span>

                                <strong class="online">
                                    Online
                                </strong>

                            </div>


                            <div class="system-row">

                                <span>
                                    Database
                                </span>

                                <strong class="database">
                                    Connected
                                </strong>

                            </div>


                            <div class="system-row">

                                <span>
                                    Total Courses
                                </span>

                                <strong>
                                    20
                                </strong>

                            </div>


                            <div class="system-row">

                                <span>
                                    Total Students
                                </span>

                                <strong>
                                    250
                                </strong>

                            </div>


                            <div class="system-row">

                                <span>
                                    Active Enrollments
                                </span>

                                <strong>
                                    150
                                </strong>

                            </div>


                            <div class="system-row">

                                <span>
                                    Feedback Received
                                </span>

                                <strong>
                                    95
                                </strong>

                            </div>


                        </div>


                        <div class="admin-welcome">

                            <strong>
                                Administrator
                            </strong>

                            <br />

                            Welcome back, Admin.

                        </div>


                        <a href="ManageCourses.aspx"
                           class="manage-btn">

                            <i class="fa fa-book mr-2"></i>

                            Manage Courses

                        </a>


                    </div>

                </div>

            </div>


        </div>

    </section>

</div>

</asp:Content>