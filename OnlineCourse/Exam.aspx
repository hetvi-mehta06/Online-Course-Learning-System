<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="Exam.aspx.cs" Inherits="OnlineCourse.Exam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>

    /* =====================================================
       LEARNSPHERE EXAM PAGE
       Premium Dark Purple + Cyan Theme
       Master Page Safe / Scoped CSS
    ====================================================== */

    .exam-page {
        --exam-purple: #8b5cf6;
        --exam-purple-light: #c4b5fd;
        --exam-cyan: #22d3ee;
        --exam-cyan-light: #67e8f9;
        --exam-bg: #080a17;
        --exam-card: rgba(24, 27, 52, 0.90);
        --exam-text: #f8fafc;
        --exam-muted: #a8aec5;

        width: 100%;
        min-height: 100vh;

        background:
            radial-gradient(
                circle at 10% 10%,
                rgba(139, 92, 246, .13),
                transparent 28%
            ),
            radial-gradient(
                circle at 90% 30%,
                rgba(34, 211, 238, .09),
                transparent 28%
            ),
            linear-gradient(
                180deg,
                #080a17 0%,
                #0d1021 100%
            );

        color: var(--exam-text);
        overflow: hidden;
    }


    /* =====================================================
       HERO
    ====================================================== */

    .exam-page .exam-hero {

        position: relative;

        width: 100%;
        min-height: 570px;

        display: flex;
        align-items: center;
        justify-content: center;

        background:
            linear-gradient(
                135deg,
                rgba(8, 10, 25, .86),
                rgba(61, 34, 103, .68),
                rgba(8, 47, 73, .55)
            ),
            url('images/bg_1.jpg');

        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;

        overflow: hidden;
    }


    /* Purple glow */

    .exam-page .exam-hero::before {

        content: "";

        position: absolute;

        width: 420px;
        height: 420px;

        border-radius: 50%;

        background: rgba(139, 92, 246, .20);

        filter: blur(90px);

        top: -180px;
        left: -120px;
    }


    /* Cyan glow */

    .exam-page .exam-hero::after {

        content: "";

        position: absolute;

        width: 380px;
        height: 380px;

        border-radius: 50%;

        background: rgba(34, 211, 238, .13);

        filter: blur(90px);

        right: -120px;
        bottom: -160px;
    }


    /* Hero Content */

    .exam-page .exam-hero-content {

        position: relative;

        z-index: 3;

        width: 100%;
        max-width: 900px;

        padding: 80px 25px;

        margin: 0 auto;

        text-align: center;
    }


    .exam-page .exam-tag {

        display: inline-block;

        padding: 9px 20px;

        border-radius: 50px;

        background: rgba(139, 92, 246, .15);

        border: 1px solid rgba(139, 92, 246, .45);

        color: var(--exam-purple-light);

        font-size: 12px;

        font-weight: 800;

        letter-spacing: 2px;

        box-shadow:
            0 0 25px rgba(139, 92, 246, .12);
    }


    .exam-page .exam-hero-content h1 {

        margin: 24px 0 16px;

        font-size: clamp(42px, 6vw, 68px);

        line-height: 1.05;

        font-weight: 850;

        background:
            linear-gradient(
                90deg,
                #ffffff,
                #c4b5fd,
                #67e8f9
            );

        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;

        background-clip: text;
    }


    .exam-page .exam-hero-content p {

        max-width: 650px;

        margin: 0 auto 32px;

        color: #c0c5d8;

        font-size: 17px;

        line-height: 1.7;
    }


    /* =====================================================
       COMMON BUTTON
    ====================================================== */

    .exam-page .exam-btn {

        display: inline-flex;

        align-items: center;
        justify-content: center;

        min-width: 155px;

        padding: 13px 28px;

        border-radius: 50px;

        background:
            linear-gradient(
                100deg,
                #7c3aed,
                #8b5cf6,
                #06b6d4
            );

        border: 1px solid rgba(255,255,255,.10);

        color: #ffffff !important;

        font-size: 14px;

        font-weight: 800;

        letter-spacing: .3px;

        text-decoration: none !important;

        box-shadow:
            0 12px 35px rgba(124, 58, 237, .28);

        transition:
            transform .3s ease,
            box-shadow .3s ease,
            filter .3s ease;
    }


    .exam-page .exam-btn:hover {

        color: #ffffff !important;

        text-decoration: none !important;

        transform: translateY(-3px);

        box-shadow:
            0 17px 45px rgba(139, 92, 246, .42);

        filter: brightness(1.08);
    }


    /* =====================================================
       EXAM CONTENT
    ====================================================== */

    .exam-page .exam-content {

        width: 100%;

        padding: 85px 0;

        background:
            linear-gradient(
                180deg,
                #0b0d1c,
                #0f1226
            );
    }


    .exam-page .exam-container {

        max-width: 1120px;

        margin: 0 auto;

        padding-left: 15px;
        padding-right: 15px;
    }


    /* =====================================================
       MAIN EXAM BOX
    ====================================================== */

    .exam-page .exam-box {

        position: relative;

        padding: 45px;

        border-radius: 30px;

        background:
            linear-gradient(
                145deg,
                rgba(30, 33, 62, .92),
                rgba(13, 15, 32, .96)
            );

        border: 1px solid rgba(139, 92, 246, .25);

        box-shadow:
            0 30px 75px rgba(0,0,0,.38),
            inset 0 1px 0 rgba(255,255,255,.04);

        overflow: hidden;
    }


    .exam-page .exam-box::before {

        content: "";

        position: absolute;

        width: 240px;
        height: 240px;

        border-radius: 50%;

        background: rgba(139, 92, 246, .10);

        filter: blur(60px);

        top: -120px;
        right: -80px;
    }


    .exam-page .exam-box::after {

        content: "";

        position: absolute;

        width: 180px;
        height: 180px;

        border-radius: 50%;

        background: rgba(34, 211, 238, .07);

        filter: blur(55px);

        bottom: -100px;
        left: -70px;
    }


    /* Heading */

    .exam-page .exam-heading {

        position: relative;

        z-index: 2;

        text-align: center;

        margin-bottom: 45px;
    }


    .exam-page .exam-heading-icon {

        width: 70px;
        height: 70px;

        margin: 0 auto 20px;

        display: flex;

        align-items: center;
        justify-content: center;

        border-radius: 22px;

        background:
            linear-gradient(
                135deg,
                rgba(139,92,246,.25),
                rgba(34,211,238,.13)
            );

        border: 1px solid rgba(139,92,246,.35);

        color: #c4b5fd;

        font-size: 29px;

        box-shadow:
            0 0 30px rgba(139,92,246,.15);
    }


    .exam-page .exam-title {

        margin: 0 0 12px;

        color: #ffffff;

        font-size: 34px;

        font-weight: 800;
    }


    .exam-page .exam-subtitle {

        margin: 0;

        color: var(--exam-muted);

        font-size: 15px;

        line-height: 1.6;
    }


    /* =====================================================
       SUBJECT CARDS
    ====================================================== */

    .exam-page .subject-card {

        position: relative;

        height: 100%;

        min-height: 255px;

        padding: 32px 25px;

        display: flex;

        flex-direction: column;

        align-items: center;

        justify-content: center;

        text-align: center;

        border-radius: 23px;

        background:
            linear-gradient(
                145deg,
                rgba(29, 32, 59, .94),
                rgba(15, 17, 35, .98)
            );

        border: 1px solid rgba(139, 92, 246, .18);

        box-shadow:
            0 18px 40px rgba(0,0,0,.24);

        overflow: hidden;

        transition:
            transform .35s ease,
            border-color .35s ease,
            box-shadow .35s ease;
    }


    .exam-page .subject-card::before {

        content: "";

        position: absolute;

        width: 130px;
        height: 130px;

        border-radius: 50%;

        background: rgba(139,92,246,.09);

        filter: blur(35px);

        top: -70px;
        right: -50px;
    }


    .exam-page .subject-card:hover {

        transform: translateY(-8px);

        border-color:
            rgba(139,92,246,.55);

        box-shadow:
            0 25px 55px rgba(0,0,0,.34),
            0 0 30px rgba(139,92,246,.08);
    }


    /* Subject Icon */

    .exam-page .subject-icon {

        position: relative;

        z-index: 2;

        width: 62px;
        height: 62px;

        margin-bottom: 18px;

        display: flex;

        align-items: center;
        justify-content: center;

        border-radius: 19px;

        background:
            linear-gradient(
                135deg,
                rgba(139,92,246,.22),
                rgba(34,211,238,.11)
            );

        border: 1px solid rgba(139,92,246,.28);

        color: #a78bfa;

        font-size: 25px;

        transition: all .3s ease;
    }


    .exam-page .subject-card:hover .subject-icon {

        color: #67e8f9;

        border-color:
            rgba(34,211,238,.40);

        box-shadow:
            0 0 25px rgba(34,211,238,.10);
    }


    .exam-page .subject-card h4 {

        position: relative;

        z-index: 2;

        margin: 0 0 12px;

        color: #ffffff;

        font-size: 20px;

        font-weight: 750;
    }


    .exam-page .subject-card p {

        position: relative;

        z-index: 2;

        min-height: 48px;

        margin: 0 0 23px;

        color: #9da4bb;

        font-size: 13px;

        line-height: 1.7;
    }


    .exam-page .subject-card .exam-btn {

        position: relative;

        z-index: 2;

        min-width: 140px;

        padding: 11px 22px;

        font-size: 13px;
    }


    /* =====================================================
       DECORATIVE DOTS
    ====================================================== */

    .exam-page .exam-dot {

        position: absolute;

        width: 6px;
        height: 6px;

        border-radius: 50%;

        background: #a78bfa;

        box-shadow:
            0 0 15px rgba(167,139,250,.9);

        opacity: .75;

        z-index: 2;
    }


    .exam-page .exam-dot-one {
        top: 25%;
        left: 8%;
    }


    .exam-page .exam-dot-two {

        top: 65%;
        right: 10%;

        background: #67e8f9;

        box-shadow:
            0 0 15px rgba(103,232,249,.9);
    }


    .exam-page .exam-dot-three {

        top: 18%;
        right: 20%;
    }


    /* =====================================================
       RESPONSIVE
    ====================================================== */

    @media (max-width: 768px) {

        .exam-page .exam-hero {
            min-height: 470px;
        }

        .exam-page .exam-hero-content {
            padding: 70px 20px;
        }

        .exam-page .exam-hero-content h1 {
            font-size: 42px;
        }

        .exam-page .exam-hero-content p {
            font-size: 15px;
        }

        .exam-page .exam-content {
            padding: 55px 15px;
        }

        .exam-page .exam-box {
            padding: 28px 18px;
        }

        .exam-page .exam-title {
            font-size: 27px;
        }

        .exam-page .subject-card {
            min-height: 235px;
        }
    }

</style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="exam-page">

    <!-- =================================================
         HERO
    ================================================== -->

    <section class="exam-hero">

        <span class="exam-dot exam-dot-one"></span>
        <span class="exam-dot exam-dot-two"></span>
        <span class="exam-dot exam-dot-three"></span>

        <div class="exam-hero-content">

            <span class="exam-tag">
                ✦ ONLINE EXAM
            </span>

            <h1>
                Test Your Knowledge
            </h1>

            <p>
                Complete your course exam and check your understanding.
            </p>

            <a href="#exam" class="exam-btn">
                Start Exam
            </a>

        </div>

    </section>


    <!-- =================================================
         SUBJECT SELECTION
    ================================================== -->

    <section class="exam-content" id="exam">

        <div class="exam-container">

            <div class="exam-box">

                <div class="exam-heading">

                    <div class="exam-heading-icon">
                        <i class="fa fa-graduation-cap"></i>
                    </div>

                    <h2 class="exam-title">
                        Choose Your Subject
                    </h2>

                    <p class="exam-subtitle">
                        Select a course to start your exam.
                    </p>

                </div>


                <div class="row">


                    <!-- HTML & CSS -->

                    <div class="col-md-4 mb-4">

                        <div class="subject-card">

                            <div class="subject-icon">
                                <i class="fa fa-html5"></i>
                            </div>

                            <h4>
                                HTML & CSS
                            </h4>

                            <p>
                                Test your knowledge of HTML and CSS.
                            </p>

                            <a href="HTMLCSSExam.aspx" class="exam-btn">
                                Start Exam
                            </a>

                        </div>

                    </div>


                    <!-- ASP.NET -->

                    <div class="col-md-4 mb-4">

                        <div class="subject-card">

                            <div class="subject-icon">
                                <i class="fa fa-code"></i>
                            </div>

                            <h4>
                                ASP.NET Web Forms
                            </h4>

                            <p>
                                Test your ASP.NET Web Forms knowledge.
                            </p>

                            <a href="ASPNETExam.aspx" class="exam-btn">
                                Start Exam
                            </a>

                        </div>

                    </div>


                    <!-- PYTHON -->

                    <div class="col-md-4 mb-4">

                        <div class="subject-card">

                            <div class="subject-icon">
                                <i class="fa fa-terminal"></i>
                            </div>

                            <h4>
                                Python Programming
                            </h4>

                            <p>
                                Test your Python programming skills.
                            </p>

                            <a href="PythonExam.aspx" class="exam-btn">
                                Start Exam
                            </a>

                        </div>

                    </div>


                    <!-- JAVA -->

                    <div class="col-md-4 mb-4">

                        <div class="subject-card">

                            <div class="subject-icon">
                                <i class="fa fa-coffee"></i>
                            </div>

                            <h4>
                                Java Programming
                            </h4>

                            <p>
                                Test your Java programming knowledge.
                            </p>

                            <a href="JavaExam.aspx" class="exam-btn">
                                Start Exam
                            </a>

                        </div>

                    </div>


                    <!-- JAVASCRIPT -->

                    <div class="col-md-4 mb-4">

                        <div class="subject-card">

                            <div class="subject-icon">
                                <i class="fa fa-bolt"></i>
                            </div>

                            <h4>
                                JavaScript
                            </h4>

                            <p>
                                Test your JavaScript knowledge.
                            </p>

                            <a href="JavaScriptExam.aspx" class="exam-btn">
                                Start Exam
                            </a>

                        </div>

                    </div>


                    <!-- DATABASE -->

                    <div class="col-md-4 mb-4">

                        <div class="subject-card">

                            <div class="subject-icon">
                                <i class="fa fa-database"></i>
                            </div>

                            <h4>
                                Database Management
                            </h4>

                            <p>
                                Test your database knowledge.
                            </p>

                            <a href="DatabaseExam.aspx" class="exam-btn">
                                Start Exam
                            </a>

                        </div>

                    </div>


                </div>

            </div>

        </div>

    </section>

</div>

</asp:Content>