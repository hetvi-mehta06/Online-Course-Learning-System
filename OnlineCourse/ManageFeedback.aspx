<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageFeedback.aspx.cs" Inherits="OnlineCourse.ManageFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>

    /* ================================
       MAIN PAGE
    ================================= */

    .manage-feedback-page {
        min-height: 100vh;
        padding-top: 100px;
        padding-bottom: 80px;
        position: relative;
        overflow: hidden;
        background:
            radial-gradient(circle at 10% 20%, rgba(124, 58, 237, .22), transparent 30%),
            radial-gradient(circle at 90% 15%, rgba(37, 99, 235, .20), transparent 30%),
            radial-gradient(circle at 50% 90%, rgba(168, 85, 247, .15), transparent 35%),
            #080b1c;
    }

    /* Animated background glow */

    .feedback-orb {
        position: absolute;
        border-radius: 50%;
        filter: blur(80px);
        opacity: .35;
        pointer-events: none;
        animation: floatOrb 9s ease-in-out infinite alternate;
    }

    .feedback-orb.one {
        width: 260px;
        height: 260px;
        background: #7c3aed;
        top: 120px;
        left: -100px;
    }

    .feedback-orb.two {
        width: 300px;
        height: 300px;
        background: #2563eb;
        right: -120px;
        top: 300px;
        animation-delay: 2s;
    }

    .feedback-orb.three {
        width: 220px;
        height: 220px;
        background: #9333ea;
        bottom: 50px;
        left: 40%;
        animation-delay: 4s;
    }

    @keyframes floatOrb {
        from {
            transform: translate3d(0, 0, 0) scale(1);
        }

        to {
            transform: translate3d(30px, -35px, 0) scale(1.12);
        }
    }

    /* ================================
       HERO
    ================================= */

    .feedback-hero {
        position: relative;
        z-index: 2;
        max-width: 1250px;
        margin: 0 auto 35px;
        padding: 45px 35px;
        text-align: center;
        border-radius: 28px;

        background: rgba(17, 24, 50, .70);
        border: 1px solid rgba(139, 92, 246, .30);

        backdrop-filter: blur(20px);
        -webkit-backdrop-filter: blur(20px);

        box-shadow:
            0 25px 70px rgba(0, 0, 0, .45),
            inset 0 1px 0 rgba(255, 255, 255, .08);

        overflow: hidden;
    }

    .feedback-hero::before {
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

    .feedback-hero h1 {
        position: relative;
        z-index: 1;
        margin: 0;
        font-size: 44px;
        font-weight: 800;
        letter-spacing: -.8px;

        background: linear-gradient(
            90deg,
            #ffffff,
            #c4b5fd,
            #60a5fa
        );

        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
    }

    .feedback-hero p {
        position: relative;
        z-index: 1;
        margin: 12px 0 0;
        color: #aeb9d6;
        font-size: 16px;
    }

    /* ================================
       GLASS CONTAINER
    ================================= */

    .feedback-container {
        position: relative;
        z-index: 2;
        max-width: 1250px;
        margin: auto;
    }

    .glass-panel {
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

    .glass-panel::before {
        content: "";
        position: absolute;
        top: 0;
        left: 10%;
        right: 10%;
        height: 1px;

        background: linear-gradient(
            90deg,
            transparent,
            rgba(139, 92, 246, .8),
            rgba(59, 130, 246, .8),
            transparent
        );
    }

    /* ================================
       HEADER
    ================================= */

    .feedback-header {
        display: flex;
        align-items: center;
        justify-content: space-between;
        gap: 20px;
        margin-bottom: 25px;
    }

    .feedback-title {
        margin: 0;
        color: #ffffff;
        font-size: 27px;
        font-weight: 750;
    }

    .feedback-subtitle {
        margin: 5px 0 0;
        color: #8f9bb8;
        font-size: 14px;
    }

    /* ================================
       EXPORT BUTTON
    ================================= */

    .btn-export {
        display: inline-flex;
        align-items: center;
        justify-content: center;
        padding: 12px 22px;

        border-radius: 12px;
        color: #ffffff !important;
        text-decoration: none !important;
        font-weight: 700;

        background: linear-gradient(
            135deg,
            #7c3aed,
            #2563eb
        );

        border: 1px solid rgba(255, 255, 255, .12);

        box-shadow:
            0 10px 25px rgba(37, 99, 235, .25);

        transition: all .3s ease;
    }

    .btn-export:hover {
        transform: translateY(-4px);
        box-shadow:
            0 18px 35px rgba(124, 58, 237, .35);

        color: #fff !important;
    }

    /* ================================
       TABLE
    ================================= */

    .feedback-table-wrapper {
        width: 100%;
        overflow-x: auto;
        border-radius: 18px;

        border: 1px solid rgba(139, 92, 246, .18);
    }

    .feedback-table {
        width: 100%;
        min-width: 950px;
        margin: 0;

        border-collapse: separate;
        border-spacing: 0;

        color: #dbe4ff;
        background: rgba(7, 12, 30, .55);
    }

    .feedback-table thead th {
        padding: 17px 15px;
        border: none !important;

        color: #ffffff;
        font-size: 13px;
        font-weight: 700;
        text-transform: uppercase;
        letter-spacing: .6px;

        background: linear-gradient(
            135deg,
            rgba(124, 58, 237, .85),
            rgba(37, 99, 235, .85)
        );
    }

    .feedback-table tbody td {
        padding: 17px 15px;
        vertical-align: middle;

        color: #cbd5f5;
        border-top: 1px solid rgba(148, 163, 184, .10) !important;
        border-left: none !important;
        border-right: none !important;
        border-bottom: none !important;

        background: rgba(15, 23, 42, .55);
    }

    .feedback-table tbody tr {
        transition: all .3s ease;
    }

    .feedback-table tbody tr:hover {
        transform: scale(1.005);

        background: rgba(124, 58, 237, .08);

        box-shadow:
            inset 4px 0 0 #8b5cf6,
            0 10px 30px rgba(0, 0, 0, .20);
    }

    .feedback-table tbody tr:hover td {
        color: #ffffff;
        background: rgba(30, 41, 70, .70);
    }

    /* ================================
       RATING
    ================================= */

    .rating {
        white-space: nowrap;
        font-size: 16px;
        letter-spacing: 1px;
    }

    /* ================================
       ACTION BUTTONS
    ================================= */

    .action-btn {
        display: inline-flex;
        align-items: center;
        justify-content: center;

        min-width: 62px;
        padding: 8px 12px;
        margin: 2px;

        border-radius: 9px;
        color: #ffffff !important;
        text-decoration: none !important;

        font-size: 12px;
        font-weight: 700;

        transition: all .25s ease;
    }

    .view-btn {
        background: linear-gradient(
            135deg,
            #2563eb,
            #3b82f6
        );

        box-shadow: 0 7px 18px rgba(37, 99, 235, .20);
    }

    .delete-btn {
        background: linear-gradient(
            135deg,
            #dc2626,
            #ef4444
        );

        box-shadow: 0 7px 18px rgba(220, 38, 38, .20);
    }

    .action-btn:hover {
        transform: translateY(-3px) scale(1.03);
        color: #ffffff !important;
    }

    /* ================================
       BOTTOM CARDS
    ================================= */

    .bottom-section {
        margin-top: 30px;
    }

    .info-card {
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

    .info-card:hover {
        transform: translateY(-7px);

        border-color: rgba(139, 92, 246, .45);

        box-shadow:
            0 28px 65px rgba(0, 0, 0, .45),
            0 0 35px rgba(124, 58, 237, .10);
    }

    .info-card h3 {
        margin-bottom: 22px;
        color: #ffffff;
        font-size: 23px;
        font-weight: 750;
    }

    .stat-row {
        display: flex;
        align-items: center;
        justify-content: space-between;

        padding: 13px 0;

        color: #aeb9d6;

        border-bottom: 1px solid rgba(148, 163, 184, .10);
    }

    .stat-row:last-of-type {
        border-bottom: none;
    }

    .stat-row strong {
        color: #ffffff;
    }

    .average-rating {
        color: #fbbf24;
        font-weight: 700;
    }

    /* ================================
       QUICK ACTIONS
    ================================= */

    .quick-action {
        display: flex;
        align-items: center;
        justify-content: center;

        width: 100%;
        min-height: 48px;

        margin-bottom: 13px;

        border-radius: 11px;

        color: #ffffff !important;
        text-decoration: none !important;

        font-weight: 700;

        transition: all .3s ease;

        border: 1px solid rgba(255, 255, 255, .08);
    }

    .quick-action:hover {
        transform: translateX(5px) translateY(-2px);
        color: #ffffff !important;

        box-shadow:
            0 12px 28px rgba(0, 0, 0, .25);
    }

    .manage-users {
        background: linear-gradient(135deg, #059669, #10b981);
    }

    .manage-courses {
        background: linear-gradient(135deg, #0284c7, #06b6d4);
    }

    .manage-enrollments {
        background: linear-gradient(135deg, #d97706, #f59e0b);
    }

    .dashboard {
        background: linear-gradient(135deg, #475569, #64748b);
    }

    .export-report {
        background: linear-gradient(135deg, #dc2626, #ef4444);
    }

    /* ================================
       RESPONSIVE
    ================================= */

    @media (max-width: 991px) {

        .manage-feedback-page {
            padding-top: 90px;
        }

        .feedback-hero h1 {
            font-size: 38px;
        }

        .feedback-header {
            align-items: flex-start;
            flex-direction: column;
        }

        .btn-export {
            width: 100%;
        }
    }

    @media (max-width: 767px) {

        .manage-feedback-page {
            padding-top: 80px;
            padding-bottom: 50px;
        }

        .feedback-hero {
            margin: 0 15px 25px;
            padding: 35px 20px;
            border-radius: 20px;
        }

        .feedback-hero h1 {
            font-size: 31px;
        }

        .feedback-container {
            margin: 0 15px;
        }

        .glass-panel {
            padding: 18px;
            border-radius: 20px;
        }

        .feedback-title {
            font-size: 23px;
        }

        .info-card {
            margin-bottom: 20px;
            padding: 22px;
        }
    }

    @media (prefers-reduced-motion: reduce) {

        .feedback-orb,
        .feedback-table tbody tr,
        .info-card,
        .action-btn,
        .quick-action,
        .btn-export {
            animation: none !important;
            transition: none !important;
        }
    }

</style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="manage-feedback-page">

    <!-- Background Orbs -->
    <div class="feedback-orb one"></div>
    <div class="feedback-orb two"></div>
    <div class="feedback-orb three"></div>


    <!-- Hero -->
    <div class="feedback-hero">

        <h1>Manage Feedback</h1>

        <p>
            Admin Panel / Manage Feedback
        </p>

    </div>


    <!-- Main Content -->
    <div class="feedback-container">

        <div class="glass-panel">

            <!-- Header -->
            <div class="feedback-header">

                <div>

                    <h3 class="feedback-title">
                        Student Feedback
                    </h3>

                    <p class="feedback-subtitle">
                        Review and manage feedback submitted by students
                    </p>

                </div>

                <a href="#" class="btn-export">
                    Export Feedback
                </a>

            </div>


            <!-- Feedback Table -->
            <div class="feedback-table-wrapper">

                <table class="feedback-table">

                    <thead>

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

                            <td>
                                Rahul Patel
                            </td>

                            <td>
                                HTML &amp; CSS
                            </td>

                            <td class="rating">
                                ⭐⭐⭐⭐⭐
                            </td>

                            <td>
                                Excellent course with practical examples.
                            </td>

                            <td>

                                <a href="#" class="action-btn view-btn">
                                    View
                                </a>

                                <a href="#" class="action-btn delete-btn">
                                    Delete
                                </a>

                            </td>

                        </tr>


                        <tr>

                            <td>2</td>

                            <td>
                                Priya Shah
                            </td>

                            <td>
                                ASP.NET Web Forms
                            </td>

                            <td class="rating">
                                ⭐⭐⭐⭐
                            </td>

                            <td>
                                Very helpful and easy to understand.
                            </td>

                            <td>

                                <a href="#" class="action-btn view-btn">
                                    View
                                </a>

                                <a href="#" class="action-btn delete-btn">
                                    Delete
                                </a>

                            </td>

                        </tr>


                        <tr>

                            <td>3</td>

                            <td>
                                Meet Joshi
                            </td>

                            <td>
                                Python Programming
                            </td>

                            <td class="rating">
                                ⭐⭐⭐⭐⭐
                            </td>

                            <td>
                                Great explanations and quality videos.
                            </td>

                            <td>

                                <a href="#" class="action-btn view-btn">
                                    View
                                </a>

                                <a href="#" class="action-btn delete-btn">
                                    Delete
                                </a>

                            </td>

                        </tr>


                        <tr>

                            <td>4</td>

                            <td>
                                Riya Mehta
                            </td>

                            <td>
                                Java Programming
                            </td>

                            <td class="rating">
                                ⭐⭐⭐⭐
                            </td>

                            <td>
                                Good course with clear concepts.
                            </td>

                            <td>

                                <a href="#" class="action-btn view-btn">
                                    View
                                </a>

                                <a href="#" class="action-btn delete-btn">
                                    Delete
                                </a>

                            </td>

                        </tr>


                        <tr>

                            <td>5</td>

                            <td>
                                Dhruv Patel
                            </td>

                            <td>
                                JavaScript
                            </td>

                            <td class="rating">
                                ⭐⭐⭐⭐⭐
                            </td>

                            <td>
                                Excellent practical coding sessions.
                            </td>

                            <td>

                                <a href="#" class="action-btn view-btn">
                                    View
                                </a>

                                <a href="#" class="action-btn delete-btn">
                                    Delete
                                </a>

                            </td>

                        </tr>


                        <tr>

                            <td>6</td>

                            <td>
                                Neha Shah
                            </td>

                            <td>
                                Database Management
                            </td>

                            <td class="rating">
                                ⭐⭐⭐⭐
                            </td>

                            <td>
                                Database examples were very useful.
                            </td>

                            <td>

                                <a href="#" class="action-btn view-btn">
                                    View
                                </a>

                                <a href="#" class="action-btn delete-btn">
                                    Delete
                                </a>

                            </td>

                        </tr>


                        <tr>

                            <td>7</td>

                            <td>
                                Amit Patel
                            </td>

                            <td>
                                Cyber Security
                            </td>

                            <td class="rating">
                                ⭐⭐⭐
                            </td>

                            <td>
                                Need more practical demonstrations.
                            </td>

                            <td>

                                <a href="#" class="action-btn view-btn">
                                    View
                                </a>

                                <a href="#" class="action-btn delete-btn">
                                    Delete
                                </a>

                            </td>

                        </tr>


                        <tr>

                            <td>8</td>

                            <td>
                                Krishna Joshi
                            </td>

                            <td>
                                Artificial Intelligence
                            </td>

                            <td class="rating">
                                ⭐⭐⭐⭐⭐
                            </td>

                            <td>
                                One of the best AI beginner courses.
                            </td>

                            <td>

                                <a href="#" class="action-btn view-btn">
                                    View
                                </a>

                                <a href="#" class="action-btn delete-btn">
                                    Delete
                                </a>

                            </td>

                        </tr>


                        <tr>

                            <td>9</td>

                            <td>
                                Pooja Patel
                            </td>

                            <td>
                                Data Science
                            </td>

                            <td class="rating">
                                ⭐⭐⭐⭐
                            </td>

                            <td>
                                Very informative and easy to learn.
                            </td>

                            <td>

                                <a href="#" class="action-btn view-btn">
                                    View
                                </a>

                                <a href="#" class="action-btn delete-btn">
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

            <!-- Statistics -->
            <div class="col-md-6 mb-4">

                <div class="info-card">

                    <h3>
                        Feedback Statistics
                    </h3>

                    <div class="stat-row">

                        <span>
                            Total Feedback
                        </span>

                        <strong>
                            180
                        </strong>

                    </div>


                    <div class="stat-row">

                        <span>
                            Average Rating
                        </span>

                        <strong class="average-rating">
                            ⭐⭐⭐⭐☆ (4.5/5)
                        </strong>

                    </div>


                    <div class="stat-row">

                        <span>
                            5 Star Reviews
                        </span>

                        <strong>
                            95
                        </strong>

                    </div>


                    <div class="stat-row">

                        <span>
                            4 Star Reviews
                        </span>

                        <strong>
                            60
                        </strong>

                    </div>


                    <div class="stat-row">

                        <span>
                            3 Star Reviews
                        </span>

                        <strong>
                            25
                        </strong>

                    </div>


                    <a href="#" class="quick-action manage-courses" style="margin-top:22px;">
                        View All Feedback
                    </a>

                </div>

            </div>


            <!-- Quick Actions -->
            <div class="col-md-6 mb-4">

                <div class="info-card">

                    <h3>
                        Quick Actions
                    </h3>


                    <a href="ManageUsers.aspx"
                       class="quick-action manage-users">

                        Manage Users

                    </a>


                    <a href="ManageCourses.aspx"
                       class="quick-action manage-courses">

                        Manage Courses

                    </a>


                    <a href="ManageEnrollments.aspx"
                       class="quick-action manage-enrollments">

                        Manage Enrollments

                    </a>


                    <a href="Dashboard.aspx"
                       class="quick-action dashboard">

                        Go to Dashboard

                    </a>


                    <a href="#"
                       class="quick-action export-report">

                        Export Feedback Report

                    </a>

                </div>

            </div>

        </div>

    </div>

</div>

</asp:Content>