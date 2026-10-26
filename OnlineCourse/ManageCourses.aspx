<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageCourses.aspx.cs" Inherits="OnlineCourse.ManageCourses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>

/* =========================================================
   MANAGE COURSES - DARK BLUE PREMIUM 3D THEME
========================================================= */

.course-page,
.course-page * {
    box-sizing: border-box;
}

.course-page {
    position: relative;
    overflow: hidden;
    padding: 75px 15px 100px;

    background:
        radial-gradient(circle at 10% 15%, rgba(59,130,246,.14), transparent 28%),
        radial-gradient(circle at 90% 25%, rgba(139,92,246,.14), transparent 30%),
        radial-gradient(circle at 80% 90%, rgba(6,182,212,.10), transparent 28%),
        linear-gradient(135deg,#050b1c 0%,#07142d 45%,#0a1028 100%);
}


/* =========================================================
   HERO
========================================================= */

.course-hero {
    position: relative;
    min-height: 315px;

    display: flex;
    align-items: center;
    justify-content: center;

    overflow: hidden;

    background-position: center !important;
    background-size: cover !important;
}

.course-hero::before {
    content: "";

    position: absolute;
    inset: 0;

    background:
        radial-gradient(circle at 15% 30%,rgba(37,99,235,.55),transparent 32%),
        radial-gradient(circle at 85% 70%,rgba(124,58,237,.42),transparent 32%),
        linear-gradient(
            135deg,
            rgba(3,10,30,.80),
            rgba(7,20,55,.58)
        );

    pointer-events: none;
}

.course-hero::after {
    content: "";

    position: absolute;

    width: 520px;
    height: 520px;

    border-radius: 50%;

    border: 1px solid rgba(56,189,248,.18);

    box-shadow:
        0 0 0 35px rgba(56,189,248,.025),
        0 0 0 70px rgba(139,92,246,.025),
        0 0 80px rgba(37,99,235,.12);

    animation: heroRing 14s linear infinite;

    pointer-events: none;
}

@keyframes heroRing {

    from {
        transform: rotate(0deg) scale(.9);
    }

    to {
        transform: rotate(360deg) scale(1.05);
    }
}

.course-hero-content {
    position: relative;
    z-index: 20;
    padding: 30px 15px;
}

.course-hero .breadcrumbs {

    display: inline-flex;

    align-items: center;

    gap: 9px;

    padding: 10px 20px;

    margin: 0;

    border-radius: 40px;

    background: rgba(8,20,45,.55);

    border: 1px solid rgba(103,232,249,.20);

    backdrop-filter: blur(15px);
    -webkit-backdrop-filter: blur(15px);

    color: #dffbff !important;

    font-size: 13px !important;

    font-weight: 600;

    box-shadow:
        0 10px 35px rgba(0,0,0,.30),
        inset 0 1px 0 rgba(255,255,255,.08),
        0 0 25px rgba(37,99,235,.08);
}

.course-hero .breadcrumbs a {

    color: #67e8f9 !important;

    text-decoration: none !important;
}

.course-hero .breadcrumbs i {

    font-size: 10px;

    color: #818cf8;

    opacity: .9;
}

.course-hero-title {

    margin: 22px 0 0 !important;

    color: #ffffff !important;

    font-size: 52px !important;

    line-height: 1.1 !important;

    font-weight: 800 !important;

    letter-spacing: .5px;

    text-shadow:
        0 3px 0 rgba(17,24,64,.9),
        0 10px 30px rgba(0,0,0,.55),
        0 0 30px rgba(59,130,246,.55),
        0 0 55px rgba(139,92,246,.25);

    animation: courseTitleFloat 4s ease-in-out infinite;
}

@keyframes courseTitleFloat {

    0%,100% {
        transform: translateY(0);
    }

    50% {
        transform: translateY(-6px);
    }
}


/* =========================================================
   PARTICLES
========================================================= */

.course-particle {

    position: absolute;

    width: 6px;
    height: 6px;

    border-radius: 50%;

    background: #67e8f9;

    box-shadow:
        0 0 8px #22d3ee,
        0 0 20px #2563eb;

    z-index: 5;

    animation: courseParticleMove 5s ease-in-out infinite;
}

.course-p1 {
    left: 15%;
    top: 25%;
}

.course-p2 {
    left: 28%;
    bottom: 25%;
    animation-delay: 1s;
}

.course-p3 {
    right: 20%;
    top: 28%;
    animation-delay: 2s;
}

.course-p4 {
    right: 30%;
    bottom: 20%;
    animation-delay: 3s;
}

@keyframes courseParticleMove {

    0%,100% {
        transform: translateY(0) scale(1);
        opacity: .45;
    }

    50% {
        transform: translateY(-22px) scale(1.35);
        opacity: 1;
    }
}


/* =========================================================
   3D ORBS
========================================================= */

.course-orb {

    position: absolute;

    border-radius: 50%;

    pointer-events: none;

    z-index: 1;

    filter: blur(.3px);
}

.course-orb-1 {

    width: 105px;
    height: 105px;

    left: 4%;
    top: 9%;

    background:
        radial-gradient(
            circle at 30% 25%,
            #dbeafe,
            #3b82f6 25%,
            #1d4ed8 65%,
            #172554 100%
        );

    box-shadow:
        0 25px 60px rgba(37,99,235,.30),
        0 0 35px rgba(59,130,246,.16);

    animation: courseOrb1 7s ease-in-out infinite;
}

.course-orb-2 {

    width: 68px;
    height: 68px;

    right: 7%;
    top: 22%;

    background:
        radial-gradient(
            circle at 30% 25%,
            #ecfeff,
            #22d3ee 25%,
            #0891b2 65%,
            #164e63 100%
        );

    box-shadow:
        0 25px 45px rgba(6,182,212,.25),
        0 0 30px rgba(34,211,238,.15);

    animation: courseOrb2 6s ease-in-out infinite;
}

.course-orb-3 {

    width: 58px;
    height: 58px;

    left: 11%;
    bottom: 10%;

    background:
        radial-gradient(
            circle at 30% 25%,
            #ede9fe,
            #a78bfa 25%,
            #7c3aed 65%,
            #312e81 100%
        );

    box-shadow:
        0 20px 40px rgba(124,58,237,.25),
        0 0 30px rgba(139,92,246,.15);

    animation: courseOrb3 8s ease-in-out infinite;
}

@keyframes courseOrb1 {

    0%,100% {
        transform: translateY(0) rotate(0deg);
    }

    50% {
        transform: translateY(-30px) rotate(180deg);
    }
}

@keyframes courseOrb2 {

    0%,100% {
        transform: translateY(0);
    }

    50% {
        transform: translateY(-35px);
    }
}

@keyframes courseOrb3 {

    0%,100% {
        transform: translateY(0) rotate(0deg);
    }

    50% {
        transform: translateY(-28px) rotate(180deg);
    }
}


/* =========================================================
   3D GRID
========================================================= */

.course-grid-bg {

    position: absolute;

    left: -10%;
    right: -10%;

    bottom: -100px;

    height: 280px;

    opacity: .20;

    background-image:
        linear-gradient(
            rgba(59,130,246,.25) 1px,
            transparent 1px
        ),
        linear-gradient(
            90deg,
            rgba(59,130,246,.25) 1px,
            transparent 1px
        );

    background-size: 45px 45px;

    transform:
        perspective(500px)
        rotateX(62deg)
        scale(1.5);

    transform-origin: center bottom;

    pointer-events: none;
}


/* =========================================================
   CARD WRAPPER
========================================================= */

.course-card-wrapper {

    position: relative;

    z-index: 10;

    margin-bottom: 38px;

    perspective: 1200px;
}


/* =========================================================
   DARK GLASS CARD
========================================================= */

.course-card {

    position: relative;

    width: 100%;

    padding: 38px;

    border-radius: 28px;

    background:
        linear-gradient(
            145deg,
            rgba(12,25,55,.94),
            rgba(7,18,42,.96)
        );

    border: 1px solid rgba(96,165,250,.16);

    box-shadow:
        0 30px 70px rgba(0,0,0,.45),
        0 10px 30px rgba(30,64,175,.15),
        inset 0 1px 0 rgba(255,255,255,.06);

    backdrop-filter: blur(22px);
    -webkit-backdrop-filter: blur(22px);

    transform-style: preserve-3d;

    transition:
        transform .25s ease,
        box-shadow .3s ease;

    overflow: hidden;
}


/* =========================================================
   NEON BORDER
========================================================= */

.course-card::before {

    content: "";

    position: absolute;

    inset: 0;

    border-radius: 28px;

    padding: 1px;

    background:
        linear-gradient(
            120deg,
            #2563eb,
            #7c3aed,
            #06b6d4,
            #2563eb
        );

    background-size: 300% 300%;

    animation: courseBorderMove 6s linear infinite;

    -webkit-mask:
        linear-gradient(#fff 0 0) content-box,
        linear-gradient(#fff 0 0);

    -webkit-mask-composite: xor;

    mask-composite: exclude;

    pointer-events: none;

    opacity: .70;
}

@keyframes courseBorderMove {

    0% {
        background-position: 0% 50%;
    }

    50% {
        background-position: 100% 50%;
    }

    100% {
        background-position: 0% 50%;
    }
}


/* =========================================================
   CARD GLOW
========================================================= */

.course-card::after {

    content: "";

    position: absolute;

    width: 250px;
    height: 250px;

    top: -160px;
    right: -120px;

    border-radius: 50%;

    background:
        radial-gradient(
            circle,
            rgba(59,130,246,.18),
            transparent 65%
        );

    pointer-events: none;
}


/* =========================================================
   CARD HOVER
========================================================= */

.course-card:hover {

    box-shadow:
        0 42px 90px rgba(0,0,0,.52),
        0 15px 40px rgba(37,99,235,.16),
        0 0 40px rgba(59,130,246,.05),
        inset 0 1px 0 rgba(255,255,255,.08);
}


/* =========================================================
   TITLE
========================================================= */

.course-title {

    position: relative;

    margin: 0 0 30px !important;

    padding: 0 0 17px !important;

    color: #f8fafc !important;

    font-size: 26px !important;

    line-height: 1.3 !important;

    font-weight: 800 !important;

    border-bottom: none !important;

    text-shadow:
        0 0 20px rgba(96,165,250,.10);
}

.course-title::before {

    content: "";

    position: absolute;

    left: 0;
    top: -8px;

    width: 35px;
    height: 3px;

    border-radius: 10px;

    background: #22d3ee;

    box-shadow:
        0 0 12px rgba(34,211,238,.75);
}

.course-title::after {

    content: "";

    position: absolute;

    left: 0;

    bottom: 0;

    width: 80px;

    height: 3px;

    border-radius: 10px;

    background:
        linear-gradient(
            90deg,
            #2563eb,
            #7c3aed,
            #06b6d4
        );

    box-shadow:
        0 0 12px rgba(59,130,246,.55);
}


/* =========================================================
   LABEL
========================================================= */

.course-label {

    display: block;

    width: 100%;

    margin: 0 0 9px !important;

    color: #cbd5e1 !important;

    font-size: 14px !important;

    line-height: 1.4 !important;

    font-weight: 700 !important;
}


/* =========================================================
   INPUT
========================================================= */

.course-input {

    display: block;

    width: 100% !important;

    max-width: 100% !important;

    height: 54px !important;

    min-height: 54px !important;

    margin: 0 0 22px !important;

    padding: 0 17px !important;

    border-radius: 13px !important;

    border: 1px solid rgba(96,165,250,.22) !important;

    background:
        linear-gradient(
            145deg,
            rgba(15,35,70,.95),
            rgba(8,24,50,.98)
        ) !important;

    color: #e2e8f0 !important;

    font-family: inherit !important;

    font-size: 14px !important;

    font-weight: 500;

    outline: none !important;

    box-shadow:
        inset 0 1px 0 rgba(255,255,255,.04),
        0 8px 22px rgba(0,0,0,.20);

    transition:
        border .2s ease,
        box-shadow .2s ease,
        transform .2s ease;
}

.course-input::placeholder {

    color: #64748b !important;

    opacity: 1;
}

.course-input:hover {

    transform: translateY(-2px);

    border-color: rgba(56,189,248,.40) !important;

    box-shadow:
        0 12px 28px rgba(0,0,0,.28),
        0 0 18px rgba(37,99,235,.08);
}

.course-input:focus {

    border-color: #22d3ee !important;

    transform: translateY(-2px);

    box-shadow:
        0 15px 30px rgba(0,0,0,.30),
        0 0 0 3px rgba(34,211,238,.08),
        0 0 22px rgba(34,211,238,.10) !important;
}


/* =========================================================
   DROPDOWN
========================================================= */

select.course-input {

    cursor: pointer;

    color: #e2e8f0 !important;

    appearance: auto;
}

select.course-input option {

    background: #0b1935;

    color: #e2e8f0;
}


/* =========================================================
   MESSAGE
========================================================= */

.course-message {

    display: block;

    width: 100%;

    margin: 0 0 22px !important;

    padding: 12px 16px !important;

    border-radius: 12px;

    color: #6ee7b7 !important;

    background:
        rgba(6,78,59,.28);

    border: 1px solid rgba(52,211,153,.25);

    font-size: 14px;

    font-weight: 700;

    box-shadow:
        0 8px 22px rgba(0,0,0,.15),
        0 0 18px rgba(16,185,129,.05);
}


/* =========================================================
   BUTTON AREA
========================================================= */

.course-buttons {

    margin-top: 8px;

    display: flex;

    flex-wrap: wrap;

    gap: 10px;
}


/* =========================================================
   MAIN BUTTON
========================================================= */

.course-btn {

    position: relative;

    border: none !important;

    border-radius: 13px !important;

    padding: 12px 28px !important;

    min-height: 52px;

    color: #fff !important;

    font-weight: 700 !important;

    font-size: 14px !important;

    cursor: pointer;

    margin: 0 !important;

    transition:
        transform .2s ease,
        box-shadow .2s ease;

    box-shadow:
        0 6px 0 rgba(0,0,0,.35),
        0 14px 28px rgba(0,0,0,.25);
}

.course-btn:hover {

    transform: translateY(-4px);

    box-shadow:
        0 8px 0 rgba(0,0,0,.32),
        0 22px 35px rgba(0,0,0,.32);
}

.course-btn:active {

    transform: translateY(2px);
}


/* SAVE */

.btn-save {

    background:
        linear-gradient(
            135deg,
            #2563eb,
            #4f46e5,
            #7c3aed
        ) !important;

    box-shadow:
        0 6px 0 #172554,
        0 0 22px rgba(79,70,229,.18);
}


/* UPDATE */

.btn-update {

    background:
        linear-gradient(
            135deg,
            #0891b2,
            #06b6d4,
            #22d3ee
        ) !important;

    box-shadow:
        0 6px 0 #164e63,
        0 0 22px rgba(6,182,212,.16);
}


/* CLEAR */

.btn-clear {

    background:
        linear-gradient(
            135deg,
            #334155,
            #475569,
            #64748b
        ) !important;
}


/* =========================================================
   TABLE WRAPPER
========================================================= */

.course-table-wrap {

    width: 100%;

    overflow-x: auto;

    border-radius: 17px;

    border: 1px solid rgba(96,165,250,.12);

    box-shadow:
        0 20px 40px rgba(0,0,0,.25);
}


/* =========================================================
   GRIDVIEW
========================================================= */

.course-grid {

    width: 100%;

    min-width: 700px;

    border-collapse: separate;

    border-spacing: 0;

    background: #08152d;

    overflow: hidden;
}


/* =========================================================
   TABLE HEADER
========================================================= */

.course-grid th {

    padding: 17px 14px;

    background:
        linear-gradient(
            135deg,
            #172554,
            #1e3a8a,
            #312e81
        );

    color: #e0f2fe;

    text-align: left;

    font-size: 13px;

    font-weight: 700;

    letter-spacing: .3px;

    white-space: nowrap;

    border: none;

    box-shadow:
        inset 0 -1px 0 rgba(96,165,250,.18);
}

.course-grid th:first-child {

    border-top-left-radius: 14px;
}

.course-grid th:last-child {

    border-top-right-radius: 14px;
}


/* =========================================================
   TABLE CELLS
========================================================= */

.course-grid td {

    padding: 15px 14px;

    color: #cbd5e1;

    vertical-align: middle;

    border-bottom: 1px solid rgba(96,165,250,.10);

    background: #0a1933;

    font-size: 13px;

    font-weight: 500;

    transition:
        background .2s ease,
        color .2s ease;
}

.course-grid tr:nth-child(even) td {

    background: #0c1d3a;
}

.course-grid tr:hover td {

    background:
        linear-gradient(
            90deg,
            rgba(37,99,235,.15),
            rgba(124,58,237,.10)
        );

    color: #f1f5f9;
}


/* =========================================================
   GRID ACTION BUTTONS
========================================================= */

.grid-edit-btn,
.grid-delete-btn {

    border: none !important;

    border-radius: 9px !important;

    padding: 8px 15px !important;

    color: #fff !important;

    font-size: 12px !important;

    font-weight: 700 !important;

    cursor: pointer;

    margin-right: 5px;

    transition:
        transform .2s ease,
        box-shadow .2s ease;
}


/* EDIT */

.grid-edit-btn {

    background:
        linear-gradient(
            135deg,
            #4f46e5,
            #7c3aed
        ) !important;

    box-shadow:
        0 4px 0 #312e81;
}

.grid-edit-btn:hover {

    transform: translateY(-3px);

    box-shadow:
        0 7px 18px rgba(99,102,241,.35);
}


/* DELETE */

.grid-delete-btn {

    background:
        linear-gradient(
            135deg,
            #dc2626,
            #e11d48
        ) !important;

    box-shadow:
        0 4px 0 #7f1d1d;
}

.grid-delete-btn:hover {

    transform: translateY(-3px);

    box-shadow:
        0 7px 18px rgba(239,68,68,.30);
}


/* =========================================================
   QUICK ACTIONS
========================================================= */

.quick-btn {

    position: relative;

    display: inline-flex;

    align-items: center;

    justify-content: center;

    min-height: 48px;

    margin: 6px;

    padding: 12px 20px;

    border-radius: 13px;

    color: #fff !important;

    text-decoration: none !important;

    font-size: 13px;

    font-weight: 700;

    border: 1px solid rgba(255,255,255,.08);

    box-shadow:
        0 6px 0 rgba(0,0,0,.30),
        0 15px 25px rgba(0,0,0,.20);

    transition:
        transform .2s ease,
        box-shadow .2s ease;
}

.quick-btn:hover {

    transform: translateY(-4px);

    color: #fff !important;

    text-decoration: none !important;

    box-shadow:
        0 8px 0 rgba(0,0,0,.25),
        0 22px 35px rgba(0,0,0,.28);
}


/* CATEGORY */

.quick-category {

    background:
        linear-gradient(
            135deg,
            #b45309,
            #f59e0b
        );
}


/* VIDEOS */

.quick-videos {

    background:
        linear-gradient(
            135deg,
            #0369a1,
            #06b6d4
        );
}


/* ENROLLMENTS */

.quick-enrollments {

    background:
        linear-gradient(
            135deg,
            #334155,
            #64748b
        );
}


/* FEEDBACK */

.quick-feedback {

    background:
        linear-gradient(
            135deg,
            #be123c,
            #e11d48
        );
}


/* =========================================================
   EMPTY DATA
========================================================= */

.course-grid td[colspan] {

    padding: 35px !important;

    text-align: center;

    color: #64748b !important;

    font-weight: 600;
}


/* =========================================================
   MOBILE
========================================================= */

@media (max-width: 767px) {

    .course-page {

        padding: 50px 12px 70px;
    }

    .course-hero {

        min-height: 270px;
    }

    .course-hero-title {

        font-size: 38px !important;
    }

    .course-card {

        padding: 27px 19px;

        border-radius: 24px;
    }

    .course-title {

        font-size: 22px !important;
    }

    .course-btn {

        width: 100%;

        min-height: 52px;
    }

    .course-buttons {

        display: block;
    }

    .course-btn {

        margin-bottom: 10px !important;
    }

    .quick-btn {

        display: flex;

        width: 100%;

        margin: 10px 0;
    }

    .course-grid {

        min-width: 700px;
    }

    .course-table-wrap {

        overflow-x: auto;
    }

    .course-orb {

        opacity: .40;
    }
}


/* =========================================================
   SMALL MOBILE
========================================================= */

@media (max-width: 480px) {

    .course-hero {

        min-height: 235px;
    }

    .course-hero-title {

        font-size: 31px !important;
    }

    .course-page {

        padding: 45px 10px 60px;
    }

    .course-card {

        padding: 23px 15px;
    }

    .course-title {

        font-size: 21px !important;
    }

    .course-input {

        height: 52px !important;

        min-height: 52px !important;

        font-size: 13px !important;
    }

    .course-btn {

        min-height: 52px;
    }

    .course-orb {

        display: none;
    }

    .course-hero .breadcrumbs {

        font-size: 11px !important;

        padding: 8px 13px;
    }
}


/* =========================================================
   REDUCED MOTION
========================================================= */

@media (prefers-reduced-motion: reduce) {

    .course-card,
    .course-btn,
    .quick-btn,
    .course-input {

        transition: none !important;
    }

    .course-card::before,
    .course-hero::after,
    .course-hero-title,
    .course-particle,
    .course-orb {

        animation: none !important;
    }
}

</style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<!-- =========================================================
     HERO
========================================================= -->

<section class="hero-wrap hero-wrap-2 course-hero"
    style="background-image:url('images/bg_2.jpg');">

    <div class="overlay"></div>

    <span class="course-particle course-p1"></span>
    <span class="course-particle course-p2"></span>
    <span class="course-particle course-p3"></span>
    <span class="course-particle course-p4"></span>


    <div class="container">

        <div class="row no-gutters slider-text align-items-center justify-content-center">

            <div class="col-md-10 text-center course-hero-content">

                <p class="breadcrumbs">

                    <span>
                        <a href="AdminHome.aspx">
                            Admin Panel
                        </a>
                    </span>

                    <span>
                        <i class="fa fa-chevron-right"></i>
                    </span>

                    <span>
                        Manage Courses
                    </span>

                </p>


                <h1 class="course-hero-title">
                    Manage Courses
                </h1>

            </div>

        </div>

    </div>

</section>



<!-- =========================================================
     MAIN PAGE
========================================================= -->

<section class="course-page">


    <div class="course-orb course-orb-1"></div>

    <div class="course-orb course-orb-2"></div>

    <div class="course-orb course-orb-3"></div>

    <div class="course-grid-bg"></div>


    <div class="container">


        <!-- =================================================
             ADD COURSE
        ================================================== -->

        <div class="course-card-wrapper">

            <div class="course-card">


                <h3 class="course-title">
                    Add Course Details
                </h3>


                <asp:Label
                    ID="lblMessage"
                    runat="server"
                    CssClass="course-message">
                </asp:Label>


                <div class="row course-form-row">


                    <div class="col-md-6">

                        <asp:Label
                            ID="lblCourseName"
                            runat="server"
                            Text="Course Name"
                            CssClass="course-label">
                        </asp:Label>


                        <asp:TextBox
                            ID="txtCourseName"
                            runat="server"
                            CssClass="course-input"
                            placeholder="Enter course name">
                        </asp:TextBox>

                    </div>


                    <div class="col-md-6">

                        <asp:Label
                            ID="lblCategory"
                            runat="server"
                            Text="Category"
                            CssClass="course-label">
                        </asp:Label>


                        <asp:DropDownList
                            ID="ddlCourse"
                            runat="server"
                            CssClass="course-input">

                            <asp:ListItem
                                Text="-- Select Course --"
                                Value="0">
                            </asp:ListItem>

                        </asp:DropDownList>

                    </div>


                </div>


                <div class="row course-form-row">


                    <div class="col-md-6">

                        <asp:Label
                            ID="lblPrice"
                            runat="server"
                            Text="Price"
                            CssClass="course-label">
                        </asp:Label>


                        <asp:TextBox
                            ID="txtPrice"
                            runat="server"
                            CssClass="course-input"
                            TextMode="Number"
                            placeholder="Enter price">
                        </asp:TextBox>

                    </div>


                    <div class="col-md-6">

                        <asp:Label
                            ID="lblStatus"
                            runat="server"
                            Text="Status"
                            CssClass="course-label">
                        </asp:Label>


                        <asp:DropDownList
                            ID="ddlStatus"
                            runat="server"
                            CssClass="course-input">

                            <asp:ListItem
                                Text="Active"
                                Value="Active">
                            </asp:ListItem>

                            <asp:ListItem
                                Text="Inactive"
                                Value="Inactive">
                            </asp:ListItem>

                            <asp:ListItem
                                Text="Upcoming"
                                Value="Upcoming">
                            </asp:ListItem>

                        </asp:DropDownList>

                    </div>


                </div>


                <div class="course-buttons">


                    <asp:Button
                        ID="btnSave"
                        runat="server"
                        Text="Save"
                        CssClass="course-btn btn-save"
                        OnClick="btnSave_Click" />


                    <asp:Button
                        ID="btnUpdate"
                        runat="server"
                        Text="Update"
                        CssClass="course-btn btn-update"
                        OnClick="btnUpdate_Click" />


                    <asp:Button
                        ID="btnClear"
                        runat="server"
                        Text="Clear"
                        CssClass="course-btn btn-clear"
                        OnClick="btnClear_Click" />


                </div>


            </div>

        </div>



        <!-- =================================================
             COURSE LIST
        ================================================== -->

        <div class="course-card-wrapper">

            <div class="course-card">


                <h3 class="course-title">
                    Course List
                </h3>


                <div class="course-table-wrap">


                    <asp:GridView
                        ID="gvCourses"
                        runat="server"
                        AutoGenerateColumns="False"
                        CssClass="course-grid"
                        GridLines="None"
                        OnRowCommand="gvCourses_RowCommand"
                        EmptyDataText="No courses found.">

                        <Columns>


                            <asp:TemplateField HeaderText="ID">

                                <ItemTemplate>
                                    <%# Eval("ID") %>
                                </ItemTemplate>

                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="Course Name">

                                <ItemTemplate>
                                    <%# Eval("CourseName") %>
                                </ItemTemplate>

                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="Category">

                                <ItemTemplate>
                                    <%# Eval("CategoryID") %>
                                </ItemTemplate>

                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="Price">

                                <ItemTemplate>
                                    <%# Eval("Price") %>
                                </ItemTemplate>

                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="Status">

                                <ItemTemplate>
                                    <%# Eval("Status") %>
                                </ItemTemplate>

                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="Action">

                                <ItemTemplate>


                                    <asp:Button
                                        ID="btnEdit"
                                        runat="server"
                                        Text="Edit"
                                        CommandName="cmd_edit"
                                        CommandArgument='<%# Eval("ID") %>'
                                        CssClass="grid-edit-btn" />


                                    <asp:Button
                                        ID="btnDelete"
                                        runat="server"
                                        Text="Delete"
                                        CommandName="cmd_delete"
                                        CommandArgument='<%# Eval("ID") %>'
                                        OnClientClick="return confirm('Are you sure you want to delete this course?');"
                                        CssClass="grid-delete-btn" />


                                </ItemTemplate>

                            </asp:TemplateField>


                        </Columns>

                    </asp:GridView>


                </div>


            </div>

        </div>



        <!-- =================================================
             QUICK ACTIONS
        ================================================== -->

        <div class="course-card-wrapper">

            <div class="course-card">


                <h3 class="course-title">
                    Quick Actions
                </h3>


                <asp:HyperLink
                    ID="hlCategory"
                    runat="server"
                    NavigateUrl="~/ManageCategories.aspx"
                    CssClass="quick-btn quick-category"
                    Text="Manage Categories">
                </asp:HyperLink>


                <asp:HyperLink
                    ID="hlVideos"
                    runat="server"
                    NavigateUrl="~/ManageVideos.aspx"
                    CssClass="quick-btn quick-videos"
                    Text="Manage Videos">
                </asp:HyperLink>


                <asp:HyperLink
                    ID="hlEnrollments"
                    runat="server"
                    NavigateUrl="~/ManageEnrollments.aspx"
                    CssClass="quick-btn quick-enrollments"
                    Text="Manage Enrollments">
                </asp:HyperLink>


                <asp:HyperLink
                    ID="hlFeedback"
                    runat="server"
                    NavigateUrl="~/ManageFeedback.aspx"
                    CssClass="quick-btn quick-feedback"
                    Text="View Feedback">
                </asp:HyperLink>


            </div>

        </div>


    </div>

</section>



<!-- =========================================================
     LIGHTWEIGHT 3D EFFECT
========================================================= -->

<script>

    document.addEventListener("DOMContentLoaded", function () {

        var cards = document.querySelectorAll(".course-card");

        cards.forEach(function (card) {

            card.addEventListener("mousemove", function (e) {

                var rect = card.getBoundingClientRect();

                var x = e.clientX - rect.left;
                var y = e.clientY - rect.top;

                var centerX = rect.width / 2;
                var centerY = rect.height / 2;

                var rotateY =
                    ((x - centerX) / centerX) * 1.2;

                var rotateX =
                    ((y - centerY) / centerY) * -1.2;

                card.style.transform =
                    "translateY(-4px) rotateX(" +
                    rotateX +
                    "deg) rotateY(" +
                    rotateY +
                    "deg)";

            });


            card.addEventListener("mouseleave", function () {

                card.style.transform =
                    "translateY(0) rotateX(0deg) rotateY(0deg)";

            });

        });

    });

</script>


</asp:Content>