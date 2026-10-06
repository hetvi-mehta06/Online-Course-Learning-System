<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="Certificate.aspx.cs" Inherits="OnlineCourse.Certificate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>

/* =========================================
   CERTIFICATE 3D ANIMATION
   Existing HTML/Content unchanged
   ========================================= */

/* Certificate main card */
.ftco-section .bg-white.shadow-lg {
    position: relative;
    transform-style: preserve-3d;
    perspective: 1200px;
    border-radius: 18px;
    overflow: hidden;

    /* Smooth 3D entrance */
    animation: certificateEnter 1.2s ease-out forwards,
               certificateFloat 5s ease-in-out 1.2s infinite;

    transition:
        transform 0.5s ease,
        box-shadow 0.5s ease,
        border-color 0.5s ease;
}

/* 3D hover */
.ftco-section .bg-white.shadow-lg:hover {
    transform:
        translateY(-12px)
        rotateX(2deg)
        rotateY(-2deg)
        scale(1.015);

    box-shadow:
        0 35px 70px rgba(0,0,0,0.20),
        0 15px 30px rgba(13,110,253,0.15);
}

/* Certificate glowing border */
.ftco-section .bg-white.shadow-lg::before {
    content: "";
    position: absolute;
    inset: 0;

    border-radius: 18px;

    background:
        linear-gradient(
            120deg,
            transparent 20%,
            rgba(255,255,255,0.65) 45%,
            transparent 65%
        );

    transform: translateX(-120%);
    pointer-events: none;

    animation: shineEffect 4s ease-in-out infinite;
}

/* Inner 3D layer */
.ftco-section .bg-white.shadow-lg::after {
    content: "";
    position: absolute;
    inset: 8px;

    border-radius: 12px;
    border: 1px solid rgba(13,110,253,0.12);

    pointer-events: none;
}

/* Certificate heading */
.ftco-section h1.display-4 {
    position: relative;
    display: inline-block;

    text-shadow:
        0 2px 0 #ddd,
        0 5px 10px rgba(0,0,0,0.15);

    animation: title3D 1s ease-out;
}

/* Academy name */
.ftco-section h5.text-primary {
    animation: fadeSlideDown 0.8s ease-out;
}

/* Student name */
.ftco-section h2.text-primary {
    display: inline-block;

    transition:
        transform 0.4s ease,
        text-shadow 0.4s ease;

    animation: nameAppear 1.2s ease-out;
}

.ftco-section h2.text-primary:hover {
    transform:
        translateY(-4px)
        scale(1.05);

    text-shadow:
        0 8px 18px rgba(13,110,253,0.30);
}

/* Course title */
.ftco-section h3.font-weight-bold {
    transition:
        transform 0.4s ease,
        color 0.4s ease;

    animation: courseAppear 1.3s ease-out;
}

.ftco-section h3.font-weight-bold:hover {
    transform: translateY(-3px);
    color: #0d6efd;
}

/* Horizontal lines */
.ftco-section hr {
    transition:
        width 0.5s ease,
        border-color 0.5s ease;
}

.ftco-section .bg-white.shadow-lg:hover hr {
    border-color: #0d6efd !important;
}

/* Signature sections */
.ftco-section .row.mt-5 .col-md-6 {
    transition:
        transform 0.4s ease,
        box-shadow 0.4s ease;
}

.ftco-section .row.mt-5 .col-md-6:hover {
    transform: translateY(-6px);
}

/* =========================================
   BUTTON 3D EFFECT
   ========================================= */

.ftco-section .btn {
    position: relative;

    border-radius: 10px;

    transform: translateY(0);

    transition:
        transform 0.25s ease,
        box-shadow 0.25s ease,
        background 0.3s ease;

    box-shadow:
        0 6px 0 rgba(0,0,0,0.15),
        0 10px 20px rgba(0,0,0,0.10);
}

/* Button hover */
.ftco-section .btn:hover {
    transform:
        translateY(-5px)
        scale(1.04);

    box-shadow:
        0 10px 0 rgba(0,0,0,0.12),
        0 18px 30px rgba(0,0,0,0.18);
}

/* Button click */
.ftco-section .btn:active {
    transform:
        translateY(3px)
        scale(0.98);

    box-shadow:
        0 2px 0 rgba(0,0,0,0.15),
        0 5px 10px rgba(0,0,0,0.10);
}

/* Download button glow */
.ftco-section .btn-primary {
    animation: buttonGlow 3s ease-in-out infinite;
}

/* =========================================
   HERO TITLE ANIMATION
   ========================================= */

.hero-wrap-2 .bread {
    animation:
        heroTitle 1s ease-out,
        heroFloat 4s ease-in-out 1s infinite;

    text-shadow:
        0 4px 12px rgba(0,0,0,0.35);
}

/* Hero background slight zoom */
.hero-wrap-2 {
    background-size: cover;
    background-position: center;

    animation: backgroundZoom 12s ease-in-out infinite alternate;
}

/* Overlay smooth effect */
.hero-wrap-2 .overlay {
    transition: opacity 0.5s ease;
}


/* =========================================
   KEYFRAMES
   ========================================= */

@keyframes certificateEnter {

    0% {
        opacity: 0;
        transform:
            perspective(1200px)
            rotateX(15deg)
            rotateY(-12deg)
            translateY(80px)
            scale(0.92);
    }

    60% {
        opacity: 1;
        transform:
            perspective(1200px)
            rotateX(-3deg)
            rotateY(3deg)
            translateY(-8px)
            scale(1.01);
    }

    100% {
        opacity: 1;
        transform:
            perspective(1200px)
            rotateX(0)
            rotateY(0)
            translateY(0)
            scale(1);
    }
}


@keyframes certificateFloat {

    0%, 100% {
        transform:
            perspective(1200px)
            rotateX(0deg)
            rotateY(0deg)
            translateY(0);
    }

    50% {
        transform:
            perspective(1200px)
            rotateX(1deg)
            rotateY(-1deg)
            translateY(-7px);
    }
}


@keyframes shineEffect {

    0% {
        transform: translateX(-120%);
    }

    45% {
        transform: translateX(120%);
    }

    100% {
        transform: translateX(120%);
    }
}


@keyframes title3D {

    0% {
        opacity: 0;
        transform:
            perspective(500px)
            rotateX(70deg)
            translateY(40px);
    }

    100% {
        opacity: 1;
        transform:
            perspective(500px)
            rotateX(0deg)
            translateY(0);
    }
}


@keyframes fadeSlideDown {

    0% {
        opacity: 0;
        transform: translateY(-25px);
    }

    100% {
        opacity: 1;
        transform: translateY(0);
    }
}


@keyframes nameAppear {

    0% {
        opacity: 0;
        transform:
            translateZ(-80px)
            scale(0.8);
    }

    100% {
        opacity: 1;
        transform:
            translateZ(0)
            scale(1);
    }
}


@keyframes courseAppear {

    0% {
        opacity: 0;
        transform:
            translateY(30px)
            rotateX(20deg);
    }

    100% {
        opacity: 1;
        transform:
            translateY(0)
            rotateX(0);
    }
}


@keyframes buttonGlow {

    0%, 100% {
        box-shadow:
            0 6px 0 rgba(0,0,0,0.15),
            0 10px 20px rgba(13,110,253,0.10);
    }

    50% {
        box-shadow:
            0 6px 0 rgba(0,0,0,0.15),
            0 15px 30px rgba(13,110,253,0.30);
    }
}


@keyframes heroTitle {

    0% {
        opacity: 0;
        transform:
            perspective(500px)
            translateZ(-100px)
            rotateX(30deg);
    }

    100% {
        opacity: 1;
        transform:
            perspective(500px)
            translateZ(0)
            rotateX(0);
    }
}


@keyframes heroFloat {

    0%, 100% {
        transform: translateY(0);
    }

    50% {
        transform: translateY(-5px);
    }
}


@keyframes backgroundZoom {

    0% {
        background-size: 100%;
    }

    100% {
        background-size: 108%;
    }
}


/* =========================================
   MOBILE RESPONSIVE
   ========================================= */

@media (max-width: 768px) {

    .ftco-section .bg-white.shadow-lg {
        animation:
            certificateEnter 1s ease-out forwards,
            certificateFloat 6s ease-in-out 1s infinite;
    }

    .ftco-section .bg-white.shadow-lg:hover {
        transform: translateY(-5px) scale(1.005);
    }

    .ftco-section .btn {
        margin-bottom: 12px;
    }

}


/* =========================================
   REDUCED MOTION
   ========================================= */

@media (prefers-reduced-motion: reduce) {

    .ftco-section .bg-white.shadow-lg,
    .ftco-section h1.display-4,
    .ftco-section h5.text-primary,
    .ftco-section h2.text-primary,
    .ftco-section h3.font-weight-bold,
    .ftco-section .btn-primary,
    .hero-wrap-2 .bread,
    .hero-wrap-2 {
        animation: none !important;
        transition: none !important;
    }

}

</style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<section class="hero-wrap hero-wrap-2" style="background-image:url('images/bg_2.jpg');">

    <div class="overlay"></div>

    <div class="container">

        <div class="row no-gutters slider-text align-items-end justify-content-center">

            <div class="col-md-9 text-center pb-5">

                <h1 class="bread">Course Certificate</h1>

            </div>

        </div>

    </div>

</section>


<section class="ftco-section">

<div class="container">

<div class="row justify-content-center">

<div class="col-lg-10">

<div class="bg-white shadow-lg p-5 text-center" style="border:8px solid #0d6efd;">

<h5 class="text-uppercase text-primary">
LearnSphere Academy
</h5>

<h1 class="display-4 font-weight-bold mt-3">
Certificate
</h1>

<h5 class="mb-4">
of Completion
</h5>

<p class="mt-4">
This Certificate is proudly presented to
</p>

<h2 class="text-primary font-weight-bold">
Vaibhavi Raiyani
</h2>

<p class="mt-4">
For Successfully Completing the Course
</p>

<h3 class="font-weight-bold">
ASP.NET Web Forms
</h3>

<hr>

<p class="mt-4">
<strong>Instructor :</strong> Tony Garret
</p>

<p>
<strong>Completion Date :</strong> 25 July 2026
</p>

<p>
<strong>Certificate ID :</strong> LS20260001
</p>

<div class="row mt-5">

    <div class="col-md-6 text-center">

        <hr style="width:200px;border:1px solid #000;" />

        <h5>Instructor Signature</h5>

    </div>

    <div class="col-md-6 text-center">

        <hr style="width:200px;border:1px solid #000;" />

        <h5>Director Signature</h5>

    </div>

</div>

<div class="mt-5">

    <a href="#" class="btn btn-primary btn-lg mr-3">
        <i class="fa fa-download"></i> Download PDF
    </a>

    <a href="MyCourses.aspx" class="btn btn-success btn-lg">
        Back to My Courses
    </a>

</div>

</div>

</div>

</div>

</div>

</section>

</asp:Content>