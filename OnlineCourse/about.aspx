<%@ Page Title="" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="OnlineCourse.about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>
/* =========================================================
   LEARNSPHERE ABOUT PAGE - CENTERED 3D SQUARE CARDS EDITION
   Matches "Choose Your Subject" UI Style | Ready to Paste
========================================================= */

.about-subject-theme {
    font-family: 'Poppins', sans-serif;
    background:
        radial-gradient(circle at 12% 15%, rgba(124, 58, 237, 0.14), transparent 32%),
        radial-gradient(circle at 88% 60%, rgba(34, 211, 238, 0.10), transparent 32%),
        linear-gradient(180deg, #0b0c1d 0%, #101228 50%, #0b0c1d 100%);
    color: #ffffff;
    overflow-x: hidden;
    padding-bottom: 90px;
}

/* =========================================================
   3D ANIMATIONS
========================================================= */
@keyframes cardFadeUp3D {
    0% {
        opacity: 0;
        transform: perspective(1000px) translateY(28px) rotateX(-6deg) scale(0.97);
    }
    100% {
        opacity: 1;
        transform: perspective(1000px) translateY(0) rotateX(0deg) scale(1);
    }
}

@keyframes floatIcon3D {
    0%, 100% { transform: translateY(0px) translateZ(25px); }
    50% { transform: translateY(-5px) translateZ(32px); }
}

/* =========================================================
   HERO HEADER
========================================================= */
.about-hero-box {
    padding: 80px 20px 60px;
    text-align: center;
    background:
        linear-gradient(135deg, rgba(11, 12, 29, 0.94), rgba(37, 24, 79, 0.85)),
        url('images/bg_2.jpg') center/cover;
    border-bottom: 1px solid rgba(139, 92, 246, 0.2);
}

.about-hero-box .hero-tag {
    display: inline-block;
    padding: 7px 18px;
    border-radius: 50px;
    background: rgba(139, 92, 246, 0.15);
    border: 1px solid rgba(139, 92, 246, 0.4);
    color: #c4b5fd;
    font-size: 11px;
    font-weight: 700;
    letter-spacing: 1.8px;
    margin-bottom: 16px;
}

.about-hero-box h1 {
    font-size: clamp(32px, 4.5vw, 48px);
    font-weight: 800;
    margin: 0 0 12px;
    background: linear-gradient(90deg, #ffffff, #c4b5fd, #67e8f9);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}

.about-hero-box p {
    color: #9ca3af;
    font-size: 14.5px;
    max-width: 620px;
    margin: 0 auto 16px;
    line-height: 1.7;
}

.about-breadcrumb {
    font-size: 12.5px;
    color: #8b92a8;
}

.about-breadcrumb a {
    color: #67e8f9;
    text-decoration: none;
}

/* =========================================================
   MAIN CONTAINER & SECTION HEADING
========================================================= */
.main-showcase-wrap {
    max-width: 1080px;
    margin: 55px auto 0;
    padding: 45px 30px;
    border-radius: 28px;
    background: linear-gradient(180deg, rgba(21, 22, 48, 0.92), rgba(14, 15, 34, 0.96));
    border: 1px solid rgba(139, 92, 246, 0.22);
    box-shadow: 0 25px 60px rgba(0, 0, 0, 0.45);
    perspective: 1400px;
}

.center-sec-heading {
    text-align: center;
    margin-bottom: 38px;
}

.center-sec-heading h2 {
    font-size: 32px;
    font-weight: 800;
    color: #ffffff;
    margin: 0 0 8px;
}

.center-sec-heading p {
    font-size: 13.5px;
    color: #9499b7;
    margin: 0;
}

/* =========================================================
   EXACT SCREENSHOT-STYLE CENTERED 3D SQUARE CARDS
========================================================= */
.subject-style-card {
    position: relative;
    height: 100%;
    min-height: 295px;
    padding: 32px 22px;
    border-radius: 22px;
    background: linear-gradient(145deg, rgba(31, 33, 66, 0.85), rgba(19, 20, 44, 0.95));
    border: 1px solid rgba(139, 92, 246, 0.22);
    box-shadow:
        0 14px 32px rgba(0, 0, 0, 0.35),
        inset 0 1px 0 rgba(255, 255, 255, 0.08);
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    text-align: center;
    transform-style: preserve-3d;
    transition:
        transform 0.38s cubic-bezier(0.23, 1, 0.32, 1),
        border-color 0.38s ease,
        box-shadow 0.38s ease;
    animation: cardFadeUp3D 0.7s ease both;
}

.subject-style-card:hover {
    transform: translateY(-9px) rotateX(4deg) rotateY(-3deg) scale(1.02);
    border-color: rgba(34, 211, 238, 0.55);
    box-shadow:
        0 24px 48px rgba(0, 0, 0, 0.5),
        0 0 25px rgba(139, 92, 246, 0.25);
}

/* Top Centered Rounded Icon Box (or Mini Video Thumbnail Box) */
.card-center-icon {
    width: 62px;
    height: 62px;
    border-radius: 16px;
    background: rgba(139, 92, 246, 0.14);
    border: 1px solid rgba(139, 92, 246, 0.32);
    display: flex;
    align-items: center;
    justify-content: center;
    color: #c4b5fd;
    font-size: 22px;
    margin-bottom: 20px;
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.25);
    transform: translateZ(25px);
    animation: floatIcon3D 3.5s ease-in-out infinite;
    transition: all 0.35s ease;
}

.subject-style-card:hover .card-center-icon {
    background: linear-gradient(135deg, rgba(139, 92, 246, 0.35), rgba(34, 211, 238, 0.25));
    border-color: #22d3ee;
    color: #ffffff;
    transform: translateZ(40px) scale(1.08);
}

/* Small Video Preview Box inside Card (Same Square Icon Box Size) */
.card-video-mini-box {
    position: relative;
    width: 115px;
    height: 76px;
    border-radius: 14px;
    background-size: cover;
    background-position: center;
    border: 1.5px solid rgba(139, 92, 246, 0.45);
    overflow: hidden;
    margin-bottom: 18px;
    display: flex;
    align-items: center;
    justify-content: center;
    box-shadow: 0 10px 22px rgba(0, 0, 0, 0.4);
    transform: translateZ(26px);
    transition: transform 0.35s ease, border-color 0.35s ease;
}

.card-video-mini-box::after {
    content: "";
    position: absolute;
    inset: 0;
    background: rgba(12, 13, 33, 0.45);
}

.card-video-mini-box i {
    position: relative;
    z-index: 2;
    width: 32px;
    height: 32px;
    border-radius: 50%;
    background: linear-gradient(90deg, #8b5cf6, #22d3ee);
    color: #ffffff;
    font-size: 11px;
    display: flex;
    align-items: center;
    justify-content: center;
    box-shadow: 0 0 14px rgba(34, 211, 238, 0.6);
}

.subject-style-card:hover .card-video-mini-box {
    transform: translateZ(42px) scale(1.06);
    border-color: #22d3ee;
}

/* Card Title & Subtitle */
.subject-style-card h3 {
    font-size: 18.5px;
    font-weight: 750;
    color: #ffffff;
    margin: 0 0 8px;
    line-height: 1.35;
    transform: translateZ(20px);
}

.subject-style-card p {
    font-size: 12.5px;
    color: #9499b7;
    margin: 0 0 22px;
    line-height: 1.55;
    max-width: 220px;
    transform: translateZ(15px);
}

/* Exact Pill Gradient Button from Screenshot */
.pill-gradient-btn {
    display: inline-block;
    padding: 11px 28px;
    border-radius: 50px;
    background: linear-gradient(90deg, #8b5cf6 0%, #38bdf8 100%);
    color: #ffffff !important;
    font-size: 12.5px;
    font-weight: 700;
    text-decoration: none !important;
    letter-spacing: 0.3px;
    box-shadow: 0 8px 22px rgba(139, 92, 246, 0.42);
    transform: translateZ(28px);
    transition: transform 0.25s ease, box-shadow 0.25s ease;
}

.pill-gradient-btn:hover {
    transform: translateZ(38px) translateY(-3px);
    box-shadow: 0 12px 28px rgba(56, 189, 248, 0.55);
}

/* =========================================================
   MINI STATS STRIP (4 SMALL CARDS)
========================================================= */
.mini-stat-box {
    padding: 22px 16px;
    border-radius: 18px;
    background: linear-gradient(145deg, rgba(31, 33, 66, 0.75), rgba(19, 20, 44, 0.9));
    border: 1px solid rgba(139, 92, 246, 0.2);
    text-align: center;
    transition: transform 0.3s ease, border-color 0.3s ease;
}

.mini-stat-box:hover {
    transform: translateY(-5px);
    border-color: rgba(34, 211, 238, 0.45);
}

.mini-stat-box strong {
    display: block;
    font-size: 24px;
    font-weight: 800;
    background: linear-gradient(90deg, #ffffff, #67e8f9);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}

.mini-stat-box span {
    font-size: 12px;
    color: #9499b7;
}

@media (max-width: 767px) {
    .main-showcase-wrap {
        margin: 35px 15px 0;
        padding: 30px 18px;
    }
    .center-sec-heading h2 {
        font-size: 25px;
    }
}
</style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="about-subject-theme">

    <!-- =====================================================
         HERO SECTION
         ===================================================== -->
    <section class="about-hero-box">
        <div class="container">
            <span class="hero-tag">✦ ABOUT LEARNSPHERE</span>
            <h1>Empowering Your Digital Learning</h1>
            <p>
                Watch short video guides, explore structured courses, and test your skills
                with interactive online examinations.
            </p>
            <div class="about-breadcrumb">
                <a href="index.aspx">Home</a> &nbsp;/&nbsp; <span>About Us</span>
            </div>
        </div>
    </section>


    <!-- =====================================================
         SECTION 1: SMALL VIDEO CARDS (EXACT SCREENSHOT LAYOUT)
         ===================================================== -->
    <div class="main-showcase-wrap">

        <div class="center-sec-heading">
            <h2>Explore Platform Videos</h2>
            <p>Watch quick video previews to understand how LearnSphere works.</p>
        </div>

        <div class="row">

            <!-- Video Card 1 -->
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="subject-style-card">
                    <div class="card-video-mini-box" style="background-image:url('images/about-1.jpg');">
                        <i class="fa fa-play"></i>
                    </div>
                    <h3>Platform Overview</h3>
                    <p>Learn how to enroll in courses and start learning.</p>
                    <a href="course.aspx" class="pill-gradient-btn">Watch Video</a>
                </div>
            </div>

            <!-- Video Card 2 -->
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="subject-style-card">
                    <div class="card-video-mini-box" style="background-image:url('images/about.jpg');">
                        <i class="fa fa-play"></i>
                    </div>
                    <h3>Online Exam Guide</h3>
                    <p>See how MCQ tests and instant results work.</p>
                    <a href="course.aspx" class="pill-gradient-btn">Watch Video</a>
                </div>
            </div>

            <!-- Video Card 3 -->
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="subject-style-card">
                    <div class="card-video-mini-box" style="background-image:url('images/work-1.jpg');">
                        <i class="fa fa-play"></i>
                    </div>
                    <h3>Coding &amp; Projects</h3>
                    <p>Build practical projects with expert mentors.</p>
                    <a href="course.aspx" class="pill-gradient-btn">Watch Video</a>
                </div>
            </div>

        </div>


        <!-- =====================================================
             MINI STATS ROW
             ===================================================== -->
        <div class="row mt-3">
            <div class="col-lg-3 col-6 mb-3">
                <div class="mini-stat-box">
                    <strong>400+</strong>
                    <span>Online Courses</span>
                </div>
            </div>
            <div class="col-lg-3 col-6 mb-3">
                <div class="mini-stat-box">
                    <strong>4,500+</strong>
                    <span>Active Students</span>
                </div>
            </div>
            <div class="col-lg-3 col-6 mb-3">
                <div class="mini-stat-box">
                    <strong>1,200+</strong>
                    <span>Expert Mentors</span>
                </div>
            </div>
            <div class="col-lg-3 col-6 mb-3">
                <div class="mini-stat-box">
                    <strong>300+ Hrs</strong>
                    <span>Video Content</span>
                </div>
            </div>
        </div>

    </div>


    <!-- =====================================================
         SECTION 2: WHY LEARNSPHERE (SAME 3-COLUMN CARD STYLE)
         ===================================================== -->
    <div class="main-showcase-wrap">

        <div class="center-sec-heading">
            <h2>Why Choose LearnSphere</h2>
            <p>Everything you need to upgrade your skills in one place.</p>
        </div>

        <div class="row">

            <!-- Feature Card 1 -->
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="subject-style-card">
                    <div class="card-center-icon">
                        <i class="fa fa-book"></i>
                    </div>
                    <h3>Structured Courses</h3>
                    <p>Step-by-step video lessons designed for beginners to pros.</p>
                    <a href="course.aspx" class="pill-gradient-btn">Browse Courses</a>
                </div>
            </div>

            <!-- Feature Card 2 -->
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="subject-style-card">
                    <div class="card-center-icon">
                        <i class="fa fa-laptop"></i>
                    </div>
                    <h3>Interactive Exams</h3>
                    <p>Test your knowledge with real-time MCQ assessments.</p>
                    <a href="login.aspx" class="pill-gradient-btn">Start Learning</a>
                </div>
            </div>

            <!-- Feature Card 3 -->
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="subject-style-card">
                    <div class="card-center-icon">
                        <i class="fa fa-certificate"></i>
                    </div>
                    <h3>Expert Mentorship</h3>
                    <p>Learn directly from experienced industry professionals.</p>
                    <a href="register.aspx" class="pill-gradient-btn">Join Now</a>
                </div>
            </div>

        </div>

    </div>

</div>

</asp:Content>