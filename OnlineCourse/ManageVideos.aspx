<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageVideos.aspx.cs" Inherits="OnlineCourse.ManageVideos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>

    /* =========================================
       MAIN PAGE
    ========================================= */

    .manage-videos-page {
        min-height: 100vh;
        padding-top: 100px;
        padding-bottom: 80px;
        position: relative;
        overflow: hidden;

        background:
            radial-gradient(circle at 10% 15%, rgba(124, 58, 237, .22), transparent 30%),
            radial-gradient(circle at 90% 20%, rgba(37, 99, 235, .20), transparent 30%),
            radial-gradient(circle at 50% 90%, rgba(168, 85, 247, .14), transparent 35%),
            #080b1c;
    }

    /* =========================================
       BACKGROUND ORBS
    ========================================= */

    .video-orb {
        position: absolute;
        border-radius: 50%;
        filter: blur(80px);
        opacity: .35;
        pointer-events: none;

        animation: videoFloat 9s ease-in-out infinite alternate;
    }

    .video-orb.one {
        width: 260px;
        height: 260px;
        background: #7c3aed;

        top: 120px;
        left: -110px;
    }

    .video-orb.two {
        width: 300px;
        height: 300px;
        background: #2563eb;

        top: 330px;
        right: -120px;

        animation-delay: 2s;
    }

    .video-orb.three {
        width: 230px;
        height: 230px;
        background: #9333ea;

        bottom: 40px;
        left: 42%;

        animation-delay: 4s;
    }

    @keyframes videoFloat {

        from {
            transform: translate3d(0, 0, 0) scale(1);
        }

        to {
            transform: translate3d(30px, -35px, 0) scale(1.12);
        }

    }

    /* =========================================
       HERO
    ========================================= */

    .videos-hero {
        position: relative;
        z-index: 2;

        max-width: 1250px;
        margin: 0 auto 35px;

        padding: 45px 35px;

        text-align: center;

        border-radius: 28px;

        background: rgba(17, 24, 50, .72);

        border: 1px solid rgba(139, 92, 246, .30);

        backdrop-filter: blur(20px);
        -webkit-backdrop-filter: blur(20px);

        box-shadow:
            0 25px 70px rgba(0, 0, 0, .45),
            inset 0 1px 0 rgba(255, 255, 255, .08);

        overflow: hidden;
    }

    .videos-hero::before {
        content: "";

        position: absolute;
        inset: 0;

        background:
            linear-gradient(
                120deg,
                transparent 20%,
                rgba(139, 92, 246, .12),
                transparent 80%
            );

        pointer-events: none;
    }

    .videos-hero h1 {
        position: relative;
        z-index: 1;

        margin: 0;

        font-size: 44px;
        font-weight: 800;
        letter-spacing: -.8px;

        background:
            linear-gradient(
                90deg,
                #ffffff,
                #c4b5fd,
                #60a5fa
            );

        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
    }

    .videos-hero p {
        position: relative;
        z-index: 1;

        margin: 12px 0 0;

        color: #aeb9d6;

        font-size: 16px;
    }

    /* =========================================
       MAIN CONTAINER
    ========================================= */

    .videos-container {
        position: relative;
        z-index: 2;

        max-width: 1250px;
        margin: auto;
    }

    /* =========================================
       GLASS PANEL
    ========================================= */

    .videos-panel {
        position: relative;

        padding: 30px;

        border-radius: 26px;

        background: rgba(17, 24, 50, .72);

        border: 1px solid rgba(139, 92, 246, .25);

        backdrop-filter: blur(22px);
        -webkit-backdrop-filter: blur(22px);

        box-shadow:
            0 25px 65px rgba(0, 0, 0, .40),
            inset 0 1px 0 rgba(255, 255, 255, .06);

        overflow: hidden;
    }

    .videos-panel::before {
        content: "";

        position: absolute;
        top: 0;
        left: 10%;
        right: 10%;

        height: 1px;

        background:
            linear-gradient(
                90deg,
                transparent,
                rgba(139, 92, 246, .8),
                rgba(59, 130, 246, .8),
                transparent
            );
    }

    /* =========================================
       HEADER
    ========================================= */

    .videos-header {
        display: flex;
        align-items: center;
        justify-content: space-between;

        gap: 20px;

        margin-bottom: 25px;
    }

    .videos-title {
        margin: 0;

        color: #ffffff;

        font-size: 27px;
        font-weight: 750;
    }

    .videos-subtitle {
        margin: 5px 0 0;

        color: #8f9bb8;

        font-size: 14px;
    }

    /* =========================================
       ADD VIDEO BUTTON
    ========================================= */

    .add-video-btn {
        display: inline-flex;
        align-items: center;
        justify-content: center;

        padding: 12px 22px;

        border-radius: 12px;

        color: #ffffff !important;
        text-decoration: none !important;

        font-weight: 700;

        background:
            linear-gradient(
                135deg,
                #7c3aed,
                #2563eb
            );

        border: 1px solid rgba(255, 255, 255, .10);

        box-shadow:
            0 10px 25px rgba(37, 99, 235, .25);

        transition: all .3s ease;
    }

    .add-video-btn:hover {
        transform: translateY(-4px);

        color: #ffffff !important;

        box-shadow:
            0 18px 35px rgba(124, 58, 237, .35);
    }

    /* =========================================
       TABLE WRAPPER
    ========================================= */

    .videos-table-wrapper {
        width: 100%;

        overflow-x: auto;

        border-radius: 18px;

        border: 1px solid rgba(139, 92, 246, .18);
    }

    /* =========================================
       VIDEO TABLE
    ========================================= */

    .videos-table {
        width: 100%;
        min-width: 950px;

        margin: 0;

        border-collapse: separate;
        border-spacing: 0;

        color: #dbe4ff;

        background: rgba(7, 12, 30, .55);
    }

    .videos-table thead th {
        padding: 17px 15px;

        color: #ffffff;

        font-size: 13px;
        font-weight: 700;

        text-transform: uppercase;
        letter-spacing: .6px;

        border: none !important;

        background:
            linear-gradient(
                135deg,
                rgba(124, 58, 237, .88),
                rgba(37, 99, 235, .88)
            );
    }

    .videos-table tbody td {
        padding: 17px 15px;

        vertical-align: middle;

        color: #cbd5f5;

        border-top:
            1px solid rgba(148, 163, 184, .10);

        background:
            rgba(15, 23, 42, .55);
    }

    .videos-table tbody tr {
        transition: all .3s ease;
    }

    .videos-table tbody tr:hover {
        transform: scale(1.003);
    }

    .videos-table tbody tr:hover td {
        color: #ffffff;

        background:
            rgba(30, 41, 70, .72);

        box-shadow:
            inset 4px 0 0 #8b5cf6;
    }

    /* =========================================
       STATUS BADGES
    ========================================= */

    .video-status {
        display: inline-flex;
        align-items: center;
        justify-content: center;

        min-width: 85px;

        padding: 7px 12px;

        border-radius: 20px;

        font-size: 12px;
        font-weight: 700;
    }

    .published-status {
        color: #a7f3d0;

        background:
            rgba(16, 185, 129, .15);

        border:
            1px solid rgba(16, 185, 129, .35);
    }

    .draft-status {
        color: #fde68a;

        background:
            rgba(245, 158, 11, .15);

        border:
            1px solid rgba(245, 158, 11, .35);
    }

    /* =========================================
       ACTION BUTTONS
    ========================================= */

    .video-action {
        display: inline-flex;
        align-items: center;
        justify-content: center;

        min-width: 60px;

        padding: 8px 12px;

        margin: 2px;

        border-radius: 9px;

        color: #ffffff !important;

        text-decoration: none !important;

        font-size: 12px;
        font-weight: 700;

        transition: all .25s ease;
    }

    .edit-video {
        background:
            linear-gradient(
                135deg,
                #2563eb,
                #3b82f6
            );

        box-shadow:
            0 7px 18px rgba(37, 99, 235, .20);
    }

    .delete-video {
        background:
            linear-gradient(
                135deg,
                #dc2626,
                #ef4444
            );

        box-shadow:
            0 7px 18px rgba(220, 38, 38, .20);
    }

    .video-action:hover {
        transform: translateY(-3px) scale(1.03);

        color: #ffffff !important;
    }

    /* =========================================
       BOTTOM CARDS
    ========================================= */

    .bottom-section {
        margin-top: 30px;
    }

    .video-info-card {
        height: 100%;

        padding: 28px;

        border-radius: 23px;

        background: rgba(17, 24, 50, .72);

        border: 1px solid rgba(139, 92, 246, .22);

        backdrop-filter: blur(18px);
        -webkit-backdrop-filter: blur(18px);

        box-shadow:
            0 20px 55px rgba(0, 0, 0, .35),
            inset 0 1px 0 rgba(255, 255, 255, .05);

        transition: all .35s ease;
    }

    .video-info-card:hover {
        transform: translateY(-7px);

        border-color:
            rgba(139, 92, 246, .45);

        box-shadow:
            0 28px 65px rgba(0, 0, 0, .45),
            0 0 35px rgba(124, 58, 237, .10);
    }

    .video-info-card h3 {
        margin-bottom: 22px;

        color: #ffffff;

        font-size: 23px;
        font-weight: 750;
    }

    /* =========================================
       STATISTICS
    ========================================= */

    .video-stat {
        display: flex;
        align-items: center;
        justify-content: space-between;

        padding: 13px 0;

        color: #aeb9d6;

        border-bottom:
            1px solid rgba(148, 163, 184, .10);
    }

    .video-stat:last-of-type {
        border-bottom: none;
    }

    .video-stat strong {
        color: #ffffff;
    }

    .stat-number {
        color: #a78bfa !important;

        font-size: 17px;

        font-weight: 800;
    }

    /* =========================================
       VIEW ALL BUTTON
    ========================================= */

    .view-videos-btn {
        display: flex;
        align-items: center;
        justify-content: center;

        width: 100%;

        margin-top: 20px;

        padding: 12px;

        border-radius: 11px;

        color: #ffffff !important;

        text-decoration: none !important;

        font-weight: 700;

        background:
            linear-gradient(
                135deg,
                #7c3aed,
                #2563eb
            );

        transition: all .3s ease;
    }

    .view-videos-btn:hover {
        transform: translateY(-3px);

        color: #ffffff !important;

        box-shadow:
            0 12px 28px rgba(124, 58, 237, .25);
    }

    /* =========================================
       QUICK ACTIONS
    ========================================= */

    .quick-action {
        display: flex;
        align-items: center;
        justify-content: center;

        width: 100%;

        min-height: 48px;

        margin-bottom: 13px;

        padding: 12px;

        border-radius: 11px;

        color: #ffffff !important;

        text-decoration: none !important;

        font-weight: 700;

        border: 1px solid rgba(255, 255, 255, .08);

        transition: all .3s ease;
    }

    .quick-action:hover {
        transform: translateX(5px) translateY(-2px);

        color: #ffffff !important;

        box-shadow:
            0 12px 28px rgba(0, 0, 0, .25);
    }

    .new-video-action {
        background:
            linear-gradient(
                135deg,
                #059669,
                #10b981
            );
    }

    .courses-action {
        background:
            linear-gradient(
                135deg,
                #0284c7,
                #06b6d4
            );
    }

    .categories-action {
        background:
            linear-gradient(
                135deg,
                #d97706,
                #f59e0b
            );
    }

    .enrollments-action {
        background:
            linear-gradient(
                135deg,
                #475569,
                #64748b
            );
    }

    .feedback-action {
        background:
            linear-gradient(
                135deg,
                #dc2626,
                #ef4444
            );
    }

    /* =========================================
       RESPONSIVE
    ========================================= */

    @media (max-width: 991px) {

        .manage-videos-page {
            padding-top: 90px;
        }

        .videos-hero h1 {
            font-size: 38px;
        }

        .videos-header {
            align-items: flex-start;
            flex-direction: column;
        }

        .add-video-btn {
            width: 100%;
        }

    }

    @media (max-width: 767px) {

        .manage-videos-page {
            padding-top: 80px;
            padding-bottom: 50px;
        }

        .videos-hero {
            margin: 0 15px 25px;

            padding: 35px 20px;

            border-radius: 20px;
        }

        .videos-hero h1 {
            font-size: 31px;
        }

        .videos-container {
            margin: 0 15px;
        }

        .videos-panel {
            padding: 18px;

            border-radius: 20px;
        }

        .videos-title {
            font-size: 23px;
        }

        .video-info-card {
            margin-bottom: 20px;

            padding: 22px;
        }

    }

    @media (prefers-reduced-motion: reduce) {

        .video-orb,
        .videos-table tbody tr,
        .video-info-card,
        .quick-action,
        .video-action,
        .add-video-btn,
        .view-videos-btn {
            animation: none !important;
            transition: none !important;
        }

    }

</style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="manage-videos-page">

    <!-- Background Orbs -->

    <div class="video-orb one"></div>
    <div class="video-orb two"></div>
    <div class="video-orb three"></div>


    <!-- Hero -->

    <div class="videos-hero">

        <h1>
            Manage Videos
        </h1>

        <p>
            Admin Panel / Manage Videos
        </p>

    </div>


    <!-- Main Container -->

    <div class="videos-container">

        <!-- Videos Panel -->

        <div class="videos-panel">

            <div class="videos-header">

                <div>

                    <h3 class="videos-title">
                        Course Videos
                    </h3>

                    <p class="videos-subtitle">
                        Manage course lessons, video status and content
                    </p>

                </div>


                <a href="#" class="add-video-btn">
                    Add New Video
                </a>

            </div>


            <!-- Video Table -->

            <div class="videos-table-wrapper">

                <table class="videos-table">

                    <thead>

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

                            <td>
                                Introduction to HTML
                            </td>

                            <td>
                                HTML &amp; CSS
                            </td>

                            <td>
                                15 Min
                            </td>

                            <td>

                                <span class="video-status published-status">
                                    Published
                                </span>

                            </td>

                            <td>

                                <a href="#" class="video-action edit-video">
                                    Edit
                                </a>

                                <a href="#" class="video-action delete-video">
                                    Delete
                                </a>

                            </td>

                        </tr>


                        <tr>

                            <td>2</td>

                            <td>
                                HTML Forms
                            </td>

                            <td>
                                HTML &amp; CSS
                            </td>

                            <td>
                                18 Min
                            </td>

                            <td>

                                <span class="video-status published-status">
                                    Published
                                </span>

                            </td>

                            <td>

                                <a href="#" class="video-action edit-video">
                                    Edit
                                </a>

                                <a href="#" class="video-action delete-video">
                                    Delete
                                </a>

                            </td>

                        </tr>


                        <tr>

                            <td>3</td>

                            <td>
                                ASP.NET Controls
                            </td>

                            <td>
                                ASP.NET Web Forms
                            </td>

                            <td>
                                22 Min
                            </td>

                            <td>

                                <span class="video-status published-status">
                                    Published
                                </span>

                            </td>

                            <td>

                                <a href="#" class="video-action edit-video">
                                    Edit
                                </a>

                                <a href="#" class="video-action delete-video">
                                    Delete
                                </a>

                            </td>

                        </tr>


                        <tr>

                            <td>4</td>

                            <td>
                                CSS Flexbox
                            </td>

                            <td>
                                HTML &amp; CSS
                            </td>

                            <td>
                                20 Min
                            </td>

                            <td>

                                <span class="video-status published-status">
                                    Published
                                </span>

                            </td>

                            <td>

                                <a href="#" class="video-action edit-video">
                                    Edit
                                </a>

                                <a href="#" class="video-action delete-video">
                                    Delete
                                </a>

                            </td>

                        </tr>


                        <tr>

                            <td>5</td>

                            <td>
                                Python Basics
                            </td>

                            <td>
                                Python Programming
                            </td>

                            <td>
                                25 Min
                            </td>

                            <td>

                                <span class="video-status published-status">
                                    Published
                                </span>

                            </td>

                            <td>

                                <a href="#" class="video-action edit-video">
                                    Edit
                                </a>

                                <a href="#" class="video-action delete-video">
                                    Delete
                                </a>

                            </td>

                        </tr>


                        <tr>

                            <td>6</td>

                            <td>
                                Java OOP Concepts
                            </td>

                            <td>
                                Java Programming
                            </td>

                            <td>
                                30 Min
                            </td>

                            <td>

                                <span class="video-status published-status">
                                    Published
                                </span>

                            </td>

                            <td>

                                <a href="#" class="video-action edit-video">
                                    Edit
                                </a>

                                <a href="#" class="video-action delete-video">
                                    Delete
                                </a>

                            </td>

                        </tr>


                        <tr>

                            <td>7</td>

                            <td>
                                JavaScript DOM
                            </td>

                            <td>
                                JavaScript
                            </td>

                            <td>
                                24 Min
                            </td>

                            <td>

                                <span class="video-status draft-status">
                                    Draft
                                </span>

                            </td>

                            <td>

                                <a href="#" class="video-action edit-video">
                                    Edit
                                </a>

                                <a href="#" class="video-action delete-video">
                                    Delete
                                </a>

                            </td>

                        </tr>


                        <tr>

                            <td>8</td>

                            <td>
                                SQL Queries
                            </td>

                            <td>
                                Database Management
                            </td>

                            <td>
                                28 Min
                            </td>

                            <td>

                                <span class="video-status published-status">
                                    Published
                                </span>

                            </td>

                            <td>

                                <a href="#" class="video-action edit-video">
                                    Edit
                                </a>

                                <a href="#" class="video-action delete-video">
                                    Delete
                                </a>

                            </td>

                        </tr>


                        <tr>

                            <td>9</td>

                            <td>
                                Cyber Security Basics
                            </td>

                            <td>
                                Cyber Security
                            </td>

                            <td>
                                35 Min
                            </td>

                            <td>

                                <span class="video-status draft-status">
                                    Draft
                                </span>

                            </td>

                            <td>

                                <a href="#" class="video-action edit-video">
                                    Edit
                                </a>

                                <a href="#" class="video-action delete-video">
                                    Delete
                                </a>

                            </td>

                        </tr>

                    </tbody>

                </table>

            </div>

        </div>


        <!-- Bottom Section -->

        <div class="row bottom-section">

            <!-- Video Statistics -->

            <div class="col-md-6 mb-4">

                <div class="video-info-card">

                    <h3>
                        Video Statistics
                    </h3>


                    <div class="video-stat">

                        <span>
                            Total Videos
                        </span>

                        <strong class="stat-number">
                            35
                        </strong>

                    </div>


                    <div class="video-stat">

                        <span>
                            Published Videos
                        </span>

                        <strong class="stat-number">
                            30
                        </strong>

                    </div>


                    <div class="video-stat">

                        <span>
                            Draft Videos
                        </span>

                        <strong class="stat-number">
                            5
                        </strong>

                    </div>


                    <div class="video-stat">

                        <span>
                            Total Courses
                        </span>

                        <strong class="stat-number">
                            20
                        </strong>

                    </div>


                    <div class="video-stat">

                        <span>
                            Total Watch Hours
                        </span>

                        <strong class="stat-number">
                            1250 Hours
                        </strong>

                    </div>


                    <a href="#" class="view-videos-btn">
                        View All Videos
                    </a>

                </div>

            </div>


            <!-- Quick Actions -->

            <div class="col-md-6 mb-4">

                <div class="video-info-card">

                    <h3>
                        Quick Actions
                    </h3>


                    <a href="#"
                       class="quick-action new-video-action">

                        Add New Video

                    </a>


                    <a href="ManageCourses.aspx"
                       class="quick-action courses-action">

                        Manage Courses

                    </a>


                    <a href="ManageCategories.aspx"
                       class="quick-action categories-action">

                        Manage Categories

                    </a>


                    <a href="ManageEnrollments.aspx"
                       class="quick-action enrollments-action">

                        Manage Enrollments

                    </a>


                    <a href="ManageFeedback.aspx"
                       class="quick-action feedback-action">

                        View Feedback

                    </a>

                </div>

            </div>

        </div>

    </div>

</div>

</asp:Content>