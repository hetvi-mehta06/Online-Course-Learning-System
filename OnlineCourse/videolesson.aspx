<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="videolesson.aspx.cs" Inherits="OnlineCourse.videolesson" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>

        /* =========================================
           VIDEO LESSON PAGE
           ========================================= */

        .video-page {
            position: relative;

            min-height: 100vh;

            padding: 55px 0 90px;

            background:
                radial-gradient(
                    circle at 8% 8%,
                    rgba(124, 58, 237, 0.18),
                    transparent 30%
                ),
                radial-gradient(
                    circle at 92% 18%,
                    rgba(6, 182, 212, 0.12),
                    transparent 28%
                ),
                linear-gradient(
                    135deg,
                    #070b1d,
                    #0d1230 50%,
                    #071526
                );

            overflow: hidden;
        }


        .video-page:before {
            content: "";

            position: absolute;

            width: 300px;
            height: 300px;

            left: -150px;
            top: 180px;

            border-radius: 50%;

            background: rgba(124, 58, 237, 0.13);

            filter: blur(80px);

            pointer-events: none;
        }


        .video-page:after {
            content: "";

            position: absolute;

            width: 320px;
            height: 320px;

            right: -160px;
            bottom: 100px;

            border-radius: 50%;

            background: rgba(6, 182, 212, 0.09);

            filter: blur(80px);

            pointer-events: none;
        }


        .video-container {
            position: relative;

            width: 92%;
            max-width: 1350px;

            margin: auto;

            z-index: 2;
        }


        /* =========================================
           PAGE HEADER
           ========================================= */

        .video-page-header {
            padding: 32px 35px;

            margin-bottom: 30px;

            border-radius: 24px;

            background:
                linear-gradient(
                    135deg,
                    rgba(124, 58, 237, 0.20),
                    rgba(6, 182, 212, 0.08)
                );

            border: 1px solid rgba(255, 255, 255, 0.11);

            box-shadow:
                0 20px 50px rgba(0, 0, 0, 0.25);

            backdrop-filter: blur(18px);
            -webkit-backdrop-filter: blur(18px);
        }


        .video-page-badge {
            display: inline-flex;

            align-items: center;

            padding: 8px 16px;

            margin-bottom: 12px;

            border-radius: 25px;

            background: rgba(255, 255, 255, 0.07);

            border: 1px solid rgba(255, 255, 255, 0.11);

            color: #67e8f9;

            font-size: 11px;

            font-weight: 700;

            letter-spacing: 1px;
        }


        .video-page-header h1 {
            margin: 0 0 8px;

            color: #ffffff;

            font-size: 34px;

            font-weight: 800;
        }


        .video-page-header p {
            margin: 0;

            color: #8f9db5;

            font-size: 14px;
        }


        /* =========================================
           MAIN VIDEO GRID
           ========================================= */

        .video-main-grid {
            display: grid;

            grid-template-columns:
                minmax(0, 2fr)
                minmax(300px, 0.85fr);

            gap: 28px;

            align-items: start;
        }


        /* =========================================
           VIDEO CARD
           ========================================= */

        .video-content-card {
            padding: 28px;

            border-radius: 25px;

            background:
                linear-gradient(
                    145deg,
                    rgba(255, 255, 255, 0.075),
                    rgba(255, 255, 255, 0.025)
                );

            border: 1px solid rgba(255, 255, 255, 0.10);

            box-shadow:
                0 20px 55px rgba(0, 0, 0, 0.30);

            backdrop-filter: blur(18px);
            -webkit-backdrop-filter: blur(18px);
        }


        .video-content-card h2 {
            margin: 0 0 20px;

            color: #ffffff;

            font-size: 25px;

            font-weight: 750;
        }


        /* =========================================
           VIDEO PLAYER
           ========================================= */

        .video-player {
            position: relative;

            width: 100%;

            padding-bottom: 56.25%;

            height: 0;

            margin-bottom: 28px;

            overflow: hidden;

            border-radius: 18px;

            border: 1px solid rgba(255, 255, 255, 0.10);

            background: #030712;

            box-shadow:
                0 15px 40px rgba(0, 0, 0, 0.35);
        }


        .video-player iframe {
            position: absolute;

            top: 0;
            left: 0;

            width: 100%;
            height: 100%;

            border: 0;
        }


        /* =========================================
           DESCRIPTION
           ========================================= */

        .video-description {
            padding: 22px 0;

            border-bottom: 1px solid rgba(255, 255, 255, 0.09);
        }


        .video-description h3,
        .curriculum-section h3 {
            margin: 0 0 12px;

            color: #ffffff;

            font-size: 20px;

            font-weight: 700;
        }


        .video-description p {
            margin: 0;

            color: #929fb5;

            font-size: 14px;

            line-height: 1.8;
        }


        /* =========================================
           CURRICULUM
           ========================================= */

        .curriculum-section {
            padding-top: 25px;
        }


        .curriculum-list {
            display: grid;

            grid-template-columns:
                repeat(2, 1fr);

            gap: 10px;

            margin: 0;
            padding: 0;

            list-style: none;
        }


        .curriculum-list li {
            padding: 13px 15px;

            border-radius: 12px;

            background:
                rgba(255, 255, 255, 0.045);

            border: 1px solid rgba(255, 255, 255, 0.07);

            color: #aebbd0;

            font-size: 13px;

            transition: 0.3s ease;
        }


        .curriculum-list li:hover {
            color: #ffffff;

            background:
                rgba(124, 58, 237, 0.13);

            border-color:
                rgba(124, 58, 237, 0.30);

            transform: translateX(4px);
        }


        .curriculum-check {
            color: #22d3ee;

            font-weight: 700;

            margin-right: 5px;
        }


        /* =========================================
           INFORMATION CARD
           ========================================= */

        .course-info-card {
            padding: 28px;

            border-radius: 25px;

            background:
                linear-gradient(
                    145deg,
                    rgba(255, 255, 255, 0.075),
                    rgba(255, 255, 255, 0.025)
                );

            border: 1px solid rgba(255, 255, 255, 0.10);

            box-shadow:
                0 20px 55px rgba(0, 0, 0, 0.30);

            backdrop-filter: blur(18px);
            -webkit-backdrop-filter: blur(18px);
        }


        .course-info-card h3 {
            margin: 0 0 18px;

            color: #ffffff;

            font-size: 21px;

            font-weight: 750;
        }


        .info-divider {
            height: 1px;

            margin: 0 0 20px;

            background:
                rgba(255, 255, 255, 0.09);
        }


        .course-info-row {
            display: flex;

            justify-content: space-between;

            gap: 15px;

            padding: 11px 0;

            border-bottom: 1px solid rgba(255, 255, 255, 0.055);

            font-size: 13px;
        }


        .course-info-row:last-of-type {
            border-bottom: none;
        }


        .course-info-label {
            color: #7f8da5;
        }


        .course-info-value {
            color: #e5e7eb;

            font-weight: 600;

            text-align: right;
        }


        /* =========================================
           PROGRESS
           ========================================= */

        .progress-heading {
            display: flex;

            justify-content: space-between;

            margin: 25px 0 10px;
        }


        .progress-heading span:first-child {
            color: #9aa8be;

            font-size: 13px;
        }


        .progress-heading span:last-child {
            color: #67e8f9;

            font-size: 13px;

            font-weight: 700;
        }


        .custom-progress {
            width: 100%;
            height: 9px;

            overflow: hidden;

            border-radius: 20px;

            background:
                rgba(255, 255, 255, 0.08);
        }


        .custom-progress-bar {
            height: 100%;

            width: 80%;

            border-radius: 20px;

            background:
                linear-gradient(
                    90deg,
                    #7c3aed,
                    #06b6d4
                );

            box-shadow:
                0 0 15px rgba(6, 182, 212, 0.25);
        }


        /* =========================================
           BUTTONS
           ========================================= */

        .video-action-btn {
            display: flex;

            align-items: center;
            justify-content: center;

            width: 100%;

            padding: 13px 18px;

            margin-top: 14px;

            border-radius: 12px;

            text-decoration: none !important;

            font-size: 13px;

            font-weight: 700;

            transition: 0.3s ease;
        }


        .next-lesson-btn {
            color: #ffffff !important;

            background:
                linear-gradient(
                    135deg,
                    #7c3aed,
                    #2563eb
                );

            box-shadow:
                0 10px 25px rgba(37, 99, 235, 0.20);
        }


        .next-lesson-btn:hover {
            color: #ffffff !important;

            background:
                linear-gradient(
                    135deg,
                    #8b5cf6,
                    #06b6d4
                );

            transform: translateY(-2px);
        }


        .back-course-btn {
            color: #a5f3fc !important;

            background:
                rgba(6, 182, 212, 0.06);

            border: 1px solid rgba(6, 182, 212, 0.22);
        }


        .back-course-btn:hover {
            color: #ffffff !important;

            background:
                rgba(6, 182, 212, 0.14);

            transform: translateY(-2px);
        }


        /* =========================================
           RELATED COURSES
           ========================================= */

        .related-section {
            margin-top: 45px;
        }


        .related-heading {
            margin-bottom: 25px;
        }


        .related-heading h2 {
            margin: 0 0 8px;

            color: #ffffff;

            font-size: 27px;

            font-weight: 750;
        }


        .related-heading p {
            margin: 0;

            color: #8492aa;

            font-size: 14px;
        }


        .related-grid {
            display: grid;

            grid-template-columns:
                repeat(3, 1fr);

            gap: 22px;
        }


        .related-card {
            overflow: hidden;

            border-radius: 20px;

            background:
                rgba(255, 255, 255, 0.055);

            border: 1px solid rgba(255, 255, 255, 0.09);

            box-shadow:
                0 15px 40px rgba(0, 0, 0, 0.24);

            transition: 0.35s ease;
        }


        .related-card:hover {
            transform: translateY(-7px);

            border-color:
                rgba(124, 58, 237, 0.38);

            box-shadow:
                0 22px 50px rgba(0, 0, 0, 0.32);
        }


        .related-image {
            width: 100%;

            height: 190px;

            object-fit: cover;

            display: block;

            transition: 0.4s ease;
        }


        .related-card:hover .related-image {
            transform: scale(1.04);
        }


        .related-content {
            padding: 22px;
        }


        .related-content h3 {
            margin: 0 0 17px;

            color: #ffffff;

            font-size: 18px;

            font-weight: 700;
        }


        .related-btn {
            display: inline-flex;

            padding: 9px 17px;

            border-radius: 10px;

            color: #ffffff !important;

            background:
                linear-gradient(
                    135deg,
                    #7c3aed,
                    #2563eb
                );

            font-size: 12px;

            font-weight: 700;

            text-decoration: none !important;

            transition: 0.3s ease;
        }


        .related-btn:hover {
            color: #ffffff !important;

            background:
                linear-gradient(
                    135deg,
                    #8b5cf6,
                    #06b6d4
                );

            transform: translateY(-2px);
        }


        /* =========================================
           RESPONSIVE
           ========================================= */

        @media (max-width: 1000px) {

            .video-main-grid {
                grid-template-columns: 1fr;
            }

            .related-grid {
                grid-template-columns:
                    repeat(2, 1fr);
            }

        }


        @media (max-width: 700px) {

            .video-page {
                padding: 35px 0 65px;
            }

            .video-container {
                width: 90%;
            }

            .video-page-header {
                padding: 25px;
            }

            .video-page-header h1 {
                font-size: 28px;
            }

            .video-content-card,
            .course-info-card {
                padding: 20px;
            }

            .curriculum-list {
                grid-template-columns: 1fr;
            }

            .related-grid {
                grid-template-columns: 1fr;
            }

            .related-image {
                height: 210px;
            }

        }


        @media (max-width: 450px) {

            .video-page-header h1 {
                font-size: 24px;
            }

            .video-content-card h2 {
                font-size: 21px;
            }

        }

    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="video-page">

        <div class="video-container">


            <!-- =====================================
                 PAGE HEADER
                 ===================================== -->

            <div class="video-page-header">

                <div class="video-page-badge">
                    ▶ &nbsp; VIDEO LESSON
                </div>

                <h1>
                    Learn Anytime, Anywhere
                </h1>

                <p>
                    Watch lessons, follow the curriculum and continue your learning journey.
                </p>

            </div>


            <!-- =====================================
                 MAIN VIDEO AREA
                 ===================================== -->

            <div class="video-main-grid">


                <!-- =================================
                     LEFT VIDEO CONTENT
                     ================================= -->

                <div class="video-content-card">

                    <h2>
                        HTML &amp; CSS Complete Course
                    </h2>


                    <!-- VIDEO -->

                    <div class="video-player">

                        <iframe
                            src="https://www.youtube.com/embed/qz0aGYrrlhU"
                            allowfullscreen>
                        </iframe>

                    </div>


                    <!-- DESCRIPTION -->

                    <div class="video-description">

                        <h3>
                            Course Description
                        </h3>

                        <p>
                            Learn HTML &amp; CSS from beginner to advanced level.
                            Build responsive websites with real-world examples,
                            practical projects and HD video lessons.
                        </p>

                    </div>


                    <!-- CURRICULUM -->

                    <div class="curriculum-section">

                        <h3>
                            Course Curriculum
                        </h3>

                        <ul class="curriculum-list">

                            <li>
                                <span class="curriculum-check">✓</span>
                                Introduction
                            </li>

                            <li>
                                <span class="curriculum-check">✓</span>
                                HTML Basics
                            </li>

                            <li>
                                <span class="curriculum-check">✓</span>
                                HTML Forms
                            </li>

                            <li>
                                <span class="curriculum-check">✓</span>
                                CSS Basics
                            </li>

                            <li>
                                <span class="curriculum-check">✓</span>
                                Flexbox
                            </li>

                            <li>
                                <span class="curriculum-check">✓</span>
                                CSS Grid
                            </li>

                            <li>
                                <span class="curriculum-check">✓</span>
                                Responsive Website
                            </li>

                            <li>
                                <span class="curriculum-check">✓</span>
                                Final Project
                            </li>

                        </ul>

                    </div>

                </div>


                <!-- =================================
                     RIGHT COURSE INFORMATION
                     ================================= -->

                <div class="course-info-card">

                    <h3>
                        Course Information
                    </h3>

                    <div class="info-divider"></div>


                    <div class="course-info-row">

                        <span class="course-info-label">
                            Instructor
                        </span>

                        <span class="course-info-value">
                            Tony Garret
                        </span>

                    </div>


                    <div class="course-info-row">

                        <span class="course-info-label">
                            Category
                        </span>

                        <span class="course-info-value">
                            Web Development
                        </span>

                    </div>


                    <div class="course-info-row">

                        <span class="course-info-label">
                            Duration
                        </span>

                        <span class="course-info-value">
                            8 Weeks
                        </span>

                    </div>


                    <div class="course-info-row">

                        <span class="course-info-label">
                            Lessons
                        </span>

                        <span class="course-info-value">
                            20
                        </span>

                    </div>


                    <div class="course-info-row">

                        <span class="course-info-label">
                            Language
                        </span>

                        <span class="course-info-value">
                            English
                        </span>

                    </div>


                    <div class="course-info-row">

                        <span class="course-info-label">
                            Level
                        </span>

                        <span class="course-info-value">
                            Beginner
                        </span>

                    </div>


                    <!-- PROGRESS -->

                    <div class="progress-heading">

                        <span>
                            Your Progress
                        </span>

                        <span>
                            80%
                        </span>

                    </div>

                    <div class="custom-progress">

                        <div class="custom-progress-bar">
                        </div>

                    </div>


                    <!-- BUTTONS -->

                    <a
                        href="#"
                        class="video-action-btn next-lesson-btn">

                        Next Lesson
                        &nbsp; →
                        
                    </a>


                    <a
                        href="MyCourses.aspx"
                        class="video-action-btn back-course-btn">

                        ← &nbsp; Back to My Courses

                    </a>

                </div>

            </div>


            <!-- =====================================
                 RELATED COURSES
                 ===================================== -->

            <div class="related-section">

                <div class="related-heading">

                    <h2>
                        Related Courses
                    </h2>

                    <p>
                        You may also like these courses.
                    </p>

                </div>


                <div class="related-grid">


                    <!-- ASP.NET -->

                    <div class="related-card">

                        <img
                            src="images/work-2.jpg"
                            class="related-image"
                            alt="ASP.NET Web Forms" />

                        <div class="related-content">

                            <h3>
                                ASP.NET Web Forms
                            </h3>

                            <a
                                href="CourseDetails.aspx?course=aspnet"
                                class="related-btn">

                                View Course

                            </a>

                        </div>

                    </div>


                    <!-- PYTHON -->

                    <div class="related-card">

                        <img
                            src="images/work-3.jpg"
                            class="related-image"
                            alt="Python Programming" />

                        <div class="related-content">

                            <h3>
                                Python Programming
                            </h3>

                            <a
                                href="CourseDetails.aspx?course=python"
                                class="related-btn">

                                View Course

                            </a>

                        </div>

                    </div>


                    <!-- JAVA -->

                    <div class="related-card">

                        <img
                            src="images/work-4.jpg"
                            class="related-image"
                            alt="Java Programming" />

                        <div class="related-content">

                            <h3>
                                Java Programming
                            </h3>

                            <a
                                href="CourseDetails.aspx?course=java"
                                class="related-btn">

                                View Course

                            </a>

                        </div>

                    </div>


                </div>

            </div>

        </div>

    </section>

</asp:Content>