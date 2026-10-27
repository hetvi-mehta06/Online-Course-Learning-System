<%@ Page Title="" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="CourseDetails.aspx.cs" Inherits="OnlineCourse.CourseDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>

/* ================================
   LEARNSPHERE COURSE DETAILS
   PREMIUM DARK GLASSMORPHISM
================================ */

.course-details-page {
    position: relative;
    overflow: hidden;
    min-height: 100vh;
    background:
        radial-gradient(circle at 10% 10%, rgba(124,58,237,.28), transparent 28%),
        radial-gradient(circle at 90% 20%, rgba(37,99,235,.25), transparent 30%),
        radial-gradient(circle at 50% 90%, rgba(99,102,241,.18), transparent 35%),
        #080b1c;
    color: #e9eaff;
}

/* Background glowing circles */
.course-details-page::before,
.course-details-page::after {
    content: "";
    position: absolute;
    border-radius: 50%;
    filter: blur(5px);
    pointer-events: none;
    animation: floatingOrb 8s ease-in-out infinite;
}

.course-details-page::before {
    width: 280px;
    height: 280px;
    background: rgba(124,58,237,.16);
    top: 80px;
    left: -100px;
}

.course-details-page::after {
    width: 330px;
    height: 330px;
    background: rgba(37,99,235,.13);
    right: -120px;
    bottom: 100px;
    animation-delay: 2s;
}

@keyframes floatingOrb {
    0%,100% {
        transform: translate3d(0,0,0) scale(1);
    }

    50% {
        transform: translate3d(25px,-25px,0) scale(1.08);
    }
}


/* ================================
   HERO
================================ */

.course-hero {
    position: relative;
    min-height: 390px;
    display: flex;
    align-items: center;
    overflow: hidden;
    background:
        linear-gradient(135deg,
        rgba(15,12,45,.95),
        rgba(31,23,77,.92),
        rgba(13,27,70,.94)),
        url('images/bg_2.jpg') center/cover;
}

.course-hero::before {
    content: "";
    position: absolute;
    inset: 0;
    background:
        radial-gradient(circle at 30% 40%, rgba(139,92,246,.28), transparent 30%),
        radial-gradient(circle at 80% 60%, rgba(59,130,246,.20), transparent 30%);
}

.course-hero-content {
    position: relative;
    z-index: 2;
    animation: heroEntry 1s ease forwards;
}

@keyframes heroEntry {
    from {
        opacity: 0;
        transform: translateY(35px) scale(.97);
    }

    to {
        opacity: 1;
        transform: translateY(0) scale(1);
    }
}

.course-breadcrumbs {
    margin-bottom: 18px;
}

.course-breadcrumbs a {
    color: #b8b9ff;
    text-decoration: none;
    transition: .3s ease;
}

.course-breadcrumbs a:hover {
    color: #ffffff;
    text-shadow: 0 0 12px rgba(139,92,246,.8);
}

.course-breadcrumbs i {
    margin: 0 8px;
    font-size: 10px;
}

.course-main-title {
    font-size: 48px;
    font-weight: 800;
    letter-spacing: -1px;
    color: #ffffff;
    text-shadow:
        0 5px 25px rgba(124,58,237,.45);
}


/* ================================
   MAIN SECTION
================================ */

.course-content-section {
    position: relative;
    z-index: 2;
    padding: 80px 0;
}


/* ================================
   LEFT COURSE CARD
================================ */

.course-main-card {
    padding: 35px;
    border-radius: 24px;
    background: rgba(20,23,55,.72);
    border: 1px solid rgba(139,92,246,.30);
    backdrop-filter: blur(18px);
    -webkit-backdrop-filter: blur(18px);

    box-shadow:
        0 25px 70px rgba(0,0,0,.35),
        inset 0 1px 0 rgba(255,255,255,.06);

    transform: translateZ(0);
    transition:
        transform .45s ease,
        box-shadow .45s ease,
        border-color .45s ease;

    animation: cardEntry .8s ease both;
}

.course-main-card:hover {
    transform:
        perspective(1000px)
        translateY(-8px)
        rotateX(1deg);

    border-color: rgba(139,92,246,.65);

    box-shadow:
        0 35px 90px rgba(0,0,0,.48),
        0 0 35px rgba(124,58,237,.12);
}

@keyframes cardEntry {
    from {
        opacity: 0;
        transform: translateY(30px);
    }

    to {
        opacity: 1;
        transform: translateY(0);
    }
}


/* ================================
   COURSE IMAGE
================================ */

.course-image-wrapper {
    position: relative;
    overflow: hidden;
    border-radius: 18px;
    margin-bottom: 30px;
    box-shadow:
        0 20px 45px rgba(0,0,0,.35);
}

.course-image-wrapper img {
    width: 100%;
    display: block;
    transition:
        transform .7s ease,
        filter .7s ease;
}

.course-image-wrapper::after {
    content: "";
    position: absolute;
    inset: 0;
    background:
        linear-gradient(
            120deg,
            transparent 30%,
            rgba(255,255,255,.13) 50%,
            transparent 70%
        );

    transform: translateX(-120%);
    transition: transform .8s ease;
}

.course-main-card:hover .course-image-wrapper img {
    transform: scale(1.04);
    filter: brightness(1.08);
}

.course-main-card:hover .course-image-wrapper::after {
    transform: translateX(120%);
}


/* ================================
   TEXT
================================ */

.course-main-card h2,
.course-main-card h3 {
    color: #ffffff;
    font-weight: 700;
}

.course-main-card h2 {
    font-size: 30px;
    margin-bottom: 18px;
}

.course-main-card h3 {
    font-size: 23px;
    margin-bottom: 18px;
}

.course-main-card p {
    color: #bfc3df;
    line-height: 1.8;
}

.course-main-card hr {
    border: 0;
    border-top: 1px solid rgba(255,255,255,.10);
    margin: 30px 0;
}


/* ================================
   LEARNING LIST
================================ */

.course-main-card ul,
.course-main-card ol {
    padding-left: 20px;
}

.course-main-card li {
    color: #cfd2e9;
    margin-bottom: 12px;
    line-height: 1.6;
    transition:
        transform .25s ease,
        color .25s ease;
}

.course-main-card li:hover {
    color: #ffffff;
    transform: translateX(6px);
}


/* ================================
   VIDEO
================================ */

.course-video {
    overflow: hidden;
    border-radius: 18px;
    border: 1px solid rgba(139,92,246,.25);
    box-shadow:
        0 20px 50px rgba(0,0,0,.35);
}

.course-video iframe {
    display: block;
    width: 100%;
    border: 0;
}


/* ================================
   RIGHT COURSE INFORMATION
================================ */

.course-info-card {
    position: sticky;
    top: 30px;

    padding: 30px;
    border-radius: 24px;

    background:
        linear-gradient(
            145deg,
            rgba(31,25,72,.82),
            rgba(14,22,55,.82)
        );

    border: 1px solid rgba(139,92,246,.38);

    backdrop-filter: blur(20px);
    -webkit-backdrop-filter: blur(20px);

    box-shadow:
        0 25px 70px rgba(0,0,0,.40),
        inset 0 1px 0 rgba(255,255,255,.07);

    transition:
        transform .45s ease,
        box-shadow .45s ease,
        border-color .45s ease;

    animation: sideCardEntry 1s ease both;
}

.course-info-card:hover {
    transform:
        perspective(1000px)
        translateY(-8px)
        rotateY(-2deg);

    border-color: rgba(96,165,250,.55);

    box-shadow:
        0 35px 80px rgba(0,0,0,.48),
        0 0 35px rgba(59,130,246,.13);
}

@keyframes sideCardEntry {
    from {
        opacity: 0;
        transform: translateX(35px);
    }

    to {
        opacity: 1;
        transform: translateX(0);
    }
}

.course-info-card h3 {
    color: #ffffff;
    font-size: 24px;
    font-weight: 800;
    margin-bottom: 25px;
}

.course-info-item {
    padding: 14px 0;
    border-bottom: 1px solid rgba(255,255,255,.08);
    color: #c7cae3;
}

.course-info-item strong {
    color: #ffffff;
}

.course-price {
    font-size: 27px;
    font-weight: 800;
    color: #a78bfa;
}


/* ================================
   ENROLL BUTTON
================================ */

.enroll-btn {
    position: relative;
    overflow: hidden;
    margin-top: 18px;
    padding: 14px 20px !important;

    border: 0 !important;
    border-radius: 13px !important;

    background:
        linear-gradient(
            135deg,
            #7c3aed,
            #4f46e5,
            #2563eb
        ) !important;

    color: #ffffff !important;
    font-weight: 700 !important;
    letter-spacing: .3px;

    box-shadow:
        0 12px 30px rgba(79,70,229,.35);

    transition:
        transform .3s ease,
        box-shadow .3s ease;
}

.enroll-btn::before {
    content: "";
    position: absolute;
    top: 0;
    left: -120%;
    width: 80%;
    height: 100%;

    background:
        linear-gradient(
            90deg,
            transparent,
            rgba(255,255,255,.30),
            transparent
        );

    transform: skewX(-20deg);
    transition: left .6s ease;
}

.enroll-btn:hover {
    transform:
        translateY(-4px)
        scale(1.02);

    box-shadow:
        0 18px 40px rgba(79,70,229,.50);
}

.enroll-btn:hover::before {
    left: 140%;
}


/* ================================
   SECTION GLOW
================================ */

.section-label {
    display: inline-block;
    padding: 7px 14px;
    margin-bottom: 15px;

    border-radius: 30px;

    background: rgba(124,58,237,.13);
    border: 1px solid rgba(139,92,246,.25);

    color: #a78bfa;
    font-size: 12px;
    font-weight: 700;
    text-transform: uppercase;
    letter-spacing: 1px;
}


/* ================================
   RESPONSIVE
================================ */

@media (max-width: 991px) {

    .course-main-title {
        font-size: 38px;
    }

    .course-info-card {
        position: relative;
        top: auto;
        margin-top: 30px;
    }

    .course-main-card {
        padding: 25px;
    }
}

@media (max-width: 575px) {

    .course-hero {
        min-height: 330px;
    }

    .course-main-title {
        font-size: 31px;
    }

    .course-content-section {
        padding: 50px 0;
    }

    .course-main-card {
        padding: 20px;
        border-radius: 18px;
    }

    .course-info-card {
        padding: 22px;
        border-radius: 18px;
    }
}


/* ================================
   REDUCED MOTION
================================ */

@media (prefers-reduced-motion: reduce) {

    .course-details-page::before,
    .course-details-page::after,
    .course-hero-content,
    .course-main-card,
    .course-info-card {
        animation: none;
    }

    .course-main-card,
    .course-info-card,
    .course-image-wrapper img,
    .enroll-btn {
        transition: none;
    }
}

</style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="course-details-page">

    <!-- =========================
         HERO SECTION
    ========================== -->

    <section class="course-hero">

        <div class="container">

            <div class="row no-gutters align-items-end justify-content-center">

                <div class="col-md-9 text-center pb-5 course-hero-content">

                    <p class="breadcrumbs course-breadcrumbs">

                        <span class="mr-2">
                            <a href="index.aspx">
                                Home
                                <i class="fa fa-chevron-right"></i>
                            </a>
                        </span>

                        <span class="mr-2">
                            <a href="course.aspx">
                                Courses
                                <i class="fa fa-chevron-right"></i>
                            </a>
                        </span>

                        <span>Course Details</span>

                    </p>

                    <h1 class="mb-0 course-main-title">
                        HTML &amp; CSS Course
                    </h1>

                </div>

            </div>

        </div>

    </section>


    <!-- =========================
         COURSE CONTENT
    ========================== -->

    <section class="course-content-section">

        <div class="container">

            <div class="row">


                <!-- =========================
                     LEFT SIDE
                ========================== -->

                <div class="col-lg-8">

                    <div class="course-main-card">

                        <div class="course-image-wrapper">

                            <img src="images/work-1.jpg"
                                 class="img-fluid"
                                 alt="Course Image">

                        </div>


                        <span class="section-label">
                            Learn Web Development
                        </span>


                        <h2>
                            HTML &amp; CSS Complete Course
                        </h2>


                        <p>
                            Learn HTML and CSS from scratch and build responsive websites.
                            This course is perfect for beginners who want to start web development.
                        </p>


                        <hr />


                        <h3>
                            What You'll Learn
                        </h3>


                        <ul>

                            <li>✔ HTML Basics</li>

                            <li>✔ CSS Styling</li>

                            <li>✔ Responsive Design</li>

                            <li>✔ Flexbox</li>

                            <li>✔ CSS Grid</li>

                            <li>✔ Forms</li>

                            <li>✔ Bootstrap Basics</li>

                        </ul>


                        <hr />


                        <h3>
                            Course Curriculum
                        </h3>


                        <ol>

                            <li>Introduction</li>

                            <li>HTML Basics</li>

                            <li>HTML Forms</li>

                            <li>CSS Basics</li>

                            <li>Flexbox</li>

                            <li>Responsive Website</li>

                            <li>Mini Project</li>

                        </ol>


                        <hr />


                        <h3>
                            Preview Video
                        </h3>


                        <div class="course-video">

                            <iframe width="100%"
                                    height="450"
                                    src="https://www.youtube.com/embed/qz0aGYrrlhU"
                                    frameborder="0"
                                    allowfullscreen>
                            </iframe>

                        </div>

                    </div>

                </div>


                <!-- =========================
                     RIGHT SIDE
                ========================== -->

                <div class="col-lg-4">

                    <div class="course-info-card">

                        <h3>
                            Course Information
                        </h3>


                        <div class="course-info-item">

                            <strong>Instructor :</strong>
                            Tony Garret

                        </div>


                        <div class="course-info-item">

                            <strong>Category :</strong>
                            Web Development

                        </div>


                        <div class="course-info-item">

                            <strong>Level :</strong>
                            Beginner

                        </div>


                        <div class="course-info-item">

                            <strong>Duration :</strong>
                            8 Weeks

                        </div>


                        <div class="course-info-item">

                            <strong>Language :</strong>
                            English

                        </div>


                        <div class="course-info-item">

                            <strong>Price :</strong>

                            <span class="course-price">
                                ₹199
                            </span>

                        </div>


                        <a href="#"
                           class="btn btn-primary btn-block enroll-btn">

                            Enroll Now

                        </a>

                    </div>

                </div>

            </div>

        </div>

    </section>

</div>

</asp:Content>