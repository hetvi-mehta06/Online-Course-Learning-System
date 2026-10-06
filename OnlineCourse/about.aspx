<%@ Page Title="" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="OnlineCourse.about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>

    /* =========================================================
       LEARNSPHERE ABOUT PAGE
       PREMIUM 3D + AESTHETIC + SMOOTH ANIMATION
       ========================================================= */

    .about-premium {
        font-family: 'Poppins', sans-serif;
        color: #22213a;
        overflow: hidden;
        background: #f8f8fc;
    }


    /* =========================================================
       HERO
       ========================================================= */

    .about-hero {
        min-height: 440px;
        position: relative;

        background:
            linear-gradient(
                135deg,
                rgba(12,7,43,.97),
                rgba(49,31,122,.90),
                rgba(14,47,89,.88)
            ),
            url('images/bg_2.jpg') center/cover;

        display: flex;
        align-items: center;
        justify-content: center;

        overflow: hidden;
        perspective: 1200px;
    }

    .about-hero::before {
        content: "";

        position: absolute;

        width: 470px;
        height: 470px;

        border: 1px solid rgba(255,255,255,.10);

        border-radius: 50%;

        top: -230px;
        right: -100px;

        box-shadow:
            0 0 80px rgba(124,58,237,.12);

        animation: heroOrbit 16s linear infinite;
    }

    .about-hero::after {
        content: "";

        position: absolute;

        width: 310px;
        height: 310px;

        border: 1px solid rgba(34,211,238,.16);

        border-radius: 50%;

        bottom: -170px;
        left: 6%;

        animation: heroOrbitReverse 13s linear infinite;
    }

    .hero-content {
        position: relative;
        z-index: 3;

        text-align: center;
        color: white;

        padding: 75px 15px;

        transform: translateZ(30px);

        animation: heroAppear .9s ease both;
    }

    .hero-mini {
        display: inline-block;

        padding: 9px 19px;

        border-radius: 30px;

        background: rgba(255,255,255,.07);

        border: 1px solid rgba(255,255,255,.15);

        color: #cfc7ff;

        font-size: 12px;
        font-weight: 600;

        letter-spacing: 2px;

        margin-bottom: 20px;

        backdrop-filter: blur(12px);

        box-shadow:
            0 8px 30px rgba(0,0,0,.12);

        animation: badgeFloat 4s ease-in-out infinite;
    }

    .hero-content h1 {
        font-size: 58px;
        font-weight: 800;

        margin: 0 0 18px;

        letter-spacing: -1px;

        text-shadow:
            0 12px 35px rgba(0,0,0,.25);
    }

    .hero-gradient {
        background:
            linear-gradient(
                90deg,
                #ffffff,
                #a99aff,
                #62dcff
            );

        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;

        background-clip: text;
    }

    .hero-content p {
        color: #c2bedb;

        max-width: 650px;

        margin: auto;

        line-height: 1.8;

        font-size: 15px;
    }

    .hero-breadcrumb {
        margin-top: 25px;

        color: #9d95bf;

        font-size: 13px;
    }

    .hero-breadcrumb a {
        color: #c7bfff;
        text-decoration: none;
    }


    @keyframes heroAppear {

        from {
            opacity: 0;
            transform: translateY(25px) translateZ(0);
        }

        to {
            opacity: 1;
            transform: translateY(0) translateZ(30px);
        }

    }

    @keyframes badgeFloat {

        0%,100% {
            transform: translateY(0);
        }

        50% {
            transform: translateY(-5px);
        }

    }

    @keyframes heroOrbit {

        from {
            transform: rotate(0deg);
        }

        to {
            transform: rotate(360deg);
        }

    }

    @keyframes heroOrbitReverse {

        from {
            transform: rotate(360deg);
        }

        to {
            transform: rotate(0deg);
        }

    }


    /* =========================================================
       INTRO SECTION
       ========================================================= */

    .about-intro-section {
        padding: 110px 0;

        background:
            radial-gradient(
                circle at 10% 20%,
                rgba(124,92,255,.08),
                transparent 28%
            ),
            radial-gradient(
                circle at 90% 80%,
                rgba(6,182,212,.06),
                transparent 25%
            ),
            #f8f8fc;

        position: relative;
    }


    /* =========================================================
       IMAGE 3D AREA
       ========================================================= */

    .about-image-wrap {
        position: relative;

        min-height: 510px;

        perspective: 1200px;

        transform-style: preserve-3d;
    }

    .about-image-main,
    .about-image-second {
        position: absolute;

        background-size: cover;
        background-position: center;

        overflow: hidden;

        transition:
            transform .5s ease,
            box-shadow .5s ease;
    }

    .about-image-main {
        width: 78%;
        height: 400px;

        top: 20px;
        left: 5%;

        border-radius: 25px;

        transform:
            rotate(-4deg)
            translateZ(20px);

        border: 7px solid white;

        box-shadow:
            0 30px 55px rgba(31,25,75,.20),
            12px 18px 0 rgba(124,92,255,.07);
    }

    .about-image-second {
        width: 58%;
        height: 280px;

        right: 0;
        bottom: 15px;

        border-radius: 23px;

        transform:
            rotate(6deg)
            translateZ(45px);

        border: 7px solid white;

        box-shadow:
            0 25px 50px rgba(31,25,75,.25),
            -10px 15px 0 rgba(6,182,212,.07);
    }


    /* IMAGE SHINE */

    .about-image-main::after,
    .about-image-second::after {
        content: "";

        position: absolute;

        top: 0;
        left: -130%;

        width: 60%;
        height: 100%;

        background:
            linear-gradient(
                90deg,
                transparent,
                rgba(255,255,255,.22),
                transparent
            );

        transform: skewX(-20deg);

        transition: left .8s ease;

        pointer-events: none;
    }

    .about-image-wrap:hover .about-image-main::after,
    .about-image-wrap:hover .about-image-second::after {
        left: 140%;
    }


    .about-image-wrap:hover .about-image-main {
        transform:
            rotate(-2deg)
            translateY(-10px)
            translateZ(38px);

        box-shadow:
            0 38px 65px rgba(31,25,75,.25),
            12px 18px 0 rgba(124,92,255,.08);
    }

    .about-image-wrap:hover .about-image-second {
        transform:
            rotate(3deg)
            translateY(-13px)
            translateZ(68px);

        box-shadow:
            0 35px 60px rgba(31,25,75,.28),
            -10px 15px 0 rgba(6,182,212,.08);
    }


    /* IMAGE BADGE */

    .image-badge {
        position: absolute;

        z-index: 5;

        left: 0;
        bottom: 35px;

        padding: 17px 22px;

        border-radius: 17px;

        background:
            linear-gradient(
                135deg,
                rgba(30,22,74,.96),
                rgba(45,32,110,.92)
            );

        color: white;

        box-shadow:
            0 20px 40px rgba(27,19,75,.30);

        backdrop-filter: blur(15px);

        transform: translateZ(80px);

        transition:
            transform .4s ease,
            box-shadow .4s ease;
    }

    .about-image-wrap:hover .image-badge {
        transform:
            translateY(-8px)
            translateZ(95px);

        box-shadow:
            0 28px 50px rgba(27,19,75,.38);
    }

    .image-badge strong {
        display: block;

        font-size: 22px;

        color: #b5a7ff;
    }

    .image-badge span {
        font-size: 11px;
        color: #b8b4cf;
    }


    /* =========================================================
       ABOUT CONTENT
       ========================================================= */

    .about-content {
        padding: 30px 15px 30px 55px;

        animation: contentAppear .8s ease both;
    }

    .section-tag {
        color: #765cff;

        font-size: 12px;
        font-weight: 700;

        letter-spacing: 2px;

        text-transform: uppercase;

        margin-bottom: 13px;

        display: block;
    }

    .about-content h2 {
        font-size: 39px;

        line-height: 1.25;

        font-weight: 800;

        color: #211c43;

        margin-bottom: 22px;
    }

    .about-content h2 span {
        color: #7055e8;
    }

    .about-content p {
        color: #73718b;

        font-size: 14px;

        line-height: 1.9;

        margin-bottom: 17px;
    }

    @keyframes contentAppear {

        from {
            opacity: 0;
            transform: translateX(25px);
        }

        to {
            opacity: 1;
            transform: translateX(0);
        }

    }


    /* =========================================================
       BUTTON
       ========================================================= */

    .about-btn {
        display: inline-block;

        position: relative;

        overflow: hidden;

        margin-top: 10px;

        padding: 14px 25px;

        border-radius: 13px;

        color: white !important;

        text-decoration: none !important;

        font-size: 13px;
        font-weight: 600;

        background:
            linear-gradient(
                135deg,
                #795cff,
                #4933bc,
                #2778e6
            );

        box-shadow:
            0 14px 30px rgba(89,64,207,.28);

        transition:
            transform .3s ease,
            box-shadow .3s ease;
    }

    .about-btn::after {
        content: "";

        position: absolute;

        top: 0;
        left: -130%;

        width: 60%;
        height: 100%;

        background:
            linear-gradient(
                90deg,
                transparent,
                rgba(255,255,255,.28),
                transparent
            );

        transform: skewX(-20deg);

        transition: left .7s ease;
    }

    .about-btn:hover {
        transform: translateY(-5px);

        box-shadow:
            0 21px 40px rgba(89,64,207,.38);
    }

    .about-btn:hover::after {
        left: 140%;
    }


    /* =========================================================
       STATS
       ========================================================= */

    .stats-section {
        padding: 78px 0;

        position: relative;

        background:
            linear-gradient(
                135deg,
                rgba(19,12,57,.98),
                rgba(43,27,112,.96),
                rgba(9,44,76,.96)
            ),
            url('images/bg_4.jpg') center/cover;

        overflow: hidden;

        perspective: 1200px;
    }

    .stats-section::before {
        content: "";

        position: absolute;

        width: 500px;
        height: 500px;

        border: 1px solid rgba(255,255,255,.07);

        border-radius: 50%;

        top: -300px;
        left: -120px;

        animation: heroOrbit 18s linear infinite;
    }

    .stat-card {
        position: relative;

        padding: 28px 15px;

        text-align: center;

        border-radius: 22px;

        background:
            linear-gradient(
                145deg,
                rgba(255,255,255,.075),
                rgba(255,255,255,.035)
            );

        border: 1px solid rgba(255,255,255,.11);

        backdrop-filter: blur(15px);

        box-shadow:
            0 18px 35px rgba(0,0,0,.18),
            inset 0 1px rgba(255,255,255,.08);

        transform-style: preserve-3d;

        transition:
            transform .35s ease,
            box-shadow .35s ease,
            background .35s ease;
    }

    .stat-card:hover {
        transform:
            translateY(-10px)
            rotateX(3deg)
            rotateY(-2deg);

        background:
            rgba(255,255,255,.10);

        box-shadow:
            0 28px 50px rgba(0,0,0,.28),
            0 0 25px rgba(124,92,255,.10);
    }

    .stat-icon {
        width: 58px;
        height: 58px;

        margin: 0 auto 15px;

        border-radius: 17px;

        display: flex;
        align-items: center;
        justify-content: center;

        background:
            linear-gradient(
                145deg,
                #7e62ff,
                #4934b9,
                #2778e6
            );

        color: white;

        font-size: 21px;

        box-shadow:
            0 12px 25px rgba(90,66,210,.35);

        transform: translateZ(25px);

        transition: .35s ease;
    }

    .stat-card:hover .stat-icon {
        transform:
            translateZ(40px)
            rotate(-5deg)
            scale(1.07);
    }

    .stat-number {
        display: block;

        color: white;

        font-size: 31px;
        font-weight: 800;

        margin-bottom: 3px;

        transform: translateZ(16px);
    }

    .stat-title {
        color: #aaa6c5;
        font-size: 12px;
    }


    /* =========================================================
       TESTIMONIALS
       ========================================================= */

    .testimonial-section {
        padding: 105px 0;

        background: #f8f8fc;

        position: relative;

        perspective: 1400px;
    }

    .section-heading {
        text-align: center;
        margin-bottom: 50px;
    }

    .section-heading span {
        color: #7559ef;

        font-size: 12px;
        font-weight: 700;

        letter-spacing: 2px;

        text-transform: uppercase;
    }

    .section-heading h2 {
        color: #211c43;

        font-size: 38px;
        font-weight: 800;

        margin-top: 10px;
    }

    .section-heading p {
        color: #818096;

        font-size: 14px;

        max-width: 620px;

        margin: 12px auto 0;
    }

    .testimonial-card {
        position: relative;

        margin: 10px;

        padding: 32px;

        min-height: 255px;

        border-radius: 24px;

        background: white;

        border: 1px solid #eceaf5;

        box-shadow:
            0 18px 45px rgba(39,30,91,.09);

        transform-style: preserve-3d;

        transition:
            transform .35s ease,
            box-shadow .35s ease;
    }

    .testimonial-card:hover {
        transform:
            translateY(-9px)
            rotateX(2deg)
            rotateY(-2deg);

        box-shadow:
            0 30px 58px rgba(39,30,91,.16);
    }

    .quote-icon {
        position: absolute;

        right: 25px;
        top: 20px;

        font-size: 42px;

        color: #eeeaff;

        transform: translateZ(25px);
    }

    .stars {
        color: #ffbd4a;

        font-size: 13px;

        margin-bottom: 17px;

        transform: translateZ(14px);
    }

    .testimonial-card p {
        color: #77748b;

        font-size: 13px;

        line-height: 1.8;

        margin-bottom: 22px;

        transform: translateZ(13px);
    }

    .user-area {
        display: flex;
        align-items: center;

        transform: translateZ(16px);
    }

    .user-photo {
        width: 52px;
        height: 52px;

        border-radius: 50%;

        background-size: cover;
        background-position: center;

        border: 3px solid #eeeaff;

        box-shadow:
            0 8px 18px rgba(40,30,90,.13);
    }

    .user-info {
        padding-left: 13px;
    }

    .user-info strong {
        display: block;

        color: #292541;

        font-size: 13px;
    }

    .user-info span {
        color: #9995aa;
        font-size: 11px;
    }


    /* =========================================================
       CTA
       ========================================================= */

    .cta-section {
        padding: 80px 0;

        background: #f8f8fc;
    }

    .cta-card {
        position: relative;

        overflow: hidden;

        padding: 65px 35px;

        text-align: center;

        border-radius: 30px;

        background:
            linear-gradient(
                135deg,
                rgba(24,15,72,.98),
                rgba(69,43,168,.95),
                rgba(25,91,141,.92)
            ),
            url('images/bg_4.jpg') center/cover;

        box-shadow:
            0 30px 70px rgba(42,29,108,.25);

        transform-style: preserve-3d;

        transition:
            transform .4s ease,
            box-shadow .4s ease;
    }

    .cta-card:hover {
        transform: translateY(-6px);

        box-shadow:
            0 40px 85px rgba(42,29,108,.32);
    }

    .cta-card::before {
        content: "";

        position: absolute;

        width: 350px;
        height: 350px;

        border: 1px solid rgba(255,255,255,.10);

        border-radius: 50%;

        left: -180px;
        top: -170px;

        animation: heroOrbit 16s linear infinite;
    }

    .cta-card::after {
        content: "";

        position: absolute;

        width: 280px;
        height: 280px;

        border: 1px solid rgba(255,255,255,.10);

        border-radius: 50%;

        right: -140px;
        bottom: -150px;

        animation: heroOrbitReverse 12s linear infinite;
    }

    .cta-content {
        position: relative;

        z-index: 3;

        transform: translateZ(30px);
    }

    .cta-content h2 {
        color: white;

        font-size: 34px;
        font-weight: 800;

        margin-bottom: 13px;
    }

    .cta-content p {
        color: #bcb7d7;

        font-size: 14px;

        margin-bottom: 28px;
    }

    .cta-btn {
        display: inline-block;

        padding: 14px 28px;

        border-radius: 13px;

        background: white;

        color: #4d37bc !important;

        font-size: 13px;
        font-weight: 700;

        text-decoration: none !important;

        box-shadow:
            0 12px 28px rgba(0,0,0,.22);

        transition:
            transform .3s ease,
            box-shadow .3s ease;
    }

    .cta-btn:hover {
        transform:
            translateY(-4px)
            scale(1.02);

        box-shadow:
            0 18px 35px rgba(0,0,0,.28);
    }


    /* =========================================================
       LEARNING SECTION
       ========================================================= */

    .learning-section {
        padding: 105px 0;

        background: white;

        perspective: 1300px;
    }

    .learning-content {
        padding-right: 45px;
    }

    .learning-content h2 {
        font-size: 37px;

        line-height: 1.25;

        font-weight: 800;

        color: #211c43;

        margin-bottom: 20px;
    }

    .learning-content p {
        color: #77748b;

        font-size: 14px;

        line-height: 1.9;
    }


    /* =========================================================
       VIDEO
       ========================================================= */

    .video-card {
        position: relative;

        height: 230px;

        margin-top: 28px;

        border-radius: 22px;

        background-size: cover;
        background-position: center;

        overflow: hidden;

        box-shadow:
            0 20px 45px rgba(39,30,91,.15);

        transform-style: preserve-3d;

        transition:
            transform .4s ease,
            box-shadow .4s ease;
    }

    .video-card::before {
        content: "";

        position: absolute;

        inset: 0;

        background:
            linear-gradient(
                135deg,
                rgba(30,19,87,.72),
                rgba(74,51,176,.35),
                rgba(6,182,212,.18)
            );
    }

    .video-card:hover {
        transform:
            translateY(-8px)
            scale(1.015);

        box-shadow:
            0 30px 65px rgba(39,30,91,.23);
    }

    .play-button {
        position: absolute;

        z-index: 2;

        width: 62px;
        height: 62px;

        left: 50%;
        top: 50%;

        transform:
            translate(-50%,-50%)
            translateZ(35px);

        border-radius: 50%;

        background: white;

        color: #654bdd;

        display: flex;

        align-items: center;
        justify-content: center;

        font-size: 21px;

        box-shadow:
            0 12px 30px rgba(0,0,0,.28);

        transition:
            transform .35s ease,
            box-shadow .35s ease;
    }

    .video-card:hover .play-button {
        transform:
            translate(-50%,-50%)
            translateZ(55px)
            scale(1.08);

        box-shadow:
            0 18px 38px rgba(0,0,0,.34);
    }

    .video-label {
        position: absolute;

        z-index: 2;

        bottom: 20px;
        left: 22px;

        color: white;

        font-size: 12px;
        font-weight: 600;
    }


    /* =========================================================
       SERVICE CARDS
       ========================================================= */

    .service-card {
        height: 100%;

        padding: 27px 22px;

        border-radius: 20px;

        background: #f8f8fc;

        border: 1px solid #eceaf5;

        transition:
            transform .35s ease,
            box-shadow .35s ease,
            background .35s ease;

        position: relative;

        overflow: hidden;

        transform-style: preserve-3d;
    }

    .service-card::before {
        content: "";

        position: absolute;

        width: 110px;
        height: 110px;

        border-radius: 50%;

        background:
            rgba(119,91,245,.08);

        right: -50px;
        top: -50px;

        transition: .4s ease;
    }

    .service-card:hover {
        transform:
            translateY(-9px)
            rotateX(2deg)
            rotateY(-2deg);

        background: white;

        box-shadow:
            0 25px 50px rgba(43,31,101,.14);

        border-color: #ddd8fa;
    }

    .service-card:hover::before {
        width: 150px;
        height: 150px;

        background:
            rgba(6,182,212,.08);
    }

    .service-icon {
        width: 55px;
        height: 55px;

        border-radius: 16px;

        display: flex;

        align-items: center;
        justify-content: center;

        background:
            linear-gradient(
                145deg,
                #7d61ff,
                #4e37bf
            );

        color: white;

        font-size: 20px;

        margin-bottom: 19px;

        box-shadow:
            0 12px 25px rgba(88,65,207,.24);

        transform: translateZ(25px);

        transition: .35s ease;
    }

    .service-card:hover .service-icon {
        transform:
            translateZ(40px)
            rotate(-5deg)
            scale(1.07);
    }

    .service-card:nth-child(2) .service-icon {
        background:
            linear-gradient(
                145deg,
                #38c9ff,
                #2778e6
            );
    }

    .service-card:nth-child(3) .service-icon {
        background:
            linear-gradient(
                145deg,
                #ff8dcb,
                #d84d9b
            );
    }

    .service-card:nth-child(4) .service-icon {
        background:
            linear-gradient(
                145deg,
                #48d59c,
                #179e70
            );
    }

    .service-card h3 {
        color: #292541;

        font-size: 16px;
        font-weight: 700;

        margin-bottom: 10px;

        transform: translateZ(15px);
    }

    .service-card p {
        color: #858196;

        font-size: 12px;

        line-height: 1.7;

        margin: 0;
    }


    /* =========================================================
       RESPONSIVE
       ========================================================= */

    @media (max-width: 991px) {

        .hero-content h1 {
            font-size: 45px;
        }

        .about-content {
            padding: 55px 15px 20px;
        }

        .about-image-wrap {
            min-height: 450px;

            max-width: 600px;

            margin: auto;
        }

        .learning-content {
            padding-right: 15px;

            margin-bottom: 50px;
        }

        .service-card {
            margin-bottom: 20px;
        }

    }


    @media (max-width: 575px) {

        .hero-content {
            padding: 60px 15px;
        }

        .hero-content h1 {
            font-size: 35px;
        }

        .hero-content p {
            font-size: 13px;
        }

        .about-intro-section,
        .testimonial-section,
        .learning-section {
            padding: 70px 0;
        }

        .about-image-wrap {
            min-height: 390px;
        }

        .about-image-main {
            width: 82%;
            height: 310px;
        }

        .about-image-second {
            width: 58%;
            height: 210px;
        }

        .about-content h2,
        .learning-content h2 {
            font-size: 29px;
        }

        .section-heading h2 {
            font-size: 30px;
        }

        .cta-content h2 {
            font-size: 27px;
        }

        .stat-card {
            margin-bottom: 15px;
        }

        .testimonial-card {
            margin: 8px 0 20px;
        }

    }


    /* =========================================================
       ACCESSIBILITY / PERFORMANCE
       ========================================================= */

    @media (prefers-reduced-motion: reduce) {

        .about-premium *,
        .about-premium *::before,
        .about-premium *::after {
            animation: none !important;
            transition: none !important;
        }

    }

</style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="about-premium">


    <!-- =====================================================
         HERO
         ===================================================== -->

    <section class="about-hero">

        <div class="container">

            <div class="hero-content">

                <div class="hero-mini">
                    LEARNSPHERE • ONLINE LEARNING
                </div>

                <h1>
                    About
                    <span class="hero-gradient">
                        LearnSphere
                    </span>
                </h1>

                <p>
                    Discover a smarter way to learn, grow your skills
                    and build your future with LearnSphere.
                </p>

                <div class="hero-breadcrumb">

                    <a href="index.aspx">
                        Home
                    </a>

                    <span>
                        &nbsp; / &nbsp; About Us
                    </span>

                </div>

            </div>

        </div>

    </section>


    <!-- =====================================================
         ABOUT INTRO
         ===================================================== -->

    <section class="about-intro-section">

        <div class="container">

            <div class="row align-items-center">


                <!-- IMAGE AREA -->

                <div class="col-lg-6">

                    <div class="about-image-wrap">

                        <div
                            class="about-image-main"
                            style="background-image:url('images/about-1.jpg');">
                        </div>

                        <div
                            class="about-image-second"
                            style="background-image:url('images/about.jpg');">
                        </div>

                        <div class="image-badge">

                            <strong>
                                Learn. Grow.
                            </strong>

                            <span>
                                Build your future with knowledge.
                            </span>

                        </div>

                    </div>

                </div>


                <!-- CONTENT -->

                <div class="col-lg-6">

                    <div class="about-content">

                        <span class="section-tag">
                            Enhanced Your Skills
                        </span>

                        <h2>
                            Learn Anything You Want
                            <span>Today</span>
                        </h2>

                        <p>
                            LearnSphere is an online learning platform
                            designed to make quality education simple,
                            accessible and engaging for every learner.
                        </p>

                        <p>
                            Explore courses, improve your skills,
                            practice through quizzes and continue
                            your learning journey from anywhere.
                        </p>

                        <p>
                            Our goal is to create a modern learning
                            environment where students can learn at
                            their own pace and achieve their goals.
                        </p>

                        <a href="login.aspx" class="about-btn">

                            Start Learning

                            <i class="fa fa-arrow-right ml-2"></i>

                        </a>

                    </div>

                </div>

            </div>

        </div>

    </section>


    <!-- =====================================================
         STATS
         ===================================================== -->

    <section class="stats-section">

        <div class="container">

            <div class="row">


                <div class="col-lg-3 col-md-6">

                    <div class="stat-card">

                        <div class="stat-icon">
                            <i class="fa fa-book"></i>
                        </div>

                        <strong class="stat-number">
                            400+
                        </strong>

                        <span class="stat-title">
                            Online Courses
                        </span>

                    </div>

                </div>


                <div class="col-lg-3 col-md-6">

                    <div class="stat-card">

                        <div class="stat-icon">
                            <i class="fa fa-users"></i>
                        </div>

                        <strong class="stat-number">
                            4500+
                        </strong>

                        <span class="stat-title">
                            Students Enrolled
                        </span>

                    </div>

                </div>


                <div class="col-lg-3 col-md-6">

                    <div class="stat-card">

                        <div class="stat-icon">
                            <i class="fa fa-user"></i>
                        </div>

                        <strong class="stat-number">
                            1200+
                        </strong>

                        <span class="stat-title">
                            Expert Instructors
                        </span>

                    </div>

                </div>


                <div class="col-lg-3 col-md-6">

                    <div class="stat-card">

                        <div class="stat-icon">
                            <i class="fa fa-clock-o"></i>
                        </div>

                        <strong class="stat-number">
                            300+
                        </strong>

                        <span class="stat-title">
                            Hours of Content
                        </span>

                    </div>

                </div>


            </div>

        </div>

    </section>


    <!-- =====================================================
         TESTIMONIALS
         ===================================================== -->

    <section class="testimonial-section">

        <div class="container">

            <div class="section-heading">

                <span>
                    STUDENT STORIES
                </span>

                <h2>
                    What Our Students Say
                </h2>

                <p>
                    Hear from learners who are using LearnSphere
                    to improve their skills and achieve their goals.
                </p>

            </div>


            <div class="row">


                <!-- TESTIMONIAL 1 -->

                <div class="col-lg-4 col-md-6">

                    <div class="testimonial-card">

                        <i class="fa fa-quote-right quote-icon"></i>

                        <div class="stars">

                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>

                        </div>

                        <p>
                            LearnSphere makes learning simple and
                            enjoyable. The courses and practice
                            activities helped me improve my skills.
                        </p>

                        <div class="user-area">

                            <div
                                class="user-photo"
                                style="background-image:url('images/person_1.jpg');">
                            </div>

                            <div class="user-info">

                                <strong>
                                    Roger Scott
                                </strong>

                                <span>
                                    Marketing Manager
                                </span>

                            </div>

                        </div>

                    </div>

                </div>


                <!-- TESTIMONIAL 2 -->

                <div class="col-lg-4 col-md-6">

                    <div class="testimonial-card">

                        <i class="fa fa-quote-right quote-icon"></i>

                        <div class="stars">

                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>

                        </div>

                        <p>
                            The platform gives me a comfortable
                            learning experience. I can learn at my
                            own pace and track my progress.
                        </p>

                        <div class="user-area">

                            <div
                                class="user-photo"
                                style="background-image:url('images/person_2.jpg');">
                            </div>

                            <div class="user-info">

                                <strong>
                                    Sarah Wilson
                                </strong>

                                <span>
                                    Web Developer
                                </span>

                            </div>

                        </div>

                    </div>

                </div>


                <!-- TESTIMONIAL 3 -->

                <div class="col-lg-4 col-md-6">

                    <div class="testimonial-card">

                        <i class="fa fa-quote-right quote-icon"></i>

                        <div class="stars">

                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>

                        </div>

                        <p>
                            The courses are well organised and the
                            learning experience is very smooth.
                            LearnSphere is a great place to learn.
                        </p>

                        <div class="user-area">

                            <div
                                class="user-photo"
                                style="background-image:url('images/person_3.jpg');">
                            </div>

                            <div class="user-info">

                                <strong>
                                    Emily Brown
                                </strong>

                                <span>
                                    UI Designer
                                </span>

                            </div>

                        </div>

                    </div>

                </div>


            </div>

        </div>

    </section>


    <!-- =====================================================
         CTA
         ===================================================== -->

    <section class="cta-section">

        <div class="container">

            <div class="cta-card">

                <div class="cta-content">

                    <h2>
                        Start Your Learning Journey
                    </h2>

                    <p>
                        Learn new skills. Practice more. Achieve your goals.
                    </p>

                    <a href="login.aspx" class="cta-btn">

                        Enroll Now

                        <i class="fa fa-arrow-right ml-2"></i>

                    </a>

                </div>

            </div>

        </div>

    </section>


    <!-- =====================================================
         LEARNING SECTION
         ===================================================== -->

    <section class="learning-section">

        <div class="container">

            <div class="row">


                <!-- LEFT -->

                <div class="col-lg-6">

                    <div class="learning-content">

                        <span class="section-tag">
                            Welcome to LearnSphere
                        </span>

                        <h2>
                            A Smarter Way To
                            <span style="color:#7055e8;">
                                Learn Online
                            </span>
                        </h2>

                        <p>
                            LearnSphere brings courses, learning
                            resources and skill development together
                            in one modern online learning environment.
                        </p>

                        <p>
                            Whether you want to learn programming,
                            improve professional skills or explore
                            something new, LearnSphere helps you
                            move forward with confidence.
                        </p>


                        <div
                            class="video-card"
                            style="background-image:url('images/about.jpg');">

                            <a href="#"
                               class="play-button">

                                <i class="fa fa-play"></i>

                            </a>

                            <span class="video-label">
                                Discover LearnSphere
                            </span>

                        </div>

                    </div>

                </div>


                <!-- RIGHT -->

                <div class="col-lg-6">

                    <div class="row">


                        <!-- SERVICE 1 -->

                        <div class="col-md-6 mb-4">

                            <div class="service-card">

                                <div class="service-icon">

                                    <i class="fa fa-book"></i>

                                </div>

                                <h3>
                                    Top Quality Content
                                </h3>

                                <p>
                                    Learn from organised and
                                    easy-to-understand educational
                                    content.
                                </p>

                            </div>

                        </div>


                        <!-- SERVICE 2 -->

                        <div class="col-md-6 mb-4">

                            <div class="service-card">

                                <div class="service-icon">

                                    <i class="fa fa-user"></i>

                                </div>

                                <h3>
                                    Skilled Instructors
                                </h3>

                                <p>
                                    Learn with guidance from
                                    experienced instructors and
                                    professionals.
                                </p>

                            </div>

                        </div>


                        <!-- SERVICE 3 -->

                        <div class="col-md-6 mb-4">

                            <div class="service-card">

                                <div class="service-icon">

                                    <i class="fa fa-question-circle"></i>

                                </div>

                                <h3>
                                    Interactive Quizzes
                                </h3>

                                <p>
                                    Test your knowledge and improve
                                    your understanding through quizzes.
                                </p>

                            </div>

                        </div>


                        <!-- SERVICE 4 -->

                        <div class="col-md-6 mb-4">

                            <div class="service-card">

                                <div class="service-icon">

                                    <i class="fa fa-certificate"></i>

                                </div>

                                <h3>
                                    Get Certified
                                </h3>

                                <p>
                                    Complete your learning journey
                                    and showcase your achievements.
                                </p>

                            </div>

                        </div>


                    </div>

                </div>


            </div>

        </div>

    </section>


</div>

</asp:Content>