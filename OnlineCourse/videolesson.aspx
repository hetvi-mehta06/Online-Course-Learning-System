<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="videolesson.aspx.cs" Inherits="OnlineCourse.videolesson" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>

        /* =========================================
           VIDEO LESSON PAGE
           ========================================= */

        .video-page {
            position: relative;
            min-height: 100vh;


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

        /* PAGE HEADER */

        .video-page-header {
            padding: 32px 35px;


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

            box-shadow: 0 20px 50px rgba(0, 0, 0, 0.25);


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

        /* MAIN VIDEO GRID */

        .video-main-grid {
            display: grid;
            grid-template-columns:
                minmax(0, 2fr)
                minmax(300px, 0.85fr);
            gap: 28px;
            align-items: start;
        }

        /* VIDEO CARD */

        .video-content-card {


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

            box-shadow: 0 20px 55px rgba(0, 0, 0, 0.30);


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

        /* VIDEO PLAYER */

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
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.35);
        }

        .video-player iframe {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            border: 0;
        }

        /* DESCRIPTION */

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

        /* CURRICULUM */


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
            grid-template-columns: repeat(2, 1fr);
            gap: 10px;
            margin: 0;
            padding: 0;
            list-style: none;
        }

        .curriculum-list li {
            padding: 13px 15px;
            border-radius: 12px;
            background: rgba(255, 255, 255, 0.045);
            border: 1px solid rgba(255, 255, 255, 0.07);
            color: #aebbd0;
            font-size: 13px;
            transition: 0.3s ease;
        }

        .curriculum-list li:hover {
            color: #ffffff;
            background: rgba(124, 58, 237, 0.13);
            border-color: rgba(124, 58, 237, 0.30);
            transform: translateX(4px);
        }

        .curriculum-check {
            color: #22d3ee;
            font-weight: 700;
            margin-right: 5px;
        }

        /* INFORMATION CARD */

        .course-info-card {


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
            background: rgba(255, 255, 255, 0.09);
        }

        .course-info-row {
            display: flex;
            justify-content: space-between;
            gap: 15px;
            padding: 11px 0;
            border-bottom: 1px solid rgba(255, 255, 255, 0.055);
            font-size: 13px;
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

        /* PROGRESS */

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
            background: rgba(255, 255, 255, 0.08);
        }

        .custom-progress-bar {
            height: 100%;


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


            box-shadow: 0 0 15px rgba(6, 182, 212, 0.25);
        }

                /* BUTTONS */

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


            box-shadow: 0 10px 25px rgba(37, 99, 235, 0.20);
        }

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
            background: rgba(6, 182, 212, 0.06);
            border: 1px solid rgba(6, 182, 212, 0.22);
        }

        .back-course-btn:hover {
            color: #ffffff !important;
            background: rgba(6, 182, 212, 0.14);
            transform: translateY(-2px);
        }

        /* RELATED COURSES */


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
            grid-template-columns: repeat(3, 1fr);
            gap: 22px;
        }

        .related-card {
            overflow: hidden;
            border-radius: 20px;
            background: rgba(255, 255, 255, 0.055);
            border: 1px solid rgba(255, 255, 255, 0.09);
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.24);
            transition: 0.35s ease;
        }

        .related-card:hover {
            transform: translateY(-7px);
            border-color: rgba(124, 58, 237, 0.38);
            box-shadow: 0 22px 50px rgba(0, 0, 0, 0.32);
        }

        .related-image {
            width: 100%;
            height: 190px;
            object-fit: cover;
            display: block;
            transition: 0.4s ease;
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

                /* RESPONSIVE */


        /* =========================================
           RESPONSIVE
           ========================================= */

        @media (max-width: 1000px) {

            .video-main-grid {
                grid-template-columns: 1fr;
            }

            .related-grid {
    grid-template-columns: repeat(2, 1fr);

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


          /* VIDEO LESSON TABLE SECTION */

        .vl-section {
            position: relative;
            width: 100%;
            padding: 10px 0 40px;
            color: #ffffff;
        }

        .vl-section .container {
            width: 100%;
            max-width: 100%;
            padding: 0;
            margin: 0;
        }

        .vl-card {
            width: 100%;
            padding: 30px;
            border-radius: 24px;

            background: linear-gradient(
                145deg,
                rgba(19, 29, 65, 0.96),
                rgba(8, 17, 39, 0.96)
            );

            border: 1px solid rgba(255, 255, 255, 0.10);
            box-shadow: 0 20px 50px rgba(0, 0, 0, 0.25);
            overflow: hidden;
        }

        .vl-title {
            margin: 0 0 12px;
            color: #ffffff;
            font-size: 28px;
            font-weight: 800;
        }

        .vl-desc {
            margin: 0 0 25px;
            color: #9aa8c2;
            font-size: 15px;
            line-height: 1.8;
        }

        .vl-table-wrap {
            width: 100%;
            overflow-x: auto;
            border-radius: 14px;
        }

        .vl-grid {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0;
            border: 1px solid rgba(255, 255, 255, 0.12);
            background: rgba(9, 16, 37, 0.75);
            color: #dce6fa;
            font-size: 14px;
        }

        .vl-grid th {
            padding: 16px 14px;
            text-align: left;
            white-space: nowrap;
            color: #ffffff;
            font-size: 14px;
            font-weight: 700;

            background: linear-gradient(
                135deg,
                rgba(124, 58, 237, 0.32),
                rgba(37, 99, 235, 0.25)
            );

            border: 1px solid rgba(255, 255, 255, 0.10);
        }

        .vl-grid td {
            padding: 15px 14px;
            color: #b9c7df;
            vertical-align: middle;
            border: 1px solid rgba(255, 255, 255, 0.07);
        }

        .vl-grid tr:hover td {
            background: rgba(124, 58, 237, 0.10);
            color: #ffffff;
        }

        .vl-watch {
            display: inline-block;
            padding: 10px 16px;
            border: none;
            border-radius: 10px;

            background: linear-gradient(
                135deg,
                #7c3aed,
                #2563eb
            );

            color: #ffffff !important;
            font-size: 13px;
            font-weight: 700;
            text-decoration: none !important;
            cursor: pointer;
            white-space: nowrap;
            transition: 0.3s ease;
        }

        .vl-watch:hover {
            background: linear-gradient(
                135deg,
                #8b5cf6,
                #06b6d4
            );

            color: #ffffff !important;
            transform: translateY(-2px);
        }

        .vl-message {
            display: block;
            margin-top: 18px;
            color: #67e8f9;
            font-size: 14px;
        }

        @media (max-width: 700px) {
            .vl-card {
                padding: 20px 14px;
            }

            .vl-title {
                font-size: 23px;
            }

            .vl-desc {
                font-size: 13px;
            }

            .vl-grid {
                min-width: 650px;
            }
        }

    </style>

</asp:Content>
       

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="video-page">

        <div class="video-container">

            <!-- PAGE HEADER -->


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


            <section class="vl-section">

                <div class="container">

                    <div class="vl-card">

                        <h2 class="vl-title">Available Video Lessons</h2>

                        <p class="vl-desc">
                            Watch your course lessons and improve your knowledge with LearnSphere.
                        </p>

                        <div class="vl-table-wrap">

                            <asp:GridView ID="GridView1" runat="server"
                                AutoGenerateColumns="False"
                                CssClass="vl-grid"
                                GridLines="Both"
                                EmptyDataText="No published video lessons available."
                                OnRowCommand="GridView1_RowCommand">

                                <Columns>

                                    <asp:TemplateField HeaderText="ID">
                                        <ItemTemplate>
                                            <asp:Label ID="lblID" runat="server"
                                                Text='<%# Eval("ID") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Video Title">
                                        <ItemTemplate>
                                            <asp:Label ID="lblTitle" runat="server"
                                                Text='<%# Eval("VideoTitle") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Course">
                                        <ItemTemplate>
                                            <asp:Label ID="lblCourse" runat="server"
                                                Text='<%# Eval("CourseID") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Duration">
                                        <ItemTemplate>
                                            <asp:Label ID="lblDuration" runat="server"
                                                Text='<%# Eval("Duration") + " Min" %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Status">
                                        <ItemTemplate>
                                            <asp:Label ID="lblStatus" runat="server"
                                                Text='<%# Eval("Status") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="Action">
                                        <ItemTemplate>

                                            <asp:Button ID="btnWatchVideo" runat="server"
                                                Text="Watch Video"
                                                CssClass="vl-watch"
                                                CommandName="WatchVideo"
                                                CommandArgument='<%# Eval("ID") %>'
                                                CausesValidation="false" />

                                        </ItemTemplate>
                                    </asp:TemplateField>

                                </Columns>

                            </asp:GridView>

                        </div>

                        <asp:HyperLink ID="hlSelectedVideo" runat="server"
                            Text="Open Video"
                            Target="_blank"
                            Visible="false"
                            CssClass="vl-watch" />

                        <asp:Label ID="lblmsg" runat="server"
                            CssClass="vl-message" />


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


            </section>

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