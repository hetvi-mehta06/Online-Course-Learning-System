<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="enrollcourse.aspx.cs" Inherits="OnlineCourse.enrollcourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>

/* =========================================================
   LEARNSPHERE - ENROLL COURSE
   STUDENT MASTER SAFE
========================================================= */

.enroll-page {
    position: relative;
    display: block;
    clear: both;
    width: 100%;
    min-height: 100vh;

    margin: 0 !important;
    padding: 0 0 80px !important;

    overflow: hidden;

    background:
        radial-gradient(
            circle at 5% 20%,
            rgba(119, 73, 255, .15),
            transparent 28%
        ),
        radial-gradient(
            circle at 95% 65%,
            rgba(0, 210, 255, .10),
            transparent 30%
        ),
        linear-gradient(
            135deg,
            #080419 0%,
            #100629 50%,
            #080419 100%
        );

    font-family: 'Poppins', sans-serif;
}


/* =========================================================
   HERO
========================================================= */

.enroll-hero {
    position: relative;

    width: 100%;
    min-height: 330px;

    display: flex;
    align-items: center;
    justify-content: center;

    padding: 70px 20px 60px;

    overflow: hidden;

    background:
        linear-gradient(
            135deg,
            rgba(8, 3, 27, .96),
            rgba(57, 28, 112, .90)
        );
}

.enroll-hero::before {
    content: "";

    position: absolute;

    width: 500px;
    height: 500px;

    left: -250px;
    top: -250px;

    border-radius: 50%;

    border: 1px solid rgba(143, 98, 255, .20);

    box-shadow:
        0 0 100px rgba(116, 74, 255, .13);

    pointer-events: none;
}

.enroll-hero::after {
    content: "";

    position: absolute;

    width: 430px;
    height: 430px;

    right: -220px;
    bottom: -240px;

    border-radius: 50%;

    border: 1px solid rgba(0, 220, 255, .16);

    box-shadow:
        0 0 100px rgba(0, 210, 255, .09);

    pointer-events: none;
}

.enroll-hero .container {
    position: relative;
    z-index: 5;

    width: 100%;
    max-width: 1100px;

    margin-left: auto;
    margin-right: auto;
}

.enroll-hero-content {
    text-align: center;
}

.enroll-badge {
    display: inline-flex;
    align-items: center;

    padding: 8px 17px;

    margin-bottom: 17px;

    border-radius: 25px;

    color: #bfaeff;

    background: rgba(123, 82, 255, .10);

    border: 1px solid rgba(145, 110, 255, .25);

    font-size: 10px;
    font-weight: 600;

    letter-spacing: 1px;
    text-transform: uppercase;
}

.enroll-badge i {
    margin-right: 8px;

    color: #68eaff;
}

.enroll-title {
    margin: 0 !important;

    color: #ffffff !important;

    font-size: 43px !important;
    font-weight: 800 !important;

    line-height: 1.2 !important;

    background:
        linear-gradient(
            90deg,
            #ffffff,
            #cbbaff,
            #65eaff
        );

    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}

.enroll-subtitle {
    margin: 13px 0 0 !important;

    color: #aaa4bd !important;

    font-size: 13px !important;
}


/* =========================================================
   MAIN COURSE SECTION
========================================================= */

.enroll-content {
    position: relative;

    width: 100%;

    padding: 70px 20px 20px;
}

.enroll-content .container {
    position: relative;
    z-index: 5;

    width: 100%;
    max-width: 1150px;

    margin-left: auto;
    margin-right: auto;
}


/* =========================================================
   COURSE IMAGE CARD
========================================================= */

.course-preview {
    position: relative;

    width: 100%;

    overflow: hidden;

    border-radius: 24px;

    background:
        rgba(255,255,255,.04);

    border: 1px solid rgba(255,255,255,.10);

    box-shadow:
        0 25px 55px rgba(0,0,0,.40);

    margin-bottom: 28px;
}

.course-preview img {
    display: block;

    width: 100%;
    height: 390px;

    object-fit: cover;

    transition:
        transform .5s ease;
}

.course-preview:hover img {
    transform: scale(1.035);
}

.course-preview::after {
    content: "";

    position: absolute;

    inset: 0;

    background:
        linear-gradient(
            180deg,
            transparent 55%,
            rgba(7,3,25,.55)
        );

    pointer-events: none;
}


/* =========================================================
   COURSE DETAILS
========================================================= */

.course-main-title {
    margin: 0 0 15px !important;

    color: #ffffff !important;

    font-size: 29px !important;
    font-weight: 700 !important;

    line-height: 1.3 !important;
}

.course-description {
    margin: 0 0 25px !important;

    color: #9c95a9 !important;

    font-size: 12px !important;

    line-height: 1.9 !important;
}

.course-divider {
    width: 100%;
    height: 1px;

    margin: 25px 0;

    border: 0;

    background:
        linear-gradient(
            90deg,
            rgba(126,91,255,.35),
            rgba(0,210,255,.12),
            transparent
        );
}

.feature-heading {
    margin: 0 0 17px !important;

    color: #ffffff !important;

    font-size: 18px !important;
    font-weight: 650 !important;
}

.feature-list {
    margin: 0;
    padding: 0;

    list-style: none;
}

.feature-list li {
    position: relative;

    display: flex;
    align-items: center;

    min-height: 39px;

    margin-bottom: 7px;

    padding: 7px 13px;

    border-radius: 10px;

    color: #aaa3b7;

    background: rgba(255,255,255,.035);

    border: 1px solid rgba(255,255,255,.05);

    font-size: 11px;

    transition: .25s ease;
}

.feature-list li:hover {
    color: #ffffff;

    background: rgba(112,76,255,.08);

    border-color: rgba(128,91,255,.20);

    transform: translateX(4px);
}

.feature-list li::first-letter {
    color: #6eeaff;
}


/* =========================================================
   COURSE INFORMATION CARD
========================================================= */

.course-info-card {
    position: relative;

    width: 100%;

    padding: 28px;

    border-radius: 23px;

    background:
        linear-gradient(
            145deg,
            rgba(255,255,255,.09),
            rgba(255,255,255,.025)
        );

    border: 1px solid rgba(255,255,255,.11);

    box-shadow:
        0 22px 50px rgba(0,0,0,.42),
        inset 0 1px 0 rgba(255,255,255,.08);

    backdrop-filter: blur(20px);
    -webkit-backdrop-filter: blur(20px);
}

.course-info-title {
    margin: 0 0 23px !important;

    color: #ffffff !important;

    font-size: 20px !important;
    font-weight: 650 !important;
}

.course-info-title::before {
    content: "";

    display: inline-block;

    width: 4px;
    height: 20px;

    margin-right: 10px;

    vertical-align: -4px;

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

.info-row {
    display: flex;
    align-items: center;
    justify-content: space-between;

    min-height: 42px;

    padding: 9px 0;

    border-bottom: 1px solid rgba(255,255,255,.055);

    font-size: 11px;
}

.info-row:last-of-type {
    border-bottom: 0;
}

.info-label {
    color: #817a91;
}

.info-value {
    color: #e8e4f0;

    font-weight: 550;

    text-align: right;
}

.info-price {
    color: #6eeaff !important;

    font-size: 19px;

    font-weight: 700;
}


/* =========================================================
   BUTTONS
========================================================= */

.enroll-btn {
    display: flex;
    align-items: center;
    justify-content: center;

    width: 100%;

    min-height: 49px;

    margin-top: 23px;
    margin-bottom: 11px;

    border: 0 !important;
    border-radius: 13px !important;

    color: #ffffff !important;

    background:
        linear-gradient(
            135deg,
            #704cff,
            #985bff,
            #00c9eb
        ) !important;

    box-shadow:
        0 13px 28px rgba(103,70,255,.30);

    text-decoration: none !important;

    font-size: 11px !important;
    font-weight: 650 !important;

    transition: .3s ease;
}

.enroll-btn:hover {
    color: #ffffff !important;

    transform: translateY(-3px);

    box-shadow:
        0 19px 38px rgba(103,70,255,.42);
}

.back-btn {
    display: flex;
    align-items: center;
    justify-content: center;

    width: 100%;

    min-height: 47px;

    border-radius: 13px;

    color: #aaa3b7 !important;

    background: rgba(255,255,255,.035);

    border: 1px solid rgba(255,255,255,.10);

    text-decoration: none !important;

    font-size: 11px;

    font-weight: 550;

    transition: .3s ease;
}

.back-btn:hover {
    color: #ffffff !important;

    background: rgba(112,76,255,.10);

    border-color: rgba(128,91,255,.30);

    transform: translateY(-2px);
}


/* =========================================================
   BENEFITS SECTION
========================================================= */

.benefits-section {
    position: relative;

    width: 100%;

    margin-top: 35px;

    padding: 70px 20px 80px;

    background:
        linear-gradient(
            180deg,
            rgba(255,255,255,.015),
            rgba(255,255,255,.035)
        );

    border-top: 1px solid rgba(255,255,255,.05);
}

.benefits-section .container {
    position: relative;
    z-index: 5;

    max-width: 1150px;

    margin-left: auto;
    margin-right: auto;
}

.benefits-heading {
    margin: 0 0 10px !important;

    color: #ffffff !important;

    font-size: 30px !important;
    font-weight: 750 !important;
}

.benefits-subtitle {
    margin: 0 0 40px !important;

    color: #918a9e !important;

    font-size: 12px !important;
}

.benefit-card {
    position: relative;

    height: 100%;

    padding: 30px 22px;

    text-align: center;

    border-radius: 21px;

    background:
        linear-gradient(
            145deg,
            rgba(255,255,255,.08),
            rgba(255,255,255,.025)
        );

    border: 1px solid rgba(255,255,255,.09);

    box-shadow:
        0 18px 40px rgba(0,0,0,.32),
        inset 0 1px 0 rgba(255,255,255,.06);

    transition:
        transform .3s ease,
        border-color .3s ease,
        box-shadow .3s ease;
}

.benefit-card:hover {
    transform: translateY(-8px);

    border-color: rgba(132,95,255,.30);

    box-shadow:
        0 28px 55px rgba(0,0,0,.44),
        0 0 30px rgba(112,75,255,.10);
}

.benefit-icon {
    width: 62px;
    height: 62px;

    display: flex;
    align-items: center;
    justify-content: center;

    margin: 0 auto 17px;

    border-radius: 18px;

    background:
        linear-gradient(
            135deg,
            rgba(112,76,255,.18),
            rgba(0,210,255,.09)
        );

    border: 1px solid rgba(132,95,255,.18);

    font-size: 27px;

    box-shadow:
        0 12px 25px rgba(0,0,0,.18);
}

.benefit-title {
    margin: 0 0 10px !important;

    color: #ffffff !important;

    font-size: 16px !important;
    font-weight: 650 !important;
}

.benefit-text {
    margin: 0 !important;

    color: #8f889d !important;

    font-size: 10px !important;

    line-height: 1.7 !important;
}


/* =========================================================
   DECORATION
========================================================= */

.enroll-content::before {
    content: "✦";

    position: absolute;

    left: 3%;
    top: 130px;

    color: #9174ff;

    font-size: 23px;

    text-shadow:
        0 0 18px #9174ff;

    animation:
        enrollFloat 3s ease-in-out infinite;
}

.benefits-section::after {
    content: "✧";

    position: absolute;

    right: 4%;
    bottom: 70px;

    color: #5de7ff;

    font-size: 28px;

    text-shadow:
        0 0 18px #5de7ff;

    animation:
        enrollFloat 4s ease-in-out infinite;

    animation-delay: 1s;
}

@keyframes enrollFloat {

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

    .course-info-card {
        margin-top: 25px;
    }

    .benefit-card {
        margin-bottom: 20px;
    }

}

@media (max-width: 767px) {

    .enroll-hero {
        min-height: 285px;

        padding: 60px 15px 50px;
    }

    .enroll-title {
        font-size: 34px !important;
    }

    .enroll-content {
        padding: 50px 15px 20px;
    }

    .course-preview img {
        height: 280px;
    }

    .course-main-title {
        font-size: 25px !important;
    }

    .benefits-section {
        padding: 55px 15px 65px;
    }

    .benefits-heading {
        font-size: 26px !important;
    }

}

@media (max-width: 480px) {

    .enroll-title {
        font-size: 29px !important;
    }

    .course-preview img {
        height: 220px;
    }

    .course-info-card {
        padding: 22px 18px;
    }

}

</style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="enroll-page">


    <!-- =====================================================
         HERO
    ====================================================== -->

    <section class="enroll-hero">

        <div class="container">

            <div class="enroll-hero-content">

                <div class="enroll-badge">

                    <i class="fa fa-graduation-cap"></i>

                    Start Learning

                </div>

                <h1 class="enroll-title">
                    Enroll Course
                </h1>

                <p class="enroll-subtitle">
                    Start Your Learning Journey
                </p>

            </div>

        </div>

    </section>


    <!-- =====================================================
         COURSE DETAILS
    ====================================================== -->

    <section class="enroll-content">

        <div class="container">

            <div class="row">


                <!-- =================================================
                     LEFT SIDE
                ================================================== -->

                <div class="col-lg-7">

                    <div class="course-preview">

                        <img
                            src="images/work-2.jpg"
                            alt="ASP.NET Web Forms Course" />

                    </div>


                    <h2 class="course-main-title">
                        ASP.NET Web Forms
                    </h2>


                    <p class="course-description">

                        Master ASP.NET Web Forms by building dynamic web
                        applications. Learn Master Pages, User Controls,
                        Database Connectivity, Authentication and CRUD
                        Operations with real-world projects.

                    </p>


                    <div class="course-divider"></div>


                    <h4 class="feature-heading">
                        Course Features
                    </h4>


                    <ul class="feature-list">

                        <li>
                            ✔ &nbsp; 20 HD Video Lessons
                        </li>

                        <li>
                            ✔ &nbsp; Beginner Friendly
                        </li>

                        <li>
                            ✔ &nbsp; Downloadable Resources
                        </li>

                        <li>
                            ✔ &nbsp; Practical Projects
                        </li>

                        <li>
                            ✔ &nbsp; Lifetime Access
                        </li>

                        <li>
                            ✔ &nbsp; Completion Certificate
                        </li>

                    </ul>

                </div>


                <!-- =================================================
                     RIGHT SIDE
                ================================================== -->

                <div class="col-lg-5">

                    <div class="course-info-card">

                        <h3 class="course-info-title">
                            Course Information
                        </h3>


                        <div class="info-row">

                            <span class="info-label">
                                Instructor
                            </span>

                            <span class="info-value">
                                Tony Garret
                            </span>

                        </div>


                        <div class="info-row">

                            <span class="info-label">
                                Category
                            </span>

                            <span class="info-value">
                                Web Development
                            </span>

                        </div>


                        <div class="info-row">

                            <span class="info-label">
                                Duration
                            </span>

                            <span class="info-value">
                                8 Weeks
                            </span>

                        </div>


                        <div class="info-row">

                            <span class="info-label">
                                Lessons
                            </span>

                            <span class="info-value">
                                20
                            </span>

                        </div>


                        <div class="info-row">

                            <span class="info-label">
                                Level
                            </span>

                            <span class="info-value">
                                Beginner
                            </span>

                        </div>


                        <div class="info-row">

                            <span class="info-label">
                                Language
                            </span>

                            <span class="info-value">
                                English
                            </span>

                        </div>


                        <div class="info-row">

                            <span class="info-label">
                                Price
                            </span>

                            <span class="info-value info-price">
                                ₹299
                            </span>

                        </div>


                        <a href="#"
                           class="enroll-btn">

                            <i class="fa fa-graduation-cap mr-2"></i>

                            Enroll Now

                        </a>


                        <a href="course.aspx"
                           class="back-btn">

                            <i class="fa fa-arrow-left mr-2"></i>

                            Back to Courses

                        </a>

                    </div>

                </div>

            </div>

        </div>

    </section>


    <!-- =====================================================
         BENEFITS
    ====================================================== -->

    <section class="benefits-section">

        <div class="container">

            <div class="row justify-content-center">

                <div class="col-md-8 text-center">

                    <h2 class="benefits-heading">
                        Why Enroll?
                    </h2>

                    <p class="benefits-subtitle">
                        Benefits of joining this course.
                    </p>

                </div>

            </div>


            <div class="row">


                <!-- HD VIDEOS -->

                <div class="col-lg-4 col-md-6 mb-4">

                    <div class="benefit-card">

                        <div class="benefit-icon">
                            🎥
                        </div>

                        <h4 class="benefit-title">
                            HD Videos
                        </h4>

                        <p class="benefit-text">
                            Watch high-quality video lessons anytime.
                        </p>

                    </div>

                </div>


                <!-- CERTIFICATE -->

                <div class="col-lg-4 col-md-6 mb-4">

                    <div class="benefit-card">

                        <div class="benefit-icon">
                            📜
                        </div>

                        <h4 class="benefit-title">
                            Certificate
                        </h4>

                        <p class="benefit-text">
                            Receive a certificate after completing the course.
                        </p>

                    </div>

                </div>


                <!-- PROJECTS -->

                <div class="col-lg-4 col-md-6 mb-4">

                    <div class="benefit-card">

                        <div class="benefit-icon">
                            💼
                        </div>

                        <h4 class="benefit-title">
                            Real Projects
                        </h4>

                        <p class="benefit-text">
                            Build practical projects for your portfolio.
                        </p>

                    </div>

                </div>


            </div>

        </div>

    </section>


</div>

</asp:Content>