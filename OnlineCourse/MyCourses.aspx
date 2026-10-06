<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="MyCourses.aspx.cs" Inherits="OnlineCourse.MyCourses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>

    /* ================================
       MAIN PAGE
    ================================= */

    .my-courses-page {
        min-height: 100vh;
        padding: 105px 0 70px;
        position: relative;
        overflow: hidden;
        background:
            radial-gradient(circle at 10% 20%, rgba(125, 55, 255, .20), transparent 30%),
            radial-gradient(circle at 90% 30%, rgba(0, 210, 255, .14), transparent 30%),
            radial-gradient(circle at 50% 100%, rgba(220, 50, 180, .12), transparent 35%),
            #090718;
    }

    /* Animated background glow */

    .my-courses-page::before {
        content: "";
        position: absolute;
        width: 450px;
        height: 450px;
        border-radius: 50%;
        background: rgba(130, 50, 255, .16);
        filter: blur(100px);
        top: 50px;
        left: -180px;
        animation: glowMove 8s ease-in-out infinite alternate;
        pointer-events: none;
    }

    .my-courses-page::after {
        content: "";
        position: absolute;
        width: 500px;
        height: 500px;
        border-radius: 50%;
        background: rgba(0, 210, 255, .12);
        filter: blur(110px);
        bottom: -200px;
        right: -180px;
        animation: glowMove2 9s ease-in-out infinite alternate;
        pointer-events: none;
    }

    @keyframes glowMove {
        from {
            transform: translate(0, 0) scale(1);
        }

        to {
            transform: translate(100px, 70px) scale(1.15);
        }
    }

    @keyframes glowMove2 {
        from {
            transform: translate(0, 0) scale(1);
        }

        to {
            transform: translate(-80px, -60px) scale(1.2);
        }
    }

    .my-courses-container {
        position: relative;
        z-index: 2;
    }


    /* ================================
       HEADER
    ================================= */

    .courses-header {
        position: relative;
        padding: 34px 38px;
        margin-bottom: 38px;

        border-radius: 28px;

        background: rgba(20, 15, 48, .72);
        border: 1px solid rgba(255,255,255,.10);

        box-shadow:
            0 25px 70px rgba(0,0,0,.35),
            inset 0 1px 0 rgba(255,255,255,.06);

        backdrop-filter: blur(18px);
        -webkit-backdrop-filter: blur(18px);

        overflow: hidden;
    }

    .courses-header::before {
        content: "";
        position: absolute;
        width: 300px;
        height: 300px;
        border-radius: 50%;
        background: rgba(135, 70, 255, .18);
        filter: blur(80px);
        top: -180px;
        left: -80px;
    }

    .header-content {
        position: relative;
        z-index: 2;
        display: flex;
        align-items: center;
        justify-content: space-between;
        gap: 25px;
    }

    .header-left {
        display: flex;
        align-items: center;
        gap: 22px;
    }

    .header-icon {
        width: 74px;
        height: 74px;
        border-radius: 22px;

        display: flex;
        align-items: center;
        justify-content: center;

        font-size: 30px;
        color: white;

        background:
            linear-gradient(135deg,
            #7b3cff,
            #168de2);

        box-shadow:
            0 15px 35px rgba(104, 55, 255, .35),
            inset 0 1px 0 rgba(255,255,255,.25);
    }

    .header-title {
        margin: 0;
        color: white;
        font-size: 40px;
        font-weight: 800;
        letter-spacing: -.8px;
    }

    .header-subtitle {
        margin: 8px 0 0;
        color: #aaa7c9;
        font-size: 16px;
    }

    .learning-badge {
        padding: 13px 21px;
        border-radius: 30px;

        color: #dffaff;
        font-weight: 700;
        font-size: 14px;

        background: rgba(0, 180, 255, .08);
        border: 1px solid rgba(0, 200, 255, .30);

        box-shadow:
            0 0 25px rgba(0, 200, 255, .08);
    }


    /* ================================
       COURSE GRID
    ================================= */

    .courses-grid {
        display: grid;
        grid-template-columns: repeat(3, 1fr);
        gap: 28px;
    }


    /* ================================
       COURSE CARD
    ================================= */

    .course-card {
        position: relative;
        min-height: 450px;

        border-radius: 27px;
        overflow: hidden;

        background:
            linear-gradient(145deg,
            rgba(25,18,58,.92),
            rgba(9,8,28,.95));

        border: 1px solid rgba(255,255,255,.10);

        box-shadow:
            0 25px 60px rgba(0,0,0,.35),
            inset 0 1px 0 rgba(255,255,255,.05);

        transition:
            transform .45s ease,
            border-color .45s ease,
            box-shadow .45s ease;
    }

    .course-card:hover {
        transform: translateY(-10px);
        border-color: rgba(150, 90, 255, .55);

        box-shadow:
            0 35px 80px rgba(0,0,0,.50),
            0 0 35px rgba(110, 55, 255, .13);
    }


    /* ================================
       3D AREA
    ================================= */

    .course-3d {
        height: 245px;
        position: relative;
        overflow: hidden;

        background:
            radial-gradient(circle at 50% 60%,
            rgba(90,50,200,.20),
            transparent 45%),
            linear-gradient(145deg,
            #171033,
            #08091d);
    }

    /* Grid floor */

    .course-grid-floor {
        position: absolute;
        width: 150%;
        height: 100%;
        left: -25%;
        bottom: -75px;

        background-image:
            linear-gradient(rgba(100,80,255,.22) 1px, transparent 1px),
            linear-gradient(90deg, rgba(100,80,255,.22) 1px, transparent 1px);

        background-size: 32px 32px;

        transform:
            perspective(350px)
            rotateX(65deg);

        opacity: .45;
    }


    /* Floating spheres */

    .orb {
        position: absolute;
        border-radius: 50%;

        filter: blur(.2px);

        box-shadow:
            inset -18px -20px 30px rgba(0,0,0,.35),
            inset 10px 8px 18px rgba(255,255,255,.35),
            0 0 35px rgba(120,70,255,.25);

        animation: floating 5s ease-in-out infinite;
    }

    .orb.one {
        width: 105px;
        height: 105px;
        left: 48px;
        top: 20px;

        background:
            radial-gradient(circle at 30% 25%,
            #c29aff,
            #7027db 45%,
            #27105f);
    }

    .orb.two {
        width: 82px;
        height: 82px;
        right: 42px;
        top: 58px;

        background:
            radial-gradient(circle at 30% 25%,
            #8ff7ff,
            #00a7c9 45%,
            #03485b);
        animation-delay: -1.5s;
    }

    .orb.three {
        width: 58px;
        height: 58px;
        left: 50%;
        bottom: -18px;

        background:
            radial-gradient(circle at 30% 25%,
            #ff91c6,
            #c9367d 50%,
            #5b153c);

        animation-delay: -3s;
    }

    @keyframes floating {
        0%,100% {
            transform: translateY(0);
        }

        50% {
            transform: translateY(-15px);
        }
    }


    /* ================================
       3D RING
    ================================= */

    .course-ring {
        position: absolute;

        width: 170px;
        height: 76px;

        left: 50%;
        top: 50%;

        transform:
            translate(-50%, -50%)
            perspective(400px)
            rotateX(55deg);

        border-radius: 50%;

        border: 1px solid rgba(150,120,255,.85);

        box-shadow:
            0 0 20px rgba(120,70,255,.40),
            inset 0 0 20px rgba(0,200,255,.10);

        animation: ringRotate 5s linear infinite;
    }

    .course-ring::before {
        content: "";

        position: absolute;
        width: 125px;
        height: 50px;

        left: 50%;
        top: 50%;

        transform:
            translate(-50%, -50%);

        border-radius: 50%;

        border: 1px dotted rgba(120,220,255,.65);
    }

    @keyframes ringRotate {
        0% {
            transform:
                translate(-50%, -50%)
                perspective(400px)
                rotateX(55deg)
                rotateZ(0deg);
        }

        100% {
            transform:
                translate(-50%, -50%)
                perspective(400px)
                rotateX(55deg)
                rotateZ(360deg);
        }
    }


    /* ================================
       CODE SYMBOL
    ================================= */

    .code-symbol {
        position: absolute;

        left: 50%;
        top: 50%;

        transform:
            translate(-50%, -50%);

        z-index: 5;

        color: white;

        font-size: 48px;
        font-weight: 900;

        text-shadow:
            0 0 12px rgba(255,255,255,.45),
            0 0 30px rgba(125,70,255,.70);
    }


    /* ================================
       NUMBER
    ================================= */

    .course-number {
        position: absolute;
        left: 18px;
        top: 18px;

        z-index: 10;

        width: 46px;
        height: 46px;

        display: flex;
        align-items: center;
        justify-content: center;

        border-radius: 14px;

        background: rgba(5,4,18,.82);
        border: 1px solid rgba(255,255,255,.15);

        color: white;
        font-size: 14px;
        font-weight: 800;

        box-shadow:
            0 10px 25px rgba(0,0,0,.35);
    }


    /* ================================
       STATUS
    ================================= */

    .course-status {
        position: absolute;
        right: 18px;
        top: 18px;

        z-index: 10;

        padding: 10px 15px;

        border-radius: 22px;

        color: #c8faff;
        font-size: 12px;
        font-weight: 800;

        background: rgba(7,8,28,.78);
        border: 1px solid rgba(0,210,255,.30);
    }


    /* ================================
       CARD CONTENT
    ================================= */

    .course-content {
        padding: 24px 25px 26px;
    }

    .course-title {
        color: white;
        font-size: 22px;
        font-weight: 800;

        margin: 0 0 16px;
    }

    .progress-label {
        display: flex;
        align-items: center;
        justify-content: space-between;

        margin-bottom: 8px;

        color: #a9a5c6;
        font-size: 14px;
    }

    .progress-percent {
        color: #d9c9ff;
        font-weight: 800;
    }

    .progress-bar {
        height: 8px;
        width: 100%;

        border-radius: 20px;

        overflow: hidden;

        background: rgba(255,255,255,.08);
    }

    .progress-fill {
        height: 100%;

        border-radius: inherit;

        background:
            linear-gradient(90deg,
            #7b3cff,
            #00d8ff);

        box-shadow:
            0 0 15px rgba(0,200,255,.35);
    }


    /* ================================
       BUTTON
    ================================= */

    .continue-btn {
        display: flex;
        align-items: center;
        justify-content: center;
        gap: 9px;

        width: 100%;

        margin-top: 21px;

        padding: 13px 18px;

        border-radius: 14px;

        color: white !important;
        text-decoration: none !important;

        font-size: 14px;
        font-weight: 800;

        background:
            linear-gradient(135deg,
            #743cff,
            #158fe8);

        border: 1px solid rgba(255,255,255,.14);

        box-shadow:
            0 10px 25px rgba(100,50,255,.22);

        transition: all .3s ease;
    }

    .continue-btn:hover {
        transform: translateY(-2px);

        box-shadow:
            0 15px 35px rgba(100,50,255,.38);

        color: white !important;
    }


    /* ================================
       SUMMARY
    ================================= */

    .summary-section {
        margin-top: 40px;

        display: grid;
        grid-template-columns: repeat(3, 1fr);
        gap: 22px;
    }

    .summary-card {
        padding: 23px;

        border-radius: 22px;

        background: rgba(19,15,43,.72);

        border: 1px solid rgba(255,255,255,.09);

        backdrop-filter: blur(15px);

        transition: all .3s ease;
    }

    .summary-card:hover {
        transform: translateY(-5px);
        border-color: rgba(130,80,255,.35);
    }

    .summary-number {
        display: block;

        color: white;

        font-size: 30px;
        font-weight: 900;

        margin-bottom: 4px;
    }

    .summary-label {
        color: #aaa6c3;
        font-size: 14px;
    }


    /* ================================
       RESPONSIVE
    ================================= */

    @media (max-width: 1100px) {

        .courses-grid {
            grid-template-columns: repeat(2, 1fr);
        }

    }

    @media (max-width: 767px) {

        .my-courses-page {
            padding: 85px 15px 50px;
        }

        .courses-header {
            padding: 25px 20px;
            border-radius: 22px;
        }

        .header-content {
            flex-direction: column;
            align-items: flex-start;
        }

        .header-left {
            align-items: flex-start;
        }

        .header-title {
            font-size: 30px;
        }

        .header-icon {
            width: 60px;
            height: 60px;
            font-size: 24px;
        }

        .learning-badge {
            align-self: flex-start;
        }

        .courses-grid {
            grid-template-columns: 1fr;
            gap: 22px;
        }

        .course-card {
            min-height: auto;
        }

        .summary-section {
            grid-template-columns: 1fr;
        }

    }

</style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<section class="my-courses-page">

    <div class="my-courses-container">

        <!-- ================= HEADER ================= -->

        <div class="courses-header">

            <div class="header-content">

                <div class="header-left">

                    <div class="header-icon">
                        <i class="fa fa-graduation-cap"></i>
                    </div>

                    <div>
                        <h1 class="header-title">My Courses</h1>

                        <p class="header-subtitle">
                            Continue your learning journey and track your progress
                        </p>
                    </div>

                </div>

                <div class="learning-badge">
                    <i class="fa fa-user"></i>
                    Student Learning Hub
                </div>

            </div>

        </div>


        <!-- ================= COURSE GRID ================= -->

        <div class="courses-grid">


            <!-- HTML & CSS -->

            <div class="course-card">

                <div class="course-3d">

                    <div class="course-number">01</div>

                    <div class="course-status">
                        In Progress
                    </div>

                    <div class="orb one"></div>
                    <div class="orb two"></div>
                    <div class="orb three"></div>

                    <div class="course-grid-floor"></div>

                    <div class="course-ring"></div>

                    <div class="code-symbol">
                        &lt;/&gt;
                    </div>

                </div>

                <div class="course-content">

                    <h3 class="course-title">
                        HTML &amp; CSS
                    </h3>

                    <div class="progress-label">
                        <span>Progress</span>
                        <span class="progress-percent">80%</span>
                    </div>

                    <div class="progress-bar">
                        <div class="progress-fill" style="width:80%;"></div>
                    </div>

                    <a href="CourseDetails.aspx?course=html"
                       class="continue-btn">
                        Continue Learning
                        <i class="fa fa-arrow-right"></i>
                    </a>

                </div>

            </div>


            <!-- ASP.NET -->

            <div class="course-card">

                <div class="course-3d">

                    <div class="course-number">02</div>

                    <div class="course-status">
                        In Progress
                    </div>

                    <div class="orb one"></div>
                    <div class="orb two"></div>
                    <div class="orb three"></div>

                    <div class="course-grid-floor"></div>

                    <div class="course-ring"></div>

                    <div class="code-symbol">
                        &lt;/&gt;
                    </div>

                </div>

                <div class="course-content">

                    <h3 class="course-title">
                        ASP.NET Web Forms
                    </h3>

                    <div class="progress-label">
                        <span>Progress</span>
                        <span class="progress-percent">65%</span>
                    </div>

                    <div class="progress-bar">
                        <div class="progress-fill" style="width:65%;"></div>
                    </div>

                    <a href="CourseDetails.aspx?course=aspnet"
                       class="continue-btn">
                        Continue Learning
                        <i class="fa fa-arrow-right"></i>
                    </a>

                </div>

            </div>


            <!-- PYTHON -->

            <div class="course-card">

                <div class="course-3d">

                    <div class="course-number">03</div>

                    <div class="course-status">
                        In Progress
                    </div>

                    <div class="orb one"></div>
                    <div class="orb two"></div>
                    <div class="orb three"></div>

                    <div class="course-grid-floor"></div>

                    <div class="course-ring"></div>

                    <div class="code-symbol">
                        Py
                    </div>

                </div>

                <div class="course-content">

                    <h3 class="course-title">
                        Python Programming
                    </h3>

                    <div class="progress-label">
                        <span>Progress</span>
                        <span class="progress-percent">45%</span>
                    </div>

                    <div class="progress-bar">
                        <div class="progress-fill" style="width:45%;"></div>
                    </div>

                    <a href="CourseDetails.aspx?course=python"
                       class="continue-btn">
                        Continue Learning
                        <i class="fa fa-arrow-right"></i>
                    </a>

                </div>

            </div>


            <!-- JAVA -->

            <div class="course-card">

                <div class="course-3d">

                    <div class="course-number">04</div>

                    <div class="course-status">
                        In Progress
                    </div>

                    <div class="orb one"></div>
                    <div class="orb two"></div>
                    <div class="orb three"></div>

                    <div class="course-grid-floor"></div>

                    <div class="course-ring"></div>

                    <div class="code-symbol">
                        J
                    </div>

                </div>

                <div class="course-content">

                    <h3 class="course-title">
                        Java Programming
                    </h3>

                    <div class="progress-label">
                        <span>Progress</span>
                        <span class="progress-percent">70%</span>
                    </div>

                    <div class="progress-bar">
                        <div class="progress-fill" style="width:70%;"></div>
                    </div>

                    <a href="CourseDetails.aspx?course=java"
                       class="continue-btn">
                        Continue Learning
                        <i class="fa fa-arrow-right"></i>
                    </a>

                </div>

            </div>


            <!-- JAVASCRIPT -->

            <div class="course-card">

                <div class="course-3d">

                    <div class="course-number">05</div>

                    <div class="course-status">
                        In Progress
                    </div>

                    <div class="orb one"></div>
                    <div class="orb two"></div>
                    <div class="orb three"></div>

                    <div class="course-grid-floor"></div>

                    <div class="course-ring"></div>

                    <div class="code-symbol">
                        JS
                    </div>

                </div>

                <div class="course-content">

                    <h3 class="course-title">
                        JavaScript
                    </h3>

                    <div class="progress-label">
                        <span>Progress</span>
                        <span class="progress-percent">55%</span>
                    </div>

                    <div class="progress-bar">
                        <div class="progress-fill" style="width:55%;"></div>
                    </div>

                    <a href="CourseDetails.aspx?course=javascript"
                       class="continue-btn">
                        Continue Learning
                        <i class="fa fa-arrow-right"></i>
                    </a>

                </div>

            </div>


            <!-- DATABASE -->

            <div class="course-card">

                <div class="course-3d">

                    <div class="course-number">06</div>

                    <div class="course-status">
                        In Progress
                    </div>

                    <div class="orb one"></div>
                    <div class="orb two"></div>
                    <div class="orb three"></div>

                    <div class="course-grid-floor"></div>

                    <div class="course-ring"></div>

                    <div class="code-symbol">
                        DB
                    </div>

                </div>

                <div class="course-content">

                    <h3 class="course-title">
                        Database Management
                    </h3>

                    <div class="progress-label">
                        <span>Progress</span>
                        <span class="progress-percent">90%</span>
                    </div>

                    <div class="progress-bar">
                        <div class="progress-fill" style="width:90%;"></div>
                    </div>

                    <a href="CourseDetails.aspx?course=database"
                       class="continue-btn">
                        Continue Learning
                        <i class="fa fa-arrow-right"></i>
                    </a>

                </div>

            </div>

        </div>


        <!-- ================= SUMMARY ================= -->

        <div class="summary-section">

            <div class="summary-card">

                <span class="summary-number">
                    6
                </span>

                <span class="summary-label">
                    Enrolled Courses
                </span>

            </div>


            <div class="summary-card">

                <span class="summary-number">
                    68%
                </span>

                <span class="summary-label">
                    Average Progress
                </span>

            </div>


            <div class="summary-card">

                <span class="summary-number">
                    0
                </span>

                <span class="summary-label">
                    Completed Courses
                </span>

            </div>

        </div>

    </div>

</section>

</asp:Content>