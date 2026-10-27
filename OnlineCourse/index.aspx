<%@ Page Title="" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="OnlineCourse.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>

    /* =========================================================
       LEARNSPHERE HOME PAGE
       Premium Purple + Cyan Glassmorphism Theme
       Master Page Safe - Fully Scoped
    ========================================================== */

    .home-page {
        --home-purple: #8b5cf6;
        --home-purple-light: #c4b5fd;
        --home-cyan: #22d3ee;
        --home-cyan-light: #67e8f9;
        --home-dark: #080a17;
        --home-dark-2: #0e1124;
        --home-card: rgba(24, 27, 52, .90);
        --home-text: #f8fafc;
        --home-muted: #a7aec5;

        width: 100%;
        overflow: hidden;

        color: var(--home-text);

        background:
            radial-gradient(
                circle at 10% 10%,
                rgba(139,92,246,.10),
                transparent 25%
            ),
            radial-gradient(
                circle at 90% 40%,
                rgba(34,211,238,.07),
                transparent 25%
            ),
            #080a17;
    }


    /* =========================================================
       COMMON
    ========================================================== */

    .home-page .home-container {
        width: 100%;
        max-width: 1180px;
        margin: auto;
        padding-left: 20px;
        padding-right: 20px;
    }

    .home-page .home-section {
        padding: 90px 0;
        background: #080a17;
    }

    .home-page .home-section-light {
        padding: 90px 0;
        background:
            linear-gradient(
                180deg,
                #0d1022,
                #10142a
            );
    }

    .home-page .home-heading {
        text-align: center;
        margin-bottom: 55px;
    }

    .home-page .home-heading .subheading {
        display: inline-block;

        margin-bottom: 12px;

        color: var(--home-cyan-light);

        font-size: 12px;
        font-weight: 800;

        letter-spacing: 2px;
        text-transform: uppercase;
    }

    .home-page .home-heading h2 {
        margin: 0;

        color: #ffffff;

        font-size: 38px;
        font-weight: 850;
        line-height: 1.2;
    }

    .home-page .home-heading p {
        max-width: 650px;

        margin: 15px auto 0;

        color: var(--home-muted);

        font-size: 15px;
        line-height: 1.8;
    }


    /* =========================================================
       BUTTONS
    ========================================================== */

    .home-page .home-btn {
        display: inline-flex;

        align-items: center;
        justify-content: center;

        min-height: 50px;

        padding: 13px 27px;

        border-radius: 50px;

        color: #ffffff !important;

        font-size: 14px;
        font-weight: 800;

        text-decoration: none !important;

        background:
            linear-gradient(
                100deg,
                #7c3aed,
                #8b5cf6,
                #06b6d4
            );

        border: 1px solid rgba(255,255,255,.10);

        box-shadow:
            0 12px 35px rgba(124,58,237,.28);

        transition: all .3s ease;
    }

    .home-page .home-btn:hover {
        color: #ffffff !important;
        transform: translateY(-3px);

        box-shadow:
            0 18px 45px rgba(139,92,246,.40);
    }

    .home-page .home-btn-outline {
        display: inline-flex;

        align-items: center;
        justify-content: center;

        min-height: 50px;

        padding: 13px 27px;

        border-radius: 50px;

        color: #ddd6fe !important;

        font-size: 14px;
        font-weight: 800;

        text-decoration: none !important;

        background: rgba(255,255,255,.04);

        border: 1px solid rgba(196,181,253,.35);

        transition: all .3s ease;
    }

    .home-page .home-btn-outline:hover {
        color: #ffffff !important;

        background: rgba(139,92,246,.16);

        border-color: rgba(139,92,246,.65);

        transform: translateY(-3px);
    }


    /* =========================================================
       HERO
    ========================================================== */

    .home-page .home-hero {
        position: relative;

        min-height: 680px;

        display: flex;
        align-items: center;

        background:
            linear-gradient(
                120deg,
                rgba(7,9,22,.94),
                rgba(48,27,81,.72),
                rgba(5,42,60,.60)
            ),
            url('images/bg_1.jpg');

        background-size: cover;
        background-position: center;

        overflow: hidden;
    }

    .home-page .home-hero::before {
        content: "";

        position: absolute;

        width: 480px;
        height: 480px;

        border-radius: 50%;

        background: rgba(139,92,246,.18);

        filter: blur(100px);

        top: -180px;
        left: -130px;
    }

    .home-page .home-hero::after {
        content: "";

        position: absolute;

        width: 400px;
        height: 400px;

        border-radius: 50%;

        background: rgba(34,211,238,.12);

        filter: blur(90px);

        right: -120px;
        bottom: -160px;
    }

    .home-page .hero-content {
        position: relative;

        z-index: 3;

        max-width: 780px;

        padding: 100px 0;
    }

    .home-page .hero-badge {
        display: inline-flex;

        align-items: center;
        gap: 8px;

        padding: 9px 18px;

        border-radius: 50px;

        color: #c4b5fd;

        background: rgba(139,92,246,.13);

        border: 1px solid rgba(139,92,246,.38);

        font-size: 12px;
        font-weight: 800;

        letter-spacing: 1.5px;
        text-transform: uppercase;

        box-shadow:
            0 0 25px rgba(139,92,246,.12);
    }

    .home-page .hero-content h1 {
        margin: 25px 0 18px;

        color: #ffffff;

        font-size: clamp(42px, 6vw, 72px);

        line-height: 1.05;

        font-weight: 850;

        letter-spacing: -1.5px;
    }

    .home-page .hero-content h1 span {
        background:
            linear-gradient(
                90deg,
                #c4b5fd,
                #67e8f9
            );

        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;

        background-clip: text;
    }

    .home-page .hero-description {
        max-width: 650px;

        color: #c1c7d9;

        font-size: 17px;

        line-height: 1.8;

        margin-bottom: 30px;
    }

    .home-page .hero-buttons {
        display: flex;

        flex-wrap: wrap;

        gap: 14px;
    }

    .home-page .hero-mini-info {
        display: flex;

        flex-wrap: wrap;

        gap: 25px;

        margin-top: 35px;
    }

    .home-page .hero-mini-item {
        color: #b7bed1;

        font-size: 13px;
    }

    .home-page .hero-mini-item strong {
        color: #ffffff;
        font-size: 15px;
    }


    /* =========================================================
       WHY CHOOSE
    ========================================================== */

    .home-page .why-section {
        padding: 70px 0;

        background:
            linear-gradient(
                180deg,
                #0a0c1a,
                #0e1021
            );
    }

    .home-page .why-card {
        position: relative;

        padding: 40px;

        border-radius: 28px;

        background:
            linear-gradient(
                145deg,
                rgba(29,32,59,.94),
                rgba(14,16,34,.96)
            );

        border: 1px solid rgba(139,92,246,.25);

        box-shadow:
            0 25px 65px rgba(0,0,0,.30);

        overflow: hidden;
    }

    .home-page .why-card::before {
        content: "";

        position: absolute;

        width: 200px;
        height: 200px;

        border-radius: 50%;

        background: rgba(139,92,246,.09);

        filter: blur(55px);

        top: -100px;
        right: -60px;
    }

    .home-page .why-title {
        position: relative;
        z-index: 2;

        color: #ffffff;

        font-size: 30px;

        font-weight: 800;

        margin-bottom: 28px;
    }

    .home-page .why-list {
        position: relative;
        z-index: 2;

        margin: 0;
        padding: 0;

        list-style: none;
    }

    .home-page .why-list li {
        display: flex;

        align-items: center;

        gap: 12px;

        padding: 10px 0;

        color: #c2c7d8;

        font-size: 14px;
    }

    .home-page .check-icon {
        width: 27px;
        height: 27px;

        flex-shrink: 0;

        display: flex;

        align-items: center;
        justify-content: center;

        border-radius: 9px;

        color: #67e8f9;

        background: rgba(34,211,238,.10);

        border: 1px solid rgba(34,211,238,.20);

        font-size: 12px;
    }


    /* =========================================================
       CATEGORY CARDS
    ========================================================== */

    .home-page .category-card {
        position: relative;

        display: flex;

        align-items: flex-end;
        justify-content: center;

        min-height: 210px;

        margin-bottom: 25px;

        padding: 20px;

        border-radius: 23px;

        overflow: hidden;

        text-decoration: none !important;

        background-size: cover;
        background-position: center;

        border: 1px solid rgba(255,255,255,.10);

        box-shadow:
            0 18px 40px rgba(0,0,0,.25);

        transition: all .35s ease;
    }

    .home-page .category-card::before {
        content: "";

        position: absolute;

        inset: 0;

        background:
            linear-gradient(
                180deg,
                rgba(7,9,20,.08),
                rgba(7,9,20,.88)
            );

        transition: all .35s ease;
    }

    .home-page .category-card:hover {
        transform: translateY(-8px);

        border-color:
            rgba(139,92,246,.55);

        box-shadow:
            0 25px 55px rgba(0,0,0,.38),
            0 0 30px rgba(139,92,246,.08);
    }

    .home-page .category-card:hover::before {
        background:
            linear-gradient(
                180deg,
                rgba(139,92,246,.12),
                rgba(7,9,20,.92)
            );
    }

    .home-page .category-content {
        position: relative;

        z-index: 2;

        width: 100%;

        text-align: center;
    }

    .home-page .category-content h3 {
        margin: 0 0 7px;

        color: #ffffff;

        font-size: 18px;

        font-weight: 800;
    }

    .home-page .category-content span {
        color: #b9c0d4;

        font-size: 12px;
    }


    /* =========================================================
       COURSE CARDS
    ========================================================== */

    .home-page .course-card {
        height: 100%;

        margin-bottom: 30px;

        border-radius: 24px;

        background:
            linear-gradient(
                145deg,
                rgba(27,30,55,.96),
                rgba(13,15,32,.98)
            );

        border: 1px solid rgba(139,92,246,.18);

        overflow: hidden;

        box-shadow:
            0 20px 45px rgba(0,0,0,.25);

        transition: all .35s ease;
    }

    .home-page .course-card:hover {
        transform: translateY(-8px);

        border-color:
            rgba(139,92,246,.50);

        box-shadow:
            0 28px 60px rgba(0,0,0,.38),
            0 0 30px rgba(139,92,246,.08);
    }

    .home-page .course-image {
        position: relative;

        height: 220px;

        background-size: cover;
        background-position: center;
    }

    .home-page .course-image::after {
        content: "";

        position: absolute;

        inset: 0;

        background:
            linear-gradient(
                180deg,
                transparent 40%,
                rgba(6,8,20,.78)
            );
    }

    .home-page .course-price {
        position: absolute;

        z-index: 2;

        top: 17px;
        right: 17px;

        padding: 7px 13px;

        border-radius: 50px;

        color: #ffffff;

        background:
            linear-gradient(
                100deg,
                #7c3aed,
                #06b6d4
            );

        font-size: 11px;
        font-weight: 800;
    }

    .home-page .course-body {
        padding: 25px;
    }

    .home-page .course-body h3 {
        margin: 0 0 13px;
    }

    .home-page .course-body h3 a {
        color: #ffffff !important;

        font-size: 19px;

        font-weight: 750;

        line-height: 1.4;

        text-decoration: none !important;
    }

    .home-page .course-body h3 a:hover {
        color: #c4b5fd !important;
    }

    .home-page .advisor {
        margin-bottom: 18px;

        color: #8991aa;

        font-size: 12px;
    }

    .home-page .advisor span {
        color: #c4b5fd;
        font-weight: 700;
    }

    .home-page .course-meta {
        display: flex;

        align-items: center;
        justify-content: space-between;

        padding-top: 16px;

        border-top:
            1px solid rgba(255,255,255,.07);

        color: #8e96ad;

        font-size: 12px;
    }

    .home-page .course-meta .price {
        color: #67e8f9;

        font-size: 18px;

        font-weight: 800;
    }


    /* =========================================================
       COUNTER
    ========================================================== */

    .home-page .counter-section {
        position: relative;

        padding: 85px 0;

        background:
            linear-gradient(
                120deg,
                rgba(31,15,58,.94),
                rgba(7,42,58,.90)
            ),
            url('images/bg_4.jpg');

        background-size: cover;
        background-position: center;
    }

    .home-page .counter-section::before {
        content: "";

        position: absolute;

        inset: 0;

        background:
            radial-gradient(
                circle at 20% 50%,
                rgba(139,92,246,.16),
                transparent 25%
            ),
            radial-gradient(
                circle at 80% 50%,
                rgba(34,211,238,.12),
                transparent 25%
            );
    }

    .home-page .stat-card {
        position: relative;
        z-index: 2;

        height: 100%;

        padding: 28px 18px;

        text-align: center;

        border-radius: 22px;

        background: rgba(255,255,255,.055);

        border: 1px solid rgba(255,255,255,.12);

        backdrop-filter: blur(14px);

        transition: all .3s ease;
    }

    .home-page .stat-card:hover {
        transform: translateY(-6px);

        border-color:
            rgba(139,92,246,.45);

        background:
            rgba(139,92,246,.10);
    }

    .home-page .stat-icon {
        width: 55px;
        height: 55px;

        margin: 0 auto 15px;

        display: flex;

        align-items: center;
        justify-content: center;

        border-radius: 17px;

        color: #c4b5fd;

        background: rgba(139,92,246,.13);

        border: 1px solid rgba(139,92,246,.25);

        font-size: 22px;
    }

    .home-page .stat-number {
        display: block;

        color: #ffffff;

        font-size: 34px;

        font-weight: 850;

        line-height: 1.1;
    }

    .home-page .stat-label {
        display: block;

        margin-top: 7px;

        color: #b4bbcf;

        font-size: 12px;
    }


    /* =========================================================
       ABOUT
    ========================================================== */

    .home-page .about-section {
        padding: 95px 0;

        background: #080a17;
    }

    .home-page .about-images {
        display: grid;

        grid-template-columns: 1fr 1fr;

        gap: 16px;

        min-height: 470px;
    }

    .home-page .about-img {
        min-height: 300px;

        border-radius: 25px;

        background-size: cover;
        background-position: center;

        border: 1px solid rgba(139,92,246,.22);

        box-shadow:
            0 20px 45px rgba(0,0,0,.30);
    }

    .home-page .about-img-small {
        margin-top: 60px;
    }

    .home-page .about-content {
        padding-left: 35px;
    }

    .home-page .about-content .subheading {
        color: var(--home-cyan-light);

        font-size: 12px;
        font-weight: 800;

        letter-spacing: 2px;
        text-transform: uppercase;
    }

    .home-page .about-content h2 {
        margin: 14px 0 20px;

        color: #ffffff;

        font-size: 38px;

        font-weight: 850;

        line-height: 1.2;
    }

    .home-page .about-content p {
        color: #9fa6bc;

        font-size: 14px;

        line-height: 1.9;

        margin-bottom: 18px;
    }


    /* =========================================================
       TESTIMONIALS
    ========================================================== */

    .home-page .testimonial-section {
        padding: 90px 0;

        background:
            linear-gradient(
                180deg,
                #101329,
                #090b18
            );
    }

    .home-page .testimonial-card {
        height: 100%;

        padding: 30px;

        border-radius: 23px;

        background:
            linear-gradient(
                145deg,
                rgba(29,32,59,.94),
                rgba(14,16,34,.96)
            );

        border: 1px solid rgba(139,92,246,.18);

        box-shadow:
            0 18px 45px rgba(0,0,0,.25);

        transition: all .3s ease;
    }

    .home-page .testimonial-card:hover {
        transform: translateY(-6px);

        border-color:
            rgba(139,92,246,.45);
    }

    .home-page .stars {
        color: #fbbf24;

        font-size: 14px;

        letter-spacing: 2px;

        margin-bottom: 18px;
    }

    .home-page .testimonial-card > p {
        color: #aab1c6;

        font-size: 14px;

        line-height: 1.8;

        margin-bottom: 25px;
    }

    .home-page .student-profile {
        display: flex;

        align-items: center;

        gap: 13px;
    }

    .home-page .student-img {
        width: 50px;
        height: 50px;

        flex-shrink: 0;

        border-radius: 16px;

        background-size: cover;
        background-position: center;

        border: 2px solid rgba(139,92,246,.35);
    }

    .home-page .student-name {
        margin: 0;

        color: #ffffff;

        font-size: 14px;

        font-weight: 800;
    }

    .home-page .student-position {
        color: #7f879f;

        font-size: 11px;
    }


    /* =========================================================
       CTA
    ========================================================== */

    .home-page .cta-section {
        padding: 80px 0;
    }

    .home-page .cta-card {
        position: relative;

        padding: 65px 30px;

        text-align: center;

        border-radius: 30px;

        overflow: hidden;

        background:
            linear-gradient(
                135deg,
                rgba(76,29,149,.42),
                rgba(8,47,73,.38)
            );

        border: 1px solid rgba(139,92,246,.30);

        box-shadow:
            0 25px 70px rgba(0,0,0,.30);
    }

    .home-page .cta-card::before {
        content: "";

        position: absolute;

        width: 300px;
        height: 300px;

        border-radius: 50%;

        background: rgba(139,92,246,.12);

        filter: blur(70px);

        top: -180px;
        left: -100px;
    }

    .home-page .cta-card h2 {
        position: relative;
        z-index: 2;

        color: #ffffff;

        font-size: 35px;

        font-weight: 850;

        margin-bottom: 13px;
    }

    .home-page .cta-card p {
        position: relative;
        z-index: 2;

        color: #b1b8cc;

        margin-bottom: 25px;
    }


    /* =========================================================
       SERVICES
    ========================================================== */

    .home-page .services-section {
        padding: 90px 0;

        background:
            linear-gradient(
                180deg,
                #0b0d1c,
                #0f1226
            );
    }

    .home-page .services-intro {
        padding-right: 35px;
    }

    .home-page .services-intro .subheading {
        color: var(--home-cyan-light);

        font-size: 12px;
        font-weight: 800;

        letter-spacing: 2px;
        text-transform: uppercase;
    }

    .home-page .services-intro h2 {
        margin: 14px 0 20px;

        color: #ffffff;

        font-size: 36px;

        font-weight: 850;
    }

    .home-page .services-intro p {
        color: #9ea5bb;

        line-height: 1.8;

        font-size: 14px;
    }

    .home-page .video-area {
        display: flex;

        align-items: center;

        gap: 15px;

        margin-top: 25px;
    }

    .home-page .video-btn {
        width: 65px;
        height: 65px;

        flex-shrink: 0;

        display: flex;

        align-items: center;
        justify-content: center;

        border-radius: 20px;

        background-size: cover;
        background-position: center;

        color: #ffffff !important;

        font-size: 24px;

        text-decoration: none !important;

        border: 1px solid rgba(139,92,246,.35);

        box-shadow:
            0 12px 30px rgba(0,0,0,.30);
    }

    .home-page .video-area h4 {
        color: #c4c9d8;

        font-size: 13px;

        line-height: 1.6;

        margin: 0;
    }

    .home-page .service-card {
        height: 100%;

        padding: 28px 23px;

        margin-bottom: 22px;

        border-radius: 21px;

        background:
            rgba(255,255,255,.035);

        border: 1px solid rgba(139,92,246,.16);

        transition: all .3s ease;
    }

    .home-page .service-card:hover {
        transform: translateY(-5px);

        border-color:
            rgba(139,92,246,.45);

        background:
            rgba(139,92,246,.07);
    }

    .home-page .service-icon {
        width: 55px;
        height: 55px;

        margin-bottom: 17px;

        display: flex;

        align-items: center;
        justify-content: center;

        border-radius: 17px;

        color: #c4b5fd;

        background: rgba(139,92,246,.12);

        border: 1px solid rgba(139,92,246,.24);

        font-size: 21px;
    }

    .home-page .service-card h3 {
        color: #ffffff;

        font-size: 16px;

        font-weight: 750;

        margin-bottom: 9px;
    }

    .home-page .service-card p {
        color: #8991aa;

        font-size: 12px;

        line-height: 1.7;

        margin: 0;
    }


    /* =========================================================
       BLOG
    ========================================================== */

    .home-page .blog-section {
        padding: 90px 0;

        background: #080a17;
    }

    .home-page .blog-card {
        height: 100%;

        overflow: hidden;

        border-radius: 23px;

        background:
            linear-gradient(
                145deg,
                rgba(27,30,55,.95),
                rgba(13,15,32,.98)
            );

        border: 1px solid rgba(139,92,246,.17);

        box-shadow:
            0 18px 42px rgba(0,0,0,.25);

        transition: all .3s ease;
    }

    .home-page .blog-card:hover {
        transform: translateY(-7px);

        border-color:
            rgba(139,92,246,.45);
    }

    .home-page .blog-image {
        display: block;

        height: 220px;

        background-size: cover;
        background-position: center;

        text-decoration: none !important;
    }

    .home-page .blog-body {
        padding: 25px;
    }

    .home-page .blog-meta {
        color: #7f879f;

        font-size: 10px;

        margin-bottom: 13px;
    }

    .home-page .blog-meta span {
        margin-right: 5px;
    }

    .home-page .blog-body h3 {
        margin-bottom: 13px;
    }

    .home-page .blog-body h3 a {
        color: #ffffff !important;

        font-size: 18px;

        font-weight: 750;

        line-height: 1.4;

        text-decoration: none !important;
    }

    .home-page .blog-body h3 a:hover {
        color: #c4b5fd !important;
    }

    .home-page .blog-body p {
        color: #9299b0;

        font-size: 13px;

        line-height: 1.7;
    }


    /* =========================================================
       RESPONSIVE
    ========================================================== */

    @media (max-width: 991px) {

        .home-page .hero-content {
            max-width: 680px;
        }

        .home-page .about-content {
            padding-left: 0;

            margin-top: 40px;
        }

        .home-page .services-intro {
            padding-right: 0;

            margin-bottom: 45px;
        }

    }


    @media (max-width: 767px) {

        .home-page .home-section,
        .home-page .home-section-light,
        .home-page .about-section,
        .home-page .testimonial-section,
        .home-page .services-section,
        .home-page .blog-section {
            padding: 60px 0;
        }

        .home-page .home-hero {
            min-height: 600px;
        }

        .home-page .hero-content {
            padding: 75px 0;
        }

        .home-page .hero-content h1 {
            font-size: 42px;

            letter-spacing: -1px;
        }

        .home-page .hero-description {
            font-size: 15px;
        }

        .home-page .hero-buttons {
            flex-direction: column;

            align-items: flex-start;
        }

        .home-page .home-btn,
        .home-page .home-btn-outline {
            width: 100%;

            max-width: 230px;
        }

        .home-page .home-heading h2 {
            font-size: 29px;
        }

        .home-page .why-card {
            padding: 28px 22px;
        }

        .home-page .about-images {
            min-height: 390px;

            gap: 10px;
        }

        .home-page .about-img {
            min-height: 260px;
        }

        .home-page .about-img-small {
            margin-top: 35px;
        }

        .home-page .about-content h2 {
            font-size: 30px;
        }

        .home-page .cta-card {
            padding: 45px 22px;
        }

        .home-page .cta-card h2 {
            font-size: 28px;
        }

    }

</style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="home-page">


    <!-- =====================================================
         HERO
    ====================================================== -->

    <section class="home-hero">

        <div class="home-container">

            <div class="hero-content">

                <span class="hero-badge">
                    ✦ Welcome to LearnSphere
                </span>

                <h1>
                    Learn Today.<br />
                    <span>Build Your Future.</span>
                </h1>

                <p class="hero-description">
                    Learn anytime, anywhere with expert instructors,
                    practical courses, interactive learning and
                    career-focused skills.
                </p>

                <div class="hero-buttons">

                    <a href="course.aspx" class="home-btn">
                        Explore Courses
                    </a>

                    <a href="about.aspx" class="home-btn-outline">
                        Learn More
                    </a>

                </div>

                <div class="hero-mini-info">

                    <div class="hero-mini-item">
                        <strong>400+</strong><br />
                        Online Courses
                    </div>

                    <div class="hero-mini-item">
                        <strong>4500+</strong><br />
                        Students
                    </div>

                    <div class="hero-mini-item">
                        <strong>1200+</strong><br />
                        Expert Instructors
                    </div>

                </div>

            </div>

        </div>

    </section>


    <!-- =====================================================
         WHY CHOOSE LEARNSPHERE
    ====================================================== -->

    <section class="why-section">

        <div class="home-container">

            <div class="row">

                <div class="col-lg-7 mb-4 mb-lg-0">

                    <div class="why-card">

                        <h2 class="why-title">
                            Why Choose LearnSphere?
                        </h2>

                        <ul class="why-list">

                            <li>
                                <span class="check-icon">✓</span>
                                Learn Anytime, Anywhere
                            </li>

                            <li>
                                <span class="check-icon">✓</span>
                                Expert Instructors
                            </li>

                            <li>
                                <span class="check-icon">✓</span>
                                HD Video Lessons
                            </li>

                            <li>
                                <span class="check-icon">✓</span>
                                Course Completion Certificate
                            </li>

                            <li>
                                <span class="check-icon">✓</span>
                                Track Your Learning Progress
                            </li>

                            <li>
                                <span class="check-icon">✓</span>
                                Lifetime Access
                            </li>

                        </ul>

                    </div>

                </div>

                <div class="col-lg-5">

                    <div class="why-card">

                        <span class="hero-badge">
                            Start Learning
                        </span>

                        <h2 class="why-title mt-3">
                            Upgrade Your Skills
                        </h2>

                        <p style="color:#a7aec5;line-height:1.8;font-size:14px;">
                            Explore quality courses, learn from experts
                            and build practical skills that help you
                            move forward in your career.
                        </p>

                        <a href="course.aspx" class="home-btn">
                            Explore Courses
                        </a>

                    </div>

                </div>

            </div>

        </div>

    </section>


    <!-- =====================================================
         CATEGORIES
    ====================================================== -->

    <section class="home-section">

        <div class="home-container">

            <div class="home-heading">

                <span class="subheading">
                    Start Learning Today
                </span>

                <h2>
                    Browse Online Course Categories
                </h2>

                <p>
                    Discover courses across multiple learning categories
                    and start building new skills.
                </p>

            </div>


            <div class="row">


                <div class="col-md-3 col-6">
                    <a href="#" class="category-card"
                       style="background-image:url('images/work-1.jpg');">

                        <div class="category-content">
                            <h3>IT &amp; Software</h3>
                            <span>100 Courses</span>
                        </div>

                    </a>
                </div>


                <div class="col-md-3 col-6">
                    <a href="#" class="category-card"
                       style="background-image:url('images/work-9.jpg');">

                        <div class="category-content">
                            <h3>Music</h3>
                            <span>100 Courses</span>
                        </div>

                    </a>
                </div>


                <div class="col-md-3 col-6">
                    <a href="#" class="category-card"
                       style="background-image:url('images/work-3.jpg');">

                        <div class="category-content">
                            <h3>Photography</h3>
                            <span>100 Courses</span>
                        </div>

                    </a>
                </div>


                <div class="col-md-3 col-6">
                    <a href="#" class="category-card"
                       style="background-image:url('images/work-5.jpg');">

                        <div class="category-content">
                            <h3>Marketing</h3>
                            <span>100 Courses</span>
                        </div>

                    </a>
                </div>


                <div class="col-md-3 col-6">
                    <a href="#" class="category-card"
                       style="background-image:url('images/work-8.jpg');">

                        <div class="category-content">
                            <h3>Health</h3>
                            <span>100 Courses</span>
                        </div>

                    </a>
                </div>


                <div class="col-md-3 col-6">
                    <a href="#" class="category-card"
                       style="background-image:url('images/work-6.jpg');">

                        <div class="category-content">
                            <h3>Audio Video</h3>
                            <span>100 Courses</span>
                        </div>

                    </a>
                </div>


            </div>


            <div class="text-center mt-4">

                <a href="course.aspx" class="home-btn">
                    See All Courses
                </a>

            </div>

        </div>

    </section>


    <!-- =====================================================
         COURSES
    ====================================================== -->

    <section class="home-section-light">

        <div class="home-container">

            <div class="home-heading">

                <span class="subheading">
                    Start Learning Today
                </span>

                <h2>
                    Pick Your Course
                </h2>

                <p>
                    Choose a course and start learning practical
                    skills with LearnSphere.
                </p>

            </div>


            <div class="row">


                <!-- COURSE 1 -->

                <div class="col-lg-4 col-md-6">

                    <div class="course-card">

                        <a href="#" class="course-image"
                           style="display:block;background-image:url('images/work-1.jpg');">

                            <span class="course-price">
                                Software
                            </span>

                        </a>

                        <div class="course-body">

                            <h3>
                                <a href="#">
                                    Design for the web with adobe photoshop
                                </a>
                            </h3>

                            <p class="advisor">
                                Advisor
                                <span>Tony Garret</span>
                            </p>

                            <div class="course-meta">
                                <span>
                                    <i class="fa fa-users"></i>
                                    2300 Students
                                </span>

                                <span class="price">
                                    $199
                                </span>
                            </div>

                        </div>

                    </div>

                </div>


                <!-- COURSE 2 -->

                <div class="col-lg-4 col-md-6">

                    <div class="course-card">

                        <a href="#" class="course-image"
                           style="display:block;background-image:url('images/work-2.jpg');">

                            <span class="course-price">
                                Software
                            </span>

                        </a>

                        <div class="course-body">

                            <h3>
                                <a href="#">
                                    Design for the web with adobe photoshop
                                </a>
                            </h3>

                            <p class="advisor">
                                Advisor
                                <span>Tony Garret</span>
                            </p>

                            <div class="course-meta">
                                <span>
                                    <i class="fa fa-users"></i>
                                    2300 Students
                                </span>

                                <span class="price">
                                    $199
                                </span>
                            </div>

                        </div>

                    </div>

                </div>


                <!-- COURSE 3 -->

                <div class="col-lg-4 col-md-6">

                    <div class="course-card">

                        <a href="#" class="course-image"
                           style="display:block;background-image:url('images/work-3.jpg');">

                            <span class="course-price">
                                Software
                            </span>

                        </a>

                        <div class="course-body">

                            <h3>
                                <a href="#">
                                    Design for the web with adobe photoshop
                                </a>
                            </h3>

                            <p class="advisor">
                                Advisor
                                <span>Tony Garret</span>
                            </p>

                            <div class="course-meta">
                                <span>
                                    <i class="fa fa-users"></i>
                                    2300 Students
                                </span>

                                <span class="price">
                                    $199
                                </span>
                            </div>

                        </div>

                    </div>

                </div>


                <!-- COURSE 4 -->

                <div class="col-lg-4 col-md-6">

                    <div class="course-card">

                        <a href="#" class="course-image"
                           style="display:block;background-image:url('images/work-4.jpg');">

                            <span class="course-price">
                                Software
                            </span>

                        </a>

                        <div class="course-body">

                            <h3>
                                <a href="#">
                                    Design for the web with adobe photoshop
                                </a>
                            </h3>

                            <p class="advisor">
                                Advisor
                                <span>Tony Garret</span>
                            </p>

                            <div class="course-meta">
                                <span>
                                    <i class="fa fa-users"></i>
                                    2300 Students
                                </span>

                                <span class="price">
                                    $199
                                </span>
                            </div>

                        </div>

                    </div>

                </div>


                <!-- COURSE 5 -->

                <div class="col-lg-4 col-md-6">

                    <div class="course-card">

                        <a href="#" class="course-image"
                           style="display:block;background-image:url('images/work-5.jpg');">

                            <span class="course-price">
                                Software
                            </span>

                        </a>

                        <div class="course-body">

                            <h3>
                                <a href="#">
                                    Design for the web with adobe photoshop
                                </a>
                            </h3>

                            <p class="advisor">
                                Advisor
                                <span>Tony Garret</span>
                            </p>

                            <div class="course-meta">
                                <span>
                                    <i class="fa fa-users"></i>
                                    2300 Students
                                </span>

                                <span class="price">
                                    $199
                                </span>
                            </div>

                        </div>

                    </div>

                </div>


                <!-- COURSE 6 -->

                <div class="col-lg-4 col-md-6">

                    <div class="course-card">

                        <a href="#" class="course-image"
                           style="display:block;background-image:url('images/work-6.jpg');">

                            <span class="course-price">
                                Software
                            </span>

                        </a>

                        <div class="course-body">

                            <h3>
                                <a href="#">
                                    Design for the web with adobe photoshop
                                </a>
                            </h3>

                            <p class="advisor">
                                Advisor
                                <span>Tony Garret</span>
                            </p>

                            <div class="course-meta">
                                <span>
                                    <i class="fa fa-users"></i>
                                    2300 Students
                                </span>

                                <span class="price">
                                    $199
                                </span>
                            </div>

                        </div>

                    </div>

                </div>


            </div>

        </div>

    </section>


    <!-- =====================================================
         COUNTERS
    ====================================================== -->

    <section class="counter-section">

        <div class="home-container">

            <div class="row">


                <div class="col-lg-3 col-6 mb-4 mb-lg-0">

                    <div class="stat-card">

                        <div class="stat-icon">
                            <i class="fa fa-book"></i>
                        </div>

                        <strong class="stat-number">
                            400+
                        </strong>

                        <span class="stat-label">
                            Online Courses
                        </span>

                    </div>

                </div>


                <div class="col-lg-3 col-6 mb-4 mb-lg-0">

                    <div class="stat-card">

                        <div class="stat-icon">
                            <i class="fa fa-graduation-cap"></i>
                        </div>

                        <strong class="stat-number">
                            4500+
                        </strong>

                        <span class="stat-label">
                            Students Enrolled
                        </span>

                    </div>

                </div>


                <div class="col-lg-3 col-6">

                    <div class="stat-card">

                        <div class="stat-icon">
                            <i class="fa fa-user"></i>
                        </div>

                        <strong class="stat-number">
                            1200+
                        </strong>

                        <span class="stat-label">
                            Expert Instructors
                        </span>

                    </div>

                </div>


                <div class="col-lg-3 col-6">

                    <div class="stat-card">

                        <div class="stat-icon">
                            <i class="fa fa-clock-o"></i>
                        </div>

                        <strong class="stat-number">
                            300+
                        </strong>

                        <span class="stat-label">
                            Hours Content
                        </span>

                    </div>

                </div>


            </div>

        </div>

    </section>


    <!-- =====================================================
         ABOUT
    ====================================================== -->

    <section class="about-section">

        <div class="home-container">

            <div class="row align-items-center">

                <div class="col-lg-6">

                    <div class="about-images">

                        <div class="about-img"
                             style="background-image:url('images/about-1.jpg');">
                        </div>

                        <div class="about-img about-img-small"
                             style="background-image:url('images/about.jpg');">
                        </div>

                    </div>

                </div>


                <div class="col-lg-6">

                    <div class="about-content">

                        <span class="subheading">
                            Enhanced Your Skills
                        </span>

                        <h2>
                            Learn Anything You Want Today
                        </h2>

                        <p>
                            Far far away, behind the word mountains,
                            far from the countries Vokalia and Consonantia,
                            there live the blind texts.
                        </p>

                        <p>
                            Separated they live in Bookmarksgrove right at
                            the coast of the Semantics, a large language ocean.
                            A small river named Duden flows by their place
                            and supplies it with the necessary regelialia.
                        </p>

                        <a href="#" class="home-btn">
                            Get in Touch With Us
                        </a>

                    </div>

                </div>

            </div>

        </div>

    </section>


    <!-- =====================================================
         TESTIMONIALS
    ====================================================== -->

    <section class="testimonial-section">

        <div class="home-container">

            <div class="home-heading">

                <span class="subheading">
                    Student Experiences
                </span>

                <h2>
                    What Our Students Say
                </h2>

                <p>
                    Hear what learners think about their experience
                    with LearnSphere.
                </p>

            </div>


            <div class="row">


                <!-- TESTIMONIAL 1 -->

                <div class="col-lg-4 col-md-6 mb-4">

                    <div class="testimonial-card">

                        <div class="stars">
                            ★★★★★
                        </div>

                        <p>
                            Far far away, behind the word mountains,
                            far from the countries Vokalia and Consonantia,
                            there live the blind texts.
                        </p>

                        <div class="student-profile">

                            <div class="student-img"
                                 style="background-image:url('images/person_1.jpg');">
                            </div>

                            <div>
                                <p class="student-name">
                                    Roger Scott
                                </p>

                                <span class="student-position">
                                    Marketing Manager
                                </span>
                            </div>

                        </div>

                    </div>

                </div>


                <!-- TESTIMONIAL 2 -->

                <div class="col-lg-4 col-md-6 mb-4">

                    <div class="testimonial-card">

                        <div class="stars">
                            ★★★★★
                        </div>

                        <p>
                            Far far away, behind the word mountains,
                            far from the countries Vokalia and Consonantia,
                            there live the blind texts.
                        </p>

                        <div class="student-profile">

                            <div class="student-img"
                                 style="background-image:url('images/person_2.jpg');">
                            </div>

                            <div>
                                <p class="student-name">
                                    Roger Scott
                                </p>

                                <span class="student-position">
                                    Marketing Manager
                                </span>
                            </div>

                        </div>

                    </div>

                </div>


                <!-- TESTIMONIAL 3 -->

                <div class="col-lg-4 col-md-6 mb-4">

                    <div class="testimonial-card">

                        <div class="stars">
                            ★★★★★
                        </div>

                        <p>
                            Far far away, behind the word mountains,
                            far from the countries Vokalia and Consonantia,
                            there live the blind texts.
                        </p>

                        <div class="student-profile">

                            <div class="student-img"
                                 style="background-image:url('images/person_3.jpg');">
                            </div>

                            <div>
                                <p class="student-name">
                                    Roger Scott
                                </p>

                                <span class="student-position">
                                    Marketing Manager
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
    ====================================================== -->

    <section class="cta-section">

        <div class="home-container">

            <div class="cta-card">

                <h2>
                    We Are LearnSphere
                </h2>

                <p>
                    Your online learning center for building skills,
                    knowledge and a better future.
                </p>

                <a href="#" class="home-btn">
                    Enroll Now
                </a>

            </div>

        </div>

    </section>


    <!-- =====================================================
         SERVICES
    ====================================================== -->

    <section class="services-section">

        <div class="home-container">

            <div class="row">


                <div class="col-lg-6">

                    <div class="services-intro">

                        <span class="subheading">
                            Welcome to LearnSphere
                        </span>

                        <h2>
                            We Are LearnSphere
                            An Online Learning Center
                        </h2>

                        <p>
                            A small river named Duden flows by their place
                            and supplies it with the necessary regelialia.
                            It is a paradisematic country, in which roasted
                            parts of sentences fly into your mouth.
                        </p>

                        <p>
                            Far far away, behind the word mountains,
                            far from the countries Vokalia and Consonantia,
                            there live the blind texts.
                        </p>


                        <div class="video-area">

                            <a href="#"
                               class="video-btn"
                               style="background-image:url('images/about.jpg');">

                                <i class="fa fa-play"></i>

                            </a>

                            <h4>
                                Learn anything from LearnSphere,
                                Watch video
                            </h4>

                        </div>

                    </div>

                </div>


                <div class="col-lg-6">

                    <div class="row">


                        <div class="col-md-6">

                            <div class="service-card">

                                <div class="service-icon">
                                    <i class="fa fa-cogs"></i>
                                </div>

                                <h3>
                                    Top Quality Content
                                </h3>

                                <p>
                                    A small river named Duden flows
                                    by their place and supplies.
                                </p>

                            </div>

                        </div>


                        <div class="col-md-6">

                            <div class="service-card">

                                <div class="service-icon">
                                    <i class="fa fa-user"></i>
                                </div>

                                <h3>
                                    Highly Skilled Instructor
                                </h3>

                                <p>
                                    A small river named Duden flows
                                    by their place and supplies.
                                </p>

                            </div>

                        </div>


                        <div class="col-md-6">

                            <div class="service-card">

                                <div class="service-icon">
                                    <i class="fa fa-question-circle"></i>
                                </div>

                                <h3>
                                    World Class &amp; Quiz
                                </h3>

                                <p>
                                    A small river named Duden flows
                                    by their place and supplies.
                                </p>

                            </div>

                        </div>


                        <div class="col-md-6">

                            <div class="service-card">

                                <div class="service-icon">
                                    <i class="fa fa-certificate"></i>
                                </div>

                                <h3>
                                    Get Certified
                                </h3>

                                <p>
                                    A small river named Duden flows
                                    by their place and supplies.
                                </p>

                            </div>

                        </div>


                    </div>

                </div>

            </div>

        </div>

    </section>


    <!-- =====================================================
         BLOG
    ====================================================== -->

    <section class="blog-section">

        <div class="home-container">

            <div class="home-heading">

                <span class="subheading">
                    Our Blog
                </span>

                <h2>
                    Recent Posts
                </h2>

                <p>
                    Explore useful learning tips, course guidance
                    and educational content.
                </p>

            </div>


            <div class="row">


                <!-- BLOG 1 -->

                <div class="col-lg-4 col-md-6 mb-4">

                    <div class="blog-card">

                        <a href="blog-single.html"
                           class="blog-image"
                           style="background-image:url('images/image_1.jpg');">
                        </a>

                        <div class="blog-body">

                            <div class="blog-meta">

                                <span>
                                    <i class="fa fa-calendar"></i>
                                    Sept. 17, 2020
                                </span>

                                &nbsp; | &nbsp;

                                <span>
                                    <i class="fa fa-user"></i>
                                    Admin
                                </span>

                            </div>

                            <h3>
                                <a href="#">
                                    I'm not creative, Should I take this course?
                                </a>
                            </h3>

                            <p>
                                Far far away, behind the word mountains,
                                far from the countries Vokalia and Consonantia...
                            </p>

                            <a href="blog.html"
                               class="home-btn">
                                Read More
                            </a>

                        </div>

                    </div>

                </div>


                <!-- BLOG 2 -->

                <div class="col-lg-4 col-md-6 mb-4">

                    <div class="blog-card">

                        <a href="blog-single.html"
                           class="blog-image"
                           style="background-image:url('images/image_2.jpg');">
                        </a>

                        <div class="blog-body">

                            <div class="blog-meta">

                                <span>
                                    <i class="fa fa-calendar"></i>
                                    Sept. 17, 2020
                                </span>

                                &nbsp; | &nbsp;

                                <span>
                                    <i class="fa fa-user"></i>
                                    Admin
                                </span>

                            </div>

                            <h3>
                                <a href="#">
                                    I'm not creative, Should I take this course?
                                </a>
                            </h3>

                            <p>
                                Far far away, behind the word mountains,
                                far from the countries Vokalia and Consonantia...
                            </p>

                            <a href="blog.html"
                               class="home-btn">
                                Read More
                            </a>

                        </div>

                    </div>

                </div>


                <!-- BLOG 3 -->

                <div class="col-lg-4 col-md-6 mb-4">

                    <div class="blog-card">

                        <a href="blog-single.html"
                           class="blog-image"
                           style="background-image:url('images/image_3.jpg');">
                        </a>

                        <div class="blog-body">

                            <div class="blog-meta">

                                <span>
                                    <i class="fa fa-calendar"></i>
                                    Sept. 17, 2020
                                </span>

                                &nbsp; | &nbsp;

                                <span>
                                    <i class="fa fa-user"></i>
                                    Admin
                                </span>

                            </div>

                            <h3>
                                <a href="#">
                                    I'm not creative, Should I take this course?
                                </a>
                            </h3>

                            <p>
                                Far far away, behind the word mountains,
                                far from the countries Vokalia and Consonantia...
                            </p>

                            <a href="blog.html"
                               class="home-btn">
                                Read More
                            </a>

                        </div>

                    </div>

                </div>


            </div>

        </div>

    </section>


</div>

</asp:Content>