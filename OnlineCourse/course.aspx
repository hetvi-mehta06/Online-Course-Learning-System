<%@ Page Title="" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="course.aspx.cs" Inherits="OnlineCourse.course" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>

/* =========================================================
   LEARNSPHERE COURSES PAGE
   PUBLIC MASTER SAFE
========================================================= */

.courses-page {
    position: relative;
    display: block;
    width: 100%;
    min-height: 100vh;
    margin: 0 !important;
    padding: 0 0 90px !important;
    overflow: hidden;

    background:
        radial-gradient(
            circle at 5% 25%,
            rgba(119, 73, 255, .15),
            transparent 28%
        ),
        radial-gradient(
            circle at 95% 70%,
            rgba(0, 210, 255, .11),
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

.courses-hero {
    position: relative;

    min-height: 340px;

    display: flex;
    align-items: center;
    justify-content: center;

    padding: 90px 20px 65px;

    overflow: hidden;

    background:
        linear-gradient(
            135deg,
            rgba(9, 4, 28, .96),
            rgba(55, 26, 111, .90)
        );
}


.courses-hero::before {
    content: "";

    position: absolute;

    width: 500px;
    height: 500px;

    left: -250px;
    top: -220px;

    border-radius: 50%;

    border: 1px solid rgba(143, 98, 255, .23);

    box-shadow:
        0 0 100px rgba(116, 74, 255, .14);

    pointer-events: none;
}


.courses-hero::after {
    content: "";

    position: absolute;

    width: 430px;
    height: 430px;

    right: -230px;
    bottom: -240px;

    border-radius: 50%;

    border: 1px solid rgba(0, 220, 255, .18);

    box-shadow:
        0 0 100px rgba(0, 210, 255, .10);

    pointer-events: none;
}


.courses-hero .container {
    position: relative;

    z-index: 5;

    width: 100%;

    max-width: 1100px;

    margin-left: auto;
    margin-right: auto;
}


.courses-hero-content {
    text-align: center;
}


/* Breadcrumb */

.courses-breadcrumb {
    margin-bottom: 18px;
}


.courses-breadcrumb a {
    color: #b9aaff !important;

    text-decoration: none !important;

    font-size: 13px;

    transition: .3s ease;
}


.courses-breadcrumb a:hover {
    color: #ffffff !important;
}


.courses-breadcrumb i {
    margin: 0 8px;

    color: #67eaff;

    font-size: 10px;
}


.courses-breadcrumb span:last-child {
    color: #aaa4bd;

    font-size: 13px;
}


/* Hero title */

.courses-title {
    margin: 0 !important;

    color: #ffffff !important;

    font-size: 45px !important;

    font-weight: 800 !important;

    line-height: 1.2 !important;

    letter-spacing: -.8px;

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


/* =========================================================
   COURSE CONTENT
========================================================= */

.courses-content {
    position: relative;

    width: 100%;

    padding: 75px 20px 0;
}


.courses-content .container {
    position: relative;

    z-index: 5;

    max-width: 1150px;

    margin-left: auto;
    margin-right: auto;
}


/* =========================================================
   SIDEBAR
========================================================= */

.course-sidebar {
    position: relative;

    width: 100%;
}


/* Sidebar card */

.course-filter-card {
    position: relative;

    width: 100%;

    margin-bottom: 22px;

    padding: 25px;

    border-radius: 22px;

    background:
        linear-gradient(
            145deg,
            rgba(255,255,255,.09),
            rgba(255,255,255,.025)
        );

    border:
        1px solid rgba(255,255,255,.11);

    box-shadow:
        0 18px 40px rgba(0,0,0,.35),
        inset 0 1px 0 rgba(255,255,255,.08);

    backdrop-filter: blur(20px);
    -webkit-backdrop-filter: blur(20px);
}


/* Search */

.course-search {
    position: relative;

    width: 100%;
}


.course-search-input {
    width: 100%;

    height: 50px;

    padding:
        0 48px 0 16px;

    border-radius: 13px;

    border:
        1px solid rgba(255,255,255,.10);

    outline: none;

    color: #ffffff;

    background:
        rgba(255,255,255,.045);

    font-family: 'Poppins', sans-serif;

    font-size: 12px;

    transition: .3s ease;
}


.course-search-input::placeholder {
    color: #777187;
}


.course-search-input:focus {
    border-color:
        rgba(132,96,255,.65);

    background:
        rgba(120,80,255,.065);

    box-shadow:
        0 0 0 3px rgba(117,79,255,.10);
}


.course-search-icon {
    position: absolute;

    right: 16px;
    top: 50%;

    transform:
        translateY(-50%);

    color: #8e73ff;

    pointer-events: none;
}


/* Search button */

.course-search-btn {
    width: 100%;

    height: 45px;

    margin-top: 13px;

    border: 0;

    border-radius: 12px;

    color: #ffffff;

    background:
        linear-gradient(
            135deg,
            #704cff,
            #985bff,
            #00c9eb
        );

    font-family: 'Poppins', sans-serif;

    font-size: 12px;

    font-weight: 600;

    cursor: pointer;

    box-shadow:
        0 12px 25px rgba(103,70,255,.28);

    transition: .3s ease;
}


.course-search-btn:hover {
    transform:
        translateY(-3px);

    box-shadow:
        0 18px 35px rgba(103,70,255,.42);
}


/* Filter title */

.filter-title {
    margin:
        0 0 20px !important;

    color:
        #ffffff !important;

    font-size:
        17px !important;

    font-weight:
        650 !important;
}


.filter-title::before {
    content: "";

    display: inline-block;

    width: 4px;
    height: 19px;

    margin-right: 9px;

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


/* Checkbox labels */

.filter-option {
    display: flex;

    align-items: center;

    min-height: 35px;

    margin: 0 !important;

    color:
        #aaa3bd;

    font-size:
        12px;

    cursor:
        pointer;

    transition:
        .25s ease;
}


.filter-option:hover {
    color:
        #ffffff;
}


.filter-option input {
    appearance: none;
    -webkit-appearance: none;

    width: 17px;
    height: 17px;

    margin:
        0 10px 0 0;

    border:
        1px solid #645d78;

    border-radius:
        5px;

    background:
        rgba(255,255,255,.03);

    cursor:
        pointer;

    transition:
        .25s ease;
}


.filter-option input:checked {
    border-color:
        #8660ff;

    background:
        linear-gradient(
            135deg,
            #704cff,
            #00c9eb
        );

    box-shadow:
        0 0 12px rgba(117,80,255,.28);
}


.filter-option input:checked::after {
    content: "✓";

    display: block;

    color: #ffffff;

    font-size: 11px;

    font-weight: bold;

    text-align: center;

    line-height: 15px;
}


/* =========================================================
   COURSE GRID
========================================================= */

.course-grid {
    display: grid;

    grid-template-columns:
        repeat(2, 1fr);

    gap: 25px;
}


/* =========================================================
   COURSE CARD
========================================================= */

.course-card {
    position: relative;

    min-width: 0;

    border-radius: 23px;

    overflow: hidden;

    background:
        linear-gradient(
            145deg,
            rgba(255,255,255,.09),
            rgba(255,255,255,.025)
        );

    border:
        1px solid rgba(255,255,255,.11);

    box-shadow:
        0 20px 45px rgba(0,0,0,.40),
        inset 0 1px 0 rgba(255,255,255,.09);

    backdrop-filter: blur(18px);
    -webkit-backdrop-filter: blur(18px);

    transition:
        transform .35s ease,
        box-shadow .35s ease,
        border-color .35s ease;
}


.course-card:hover {
    transform:
        translateY(-9px);

    border-color:
        rgba(137,98,255,.34);

    box-shadow:
        0 32px 65px rgba(0,0,0,.52),
        0 0 35px rgba(112,75,255,.11),
        inset 0 1px 0 rgba(255,255,255,.13);
}


/* =========================================================
   COURSE IMAGE
========================================================= */

.course-image {
    position: relative;

    display: block;

    width: 100%;

    height: 215px;

    background-position:
        center;

    background-size:
        cover;

    background-repeat:
        no-repeat;

    overflow:
        hidden;

    text-decoration:
        none !important;
}


.course-image::after {
    content: "";

    position: absolute;

    inset: 0;

    background:
        linear-gradient(
            180deg,
            transparent 40%,
            rgba(5,2,20,.75)
        );

    transition:
        .35s ease;
}


.course-card:hover .course-image::after {
    background:
        linear-gradient(
            180deg,
            rgba(88,50,180,.08),
            rgba(5,2,20,.82)
        );
}


/* Category badge */

.course-badge {
    position: absolute;

    z-index: 2;

    left: 17px;
    bottom: 15px;

    padding:
        7px 13px;

    border-radius:
        20px;

    color:
        #ffffff;

    background:
        rgba(38,20,77,.78);

    border:
        1px solid rgba(255,255,255,.15);

    backdrop-filter:
        blur(10px);

    font-size:
        10px;

    font-weight:
        600;

    letter-spacing:
        .3px;
}


/* =========================================================
   COURSE DETAILS
========================================================= */

.course-details {
    padding:
        22px 21px 20px;
}


.course-title {
    margin:
        0 0 10px !important;
}


.course-title a {
    color:
        #ffffff !important;

    text-decoration:
        none !important;

    font-size:
        18px !important;

    font-weight:
        650 !important;

    line-height:
        1.35 !important;

    transition:
        .25s ease;
}


.course-title a:hover {
    color:
        #b9a2ff !important;
}


.course-instructor {
    margin:
        0 0 17px !important;

    color:
        #817a91 !important;

    font-size:
        11px !important;
}


.course-instructor span {
    color:
        #b6add0;

    font-weight:
        500;
}


/* Course bottom */

.course-meta {
    display:
        flex;

    align-items:
        center;

    justify-content:
        space-between;

    margin:
        0;

    padding:
        13px 0 0;

    border-top:
        1px solid rgba(255,255,255,.07);

    list-style:
        none;
}


.course-meta li {
    color:
        #858092;

    font-size:
        10px;

    list-style:
        none;
}


.course-meta li i {
    margin-right:
        5px;

    color:
        #8060ff;
}


.course-price {
    color:
        #7eeaff !important;

    font-size:
        15px !important;

    font-weight:
        700 !important;
}


/* =========================================================
   PAGINATION
========================================================= */

.course-pagination {
    display:
        flex;

    justify-content:
        center;

    margin-top:
        45px;

    padding-bottom:
        20px;
}


.course-pagination ul {
    display:
        flex;

    align-items:
        center;

    gap:
        8px;

    margin:
        0;

    padding:
        0;

    list-style:
        none;
}


.course-pagination li {
    list-style:
        none;
}


.course-pagination a,
.course-pagination span {
    display:
        flex;

    align-items:
        center;

    justify-content:
        center;

    width:
        38px;

    height:
        38px;

    border-radius:
        11px;

    color:
        #aaa2bc;

    text-decoration:
        none;

    background:
        rgba(255,255,255,.045);

    border:
        1px solid rgba(255,255,255,.08);

    font-size:
        12px;

    transition:
        .25s ease;
}


.course-pagination a:hover {
    color:
        #ffffff;

    background:
        rgba(119,78,255,.18);

    border-color:
        rgba(132,95,255,.35);

    transform:
        translateY(-3px);
}


.course-pagination .active span {
    color:
        #ffffff;

    background:
        linear-gradient(
            135deg,
            #704cff,
            #00c9eb
        );

    border-color:
        transparent;

    box-shadow:
        0 10px 25px rgba(103,70,255,.30);
}


/* =========================================================
   DECORATIVE STARS
========================================================= */

.courses-content::before {
    content:
        "✦";

    position:
        absolute;

    left:
        3%;

    top:
        100px;

    color:
        #9174ff;

    font-size:
        23px;

    text-shadow:
        0 0 18px #9174ff;

    animation:
        courseFloat 3s ease-in-out infinite;
}


.courses-content::after {
    content:
        "✧";

    position:
        absolute;

    right:
        4%;

    bottom:
        80px;

    color:
        #5de7ff;

    font-size:
        28px;

    text-shadow:
        0 0 18px #5de7ff;

    animation:
        courseFloat 4s ease-in-out infinite;

    animation-delay:
        1s;
}


@keyframes courseFloat {

    0%, 100% {
        transform:
            translateY(0);

        opacity:
            .45;
    }

    50% {
        transform:
            translateY(-14px);

        opacity:
            1;
    }
}


/* =========================================================
   RESPONSIVE
========================================================= */

@media (max-width: 991px) {

    .course-grid {
        grid-template-columns:
            repeat(2, 1fr);
    }

}


@media (max-width: 767px) {

    .courses-hero {
        min-height:
            290px;

        padding:
            70px 15px 55px;
    }


    .courses-title {
        font-size:
            34px !important;
    }


    .courses-content {
        padding:
            55px 15px 0;
    }


    .course-grid {
        grid-template-columns:
            1fr;

        gap:
            20px;
    }


    .course-sidebar {
        margin-bottom:
            25px;
    }

}


@media (max-width: 480px) {

    .courses-title {
        font-size:
            29px !important;
    }


    .course-image {
        height:
            200px;
    }


    .course-details {
        padding:
            20px 17px;
    }

}

</style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="courses-page">


    <!-- =================================================
         HERO
    ================================================== -->

    <section class="courses-hero">

        <div class="container">

            <div class="courses-hero-content">

                <div class="courses-breadcrumb">

                    <span>
                        <a href="index.aspx">
                            Home
                            <i class="fa fa-chevron-right"></i>
                        </a>
                    </span>

                    <span>
                        Courses
                        <i class="fa fa-chevron-right"></i>
                    </span>

                </div>

                <h1 class="courses-title">
                    Explore Courses
                </h1>

            </div>

        </div>

    </section>


    <!-- =================================================
         COURSE CONTENT
    ================================================== -->

    <section class="courses-content">

        <div class="container">

            <div class="row">


                <!-- =========================================
                     SIDEBAR
                ========================================== -->

                <div class="col-lg-3">

                    <div class="course-sidebar">


                        <!-- SEARCH -->

                        <div class="course-filter-card">

                            <div class="course-search">

                                <input
                                    type="text"
                                    class="course-search-input"
                                    placeholder="Search Course" />

                                <span class="fa fa-search course-search-icon"></span>

                            </div>

                            <button
                                type="button"
                                class="course-search-btn">

                                <span class="fa fa-search"></span>

                                &nbsp; Search

                            </button>

                        </div>


                        <!-- CATEGORY -->

                        <div class="course-filter-card">

                            <h3 class="filter-title">
                                Course Category
                            </h3>


                            <label class="filter-option">
                                <input type="checkbox" checked />
                                Web Development
                            </label>


                            <label class="filter-option">
                                <input type="checkbox" />
                                Programming
                            </label>


                            <label class="filter-option">
                                <input type="checkbox" />
                                Database
                            </label>


                            <label class="filter-option">
                                <input type="checkbox" />
                                Cyber Security
                            </label>


                            <label class="filter-option">
                                <input type="checkbox" />
                                Artificial Intelligence
                            </label>


                            <label class="filter-option">
                                <input type="checkbox" />
                                Data Science
                            </label>

                        </div>


                        <!-- LEVEL -->

                        <div class="course-filter-card">

                            <h3 class="filter-title">
                                Level
                            </h3>


                            <label class="filter-option">
                                <input type="checkbox" />
                                Beginner
                            </label>


                            <label class="filter-option">
                                <input type="checkbox" />
                                Intermediate
                            </label>


                            <label class="filter-option">
                                <input type="checkbox" />
                                Advanced
                            </label>

                        </div>

                    </div>

                </div>


                <!-- =========================================
                     COURSES
                ========================================== -->

                <div class="col-lg-9">

                    <div class="course-grid">


                        <!-- COURSE 1 -->

                        <div class="course-card">

                            <a
                                href="CourseDetails.aspx?course=html"
                                class="course-image"
                                style="background-image: url(images/work-1.jpg);">

                                <span class="course-badge">
                                    Web Development
                                </span>

                            </a>

                            <div class="course-details">

                                <h3 class="course-title">

                                    <a href="CourseDetails.aspx?course=html">
                                        HTML &amp; CSS
                                    </a>

                                </h3>

                                <p class="course-instructor">
                                    Instructor
                                    <span>Tony Garret</span>
                                </p>

                                <ul class="course-meta">

                                    <li>
                                        <i class="fa fa-users"></i>
                                        2300 Students
                                    </li>

                                    <li class="course-price">
                                        ₹199
                                    </li>

                                </ul>

                            </div>

                        </div>


                        <!-- COURSE 2 -->

                        <div class="course-card">

                            <a
                                href="CourseDetails.aspx?course=aspnet"
                                class="course-image"
                                style="background-image: url(images/work-2.jpg);">

                                <span class="course-badge">
                                    Web Development
                                </span>

                            </a>

                            <div class="course-details">

                                <h3 class="course-title">

                                    <a href="CourseDetails.aspx?course=aspnet">
                                        ASP.NET Web Forms
                                    </a>

                                </h3>

                                <p class="course-instructor">
                                    Instructor
                                    <span>Tony Garret</span>
                                </p>

                                <ul class="course-meta">

                                    <li>
                                        <i class="fa fa-users"></i>
                                        1850 Students
                                    </li>

                                    <li class="course-price">
                                        ₹299
                                    </li>

                                </ul>

                            </div>

                        </div>


                        <!-- COURSE 3 -->

                        <div class="course-card">

                            <a
                                href="CourseDetails.aspx?course=python"
                                class="course-image"
                                style="background-image: url(images/work-3.jpg);">

                                <span class="course-badge">
                                    Programming
                                </span>

                            </a>

                            <div class="course-details">

                                <h3 class="course-title">

                                    <a href="CourseDetails.aspx?course=python">
                                        Python Programming
                                    </a>

                                </h3>

                                <p class="course-instructor">
                                    Instructor
                                    <span>Tony Garret</span>
                                </p>

                                <ul class="course-meta">

                                    <li>
                                        <i class="fa fa-users"></i>
                                        2000 Students
                                    </li>

                                    <li class="course-price">
                                        ₹249
                                    </li>

                                </ul>

                            </div>

                        </div>


                        <!-- COURSE 4 -->

                        <div class="course-card">

                            <a
                                href="CourseDetails.aspx?course=java"
                                class="course-image"
                                style="background-image: url(images/work-4.jpg);">

                                <span class="course-badge">
                                    Programming
                                </span>

                            </a>

                            <div class="course-details">

                                <h3 class="course-title">

                                    <a href="CourseDetails.aspx?course=java">
                                        Java Programming
                                    </a>

                                </h3>

                                <p class="course-instructor">
                                    Instructor
                                    <span>Tony Garret</span>
                                </p>

                                <ul class="course-meta">

                                    <li>
                                        <i class="fa fa-users"></i>
                                        2100 Students
                                    </li>

                                    <li class="course-price">
                                        ₹249
                                    </li>

                                </ul>

                            </div>

                        </div>


                        <!-- COURSE 5 -->

                        <div class="course-card">

                            <a
                                href="CourseDetails.aspx?course=javascript"
                                class="course-image"
                                style="background-image: url(images/work-5.jpg);">

                                <span class="course-badge">
                                    Programming
                                </span>

                            </a>

                            <div class="course-details">

                                <h3 class="course-title">

                                    <a href="CourseDetails.aspx?course=javascript">
                                        JavaScript
                                    </a>

                                </h3>

                                <p class="course-instructor">
                                    Instructor
                                    <span>Tony Garret</span>
                                </p>

                                <ul class="course-meta">

                                    <li>
                                        <i class="fa fa-users"></i>
                                        1900 Students
                                    </li>

                                    <li class="course-price">
                                        ₹199
                                    </li>

                                </ul>

                            </div>

                        </div>


                        <!-- COURSE 6 -->

                        <div class="course-card">

                            <a
                                href="CourseDetails.aspx?course=database"
                                class="course-image"
                                style="background-image: url(images/work-6.jpg);">

                                <span class="course-badge">
                                    Database
                                </span>

                            </a>

                            <div class="course-details">

                                <h3 class="course-title">

                                    <a href="CourseDetails.aspx?course=database">
                                        Database Management
                                    </a>

                                </h3>

                                <p class="course-instructor">
                                    Instructor
                                    <span>Tony Garret</span>
                                </p>

                                <ul class="course-meta">

                                    <li>
                                        <i class="fa fa-users"></i>
                                        1750 Students
                                    </li>

                                    <li class="course-price">
                                        ₹199
                                    </li>

                                </ul>

                            </div>

                        </div>


                    </div>


                    <!-- =====================================
                         PAGINATION
                    ====================================== -->

                    <div class="course-pagination">

                        <ul>

                            <li>
                                <a href="#">&lt;</a>
                            </li>

                            <li class="active">
                                <span>1</span>
                            </li>

                            <li>
                                <a href="#">2</a>
                            </li>

                            <li>
                                <a href="#">3</a>
                            </li>

                            <li>
                                <a href="#">&gt;</a>
                            </li>

                        </ul>

                    </div>


                </div>

            </div>

        </div>

    </section>

</div>

</asp:Content>