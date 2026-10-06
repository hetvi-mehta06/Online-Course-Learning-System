<%@ Page Title="" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="categories.aspx.cs" Inherits="OnlineCourse.categories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>

    /* =========================================================
       PREMIUM DARK CATEGORY PAGE
       Purple + Blue + Cyan
       Smooth Animation - No Mouse Follow
       ========================================================= */

    .categories-page {
        min-height: 100vh;
        position: relative;
        overflow: hidden;
        padding: 55px 0 90px;

        background:
            radial-gradient(circle at 8% 12%, rgba(124,58,237,.22), transparent 28%),
            radial-gradient(circle at 92% 18%, rgba(6,182,212,.18), transparent 27%),
            radial-gradient(circle at 50% 100%, rgba(59,130,246,.14), transparent 35%),
            linear-gradient(135deg, #08051b 0%, #10072b 48%, #07182d 100%);
    }


    /* =========================================================
       BACKGROUND GLOW
       ========================================================= */

    .categories-page::before {
        content: "";
        position: absolute;

        width: 380px;
        height: 380px;

        top: -160px;
        left: -120px;

        border-radius: 50%;

        background: rgba(124,58,237,.20);
        filter: blur(100px);

        pointer-events: none;
    }

    .categories-page::after {
        content: "";
        position: absolute;

        width: 420px;
        height: 420px;

        right: -170px;
        bottom: -160px;

        border-radius: 50%;

        background: rgba(6,182,212,.15);
        filter: blur(110px);

        pointer-events: none;
    }


    /* =========================================================
       FLOATING PARTICLES
       ========================================================= */

    .category-particles {
        position: absolute;
        inset: 0;
        overflow: hidden;
        pointer-events: none;
    }

    .category-particles span {
        position: absolute;

        color: rgba(130,210,255,.65);

        font-size: 15px;

        animation: particleFloat 6s ease-in-out infinite;
    }

    .category-particles span:nth-child(1) {
        left: 7%;
        top: 18%;
    }

    .category-particles span:nth-child(2) {
        left: 17%;
        top: 70%;
        animation-delay: 1s;
        font-size: 11px;
    }

    .category-particles span:nth-child(3) {
        right: 10%;
        top: 20%;
        animation-delay: 2s;
    }

    .category-particles span:nth-child(4) {
        right: 18%;
        top: 65%;
        animation-delay: 3s;
        font-size: 11px;
    }

    .category-particles span:nth-child(5) {
        left: 45%;
        top: 10%;
        animation-delay: 1.5s;
        font-size: 10px;
    }

    .category-particles span:nth-child(6) {
        left: 82%;
        bottom: 12%;
        animation-delay: 2.5s;
        font-size: 13px;
    }

    @keyframes particleFloat {

        0%, 100% {
            transform: translateY(0);
            opacity: .35;
        }

        50% {
            transform: translateY(-18px);
            opacity: .9;
        }

    }


    /* =========================================================
       INNER
       ========================================================= */

    .categories-inner {
        width: 92%;
        max-width: 1250px;
        margin: auto;

        position: relative;
        z-index: 2;
    }


    /* =========================================================
       HEADER
       ========================================================= */

    .categories-header {
        text-align: center;
        margin-bottom: 48px;

        animation: headerFade .7s ease both;
    }

    .category-badge {
        display: inline-flex;
        align-items: center;
        gap: 8px;

        padding: 9px 18px;

        border-radius: 50px;

        color: #bdeeff;

        font-size: 12px;
        font-weight: 700;

        letter-spacing: 1.2px;

        background: rgba(255,255,255,.06);

        border: 1px solid rgba(103,232,249,.22);

        box-shadow:
            0 0 25px rgba(6,182,212,.08);

        backdrop-filter: blur(12px);

        margin-bottom: 18px;
    }

    .categories-header h1 {
        margin: 0;

        font-size: 45px;
        font-weight: 800;

        line-height: 1.15;

        background:
            linear-gradient(
                90deg,
                #c084fc,
                #60a5fa,
                #22d3ee
            );

        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        background-clip: text;

        text-shadow:
            0 0 30px rgba(96,165,250,.12);
    }

    .categories-header p {
        max-width: 680px;

        margin: 15px auto 0;

        color: #aeb4d0;

        font-size: 15px;

        line-height: 1.8;
    }

    @keyframes headerFade {

        from {
            opacity: 0;
            transform: translateY(-15px);
        }

        to {
            opacity: 1;
            transform: translateY(0);
        }

    }


    /* =========================================================
       GRID
       ========================================================= */

    .categories-grid {
        display: grid;

        grid-template-columns: repeat(4, 1fr);

        gap: 24px;
    }


    /* =========================================================
       CATEGORY CARD
       ========================================================= */

    .category-card {
        position: relative;

        min-height: 255px;

        padding: 30px 22px 27px;

        text-align: center;

        overflow: hidden;

        border-radius: 25px;

        background:
            linear-gradient(
                145deg,
                rgba(29,20,61,.92),
                rgba(13,24,49,.90)
            );

        border: 1px solid rgba(139,92,246,.20);

        box-shadow:
            0 15px 40px rgba(0,0,0,.28),
            inset 0 1px 0 rgba(255,255,255,.04);

        transition:
            transform .35s ease,
            border-color .35s ease,
            box-shadow .35s ease;

        animation: cardAppear .7s ease both;
    }


    .category-card:nth-child(1) { animation-delay: .05s; }
    .category-card:nth-child(2) { animation-delay: .10s; }
    .category-card:nth-child(3) { animation-delay: .15s; }
    .category-card:nth-child(4) { animation-delay: .20s; }
    .category-card:nth-child(5) { animation-delay: .25s; }
    .category-card:nth-child(6) { animation-delay: .30s; }
    .category-card:nth-child(7) { animation-delay: .35s; }
    .category-card:nth-child(8) { animation-delay: .40s; }


    @keyframes cardAppear {

        from {
            opacity: 0;
            transform: translateY(20px);
        }

        to {
            opacity: 1;
            transform: translateY(0);
        }

    }


    /* =========================================================
       CARD TOP LINE
       ========================================================= */

    .category-card::before {
        content: "";

        position: absolute;

        top: 0;
        left: 12%;

        width: 76%;
        height: 3px;

        border-radius: 0 0 20px 20px;

        background:
            linear-gradient(
                90deg,
                #8b5cf6,
                #3b82f6,
                #06b6d4
            );

        opacity: .75;

        box-shadow:
            0 0 15px rgba(6,182,212,.25);
    }


    /* =========================================================
       CARD GLOW
       ========================================================= */

    .category-card::after {
        content: "";

        position: absolute;

        width: 130px;
        height: 130px;

        top: -70px;
        right: -55px;

        border-radius: 50%;

        background: rgba(124,58,237,.13);

        filter: blur(25px);

        transition: .4s ease;

        pointer-events: none;
    }

    .category-card:hover::after {
        width: 180px;
        height: 180px;

        background: rgba(6,182,212,.15);
    }


    /* =========================================================
       HOVER
       ========================================================= */

    .category-card:hover {

        transform: translateY(-8px);

        border-color: rgba(96,165,250,.42);

        box-shadow:
            0 22px 50px rgba(0,0,0,.35),
            0 0 28px rgba(124,58,237,.12);
    }


    /* =========================================================
       SHINE EFFECT
       ========================================================= */

    .card-shine {
        position: absolute;

        top: 0;
        left: -120%;

        width: 65%;
        height: 100%;

        background:
            linear-gradient(
                90deg,
                transparent,
                rgba(255,255,255,.06),
                transparent
            );

        transform: skewX(-20deg);

        transition: left .65s ease;

        pointer-events: none;
    }

    .category-card:hover .card-shine {
        left: 140%;
    }


    /* =========================================================
       NUMBER
       ========================================================= */

    .category-number {
        position: absolute;

        top: 16px;
        left: 17px;

        width: 29px;
        height: 29px;

        display: flex;
        align-items: center;
        justify-content: center;

        border-radius: 50%;

        color: #bca8ff;

        background: rgba(124,58,237,.13);

        border: 1px solid rgba(139,92,246,.18);

        font-size: 10px;
        font-weight: 700;
    }


    /* =========================================================
       ICON
       ========================================================= */

    .category-icon {

        width: 76px;
        height: 76px;

        margin: 4px auto 18px;

        display: flex;
        align-items: center;
        justify-content: center;

        border-radius: 23px;

        color: #c4b5fd;

        background:
            linear-gradient(
                135deg,
                rgba(124,58,237,.25),
                rgba(6,182,212,.13)
            );

        border:
            1px solid rgba(167,139,250,.20);

        box-shadow:
            0 12px 30px rgba(124,58,237,.14),
            inset 0 1px 0 rgba(255,255,255,.05);

        font-size: 28px;

        transition:
            transform .35s ease,
            box-shadow .35s ease;
    }


    .category-card:hover .category-icon {

        transform:
            translateY(-5px)
            rotate(-3deg);

        box-shadow:
            0 16px 35px rgba(6,182,212,.18),
            0 0 20px rgba(124,58,237,.13);
    }


    /* =========================================================
       TITLE
       ========================================================= */

    .category-card h3 {

        margin: 0 0 9px;

        font-size: 19px;

        font-weight: 700;
    }

    .category-card h3 a {

        color: #f4f2ff;

        text-decoration: none;

        transition: color .3s ease;
    }

    .category-card:hover h3 a {
        color: #67e8f9;
    }


    /* =========================================================
       DESCRIPTION
       ========================================================= */

    .category-card p {

        margin: 0 auto;

        max-width: 245px;

        min-height: 43px;

        color: #969bb7;

        font-size: 13px;

        line-height: 1.65;
    }


    /* =========================================================
       EXPLORE BUTTON
       ========================================================= */

    .category-explore {

        display: inline-flex;

        align-items: center;

        gap: 7px;

        margin-top: 16px;

        padding: 8px 16px;

        border-radius: 50px;

        color: #bdb5ff !important;

        background:
            rgba(124,58,237,.11);

        border:
            1px solid rgba(139,92,246,.18);

        font-size: 12px;

        font-weight: 700;

        text-decoration: none !important;

        transition:
            background .3s ease,
            color .3s ease,
            transform .3s ease,
            border-color .3s ease;
    }

    .category-explore span {
        font-size: 15px;
        transition: transform .3s ease;
    }

    .category-explore:hover {

        color: #ffffff !important;

        background:
            linear-gradient(
                90deg,
                #7c3aed,
                #2563eb,
                #06b6d4
            );

        border-color: transparent;

        transform: translateX(3px);
    }

    .category-explore:hover span {
        transform: translateX(3px);
    }


    /* =========================================================
       ICON COLOR VARIATIONS
       ========================================================= */

    .category-card:nth-child(1) .category-icon {
        color: #c4b5fd;
    }

    .category-card:nth-child(2) .category-icon {
        color: #93c5fd;
    }

    .category-card:nth-child(3) .category-icon {
        color: #67e8f9;
    }

    .category-card:nth-child(4) .category-icon {
        color: #f0abfc;
    }

    .category-card:nth-child(5) .category-icon {
        color: #f9a8d4;
    }

    .category-card:nth-child(6) .category-icon {
        color: #7dd3fc;
    }

    .category-card:nth-child(7) .category-icon {
        color: #86efac;
    }

    .category-card:nth-child(8) .category-icon {
        color: #a5b4fc;
    }


    /* =========================================================
       RESPONSIVE
       ========================================================= */

    @media (max-width: 1100px) {

        .categories-grid {
            grid-template-columns: repeat(3, 1fr);
        }

    }


    @media (max-width: 800px) {

        .categories-page {
            padding: 40px 0 70px;
        }

        .categories-grid {
            grid-template-columns: repeat(2, 1fr);
            gap: 18px;
        }

        .categories-header h1 {
            font-size: 36px;
        }

    }


    @media (max-width: 550px) {

        .categories-inner {
            width: 89%;
        }

        .categories-grid {
            grid-template-columns: 1fr;
        }

        .categories-header h1 {
            font-size: 31px;
        }

        .categories-header p {
            font-size: 14px;
        }

        .category-card {
            min-height: 235px;
        }

    }

</style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<section class="categories-page">

    <!-- Floating Background Particles -->

    <div class="category-particles">
        <span>✦</span>
        <span>✧</span>
        <span>✦</span>
        <span>✧</span>
        <span>•</span>
        <span>✦</span>
    </div>


    <div class="categories-inner">


        <!-- PAGE HEADER -->

        <div class="categories-header">

            <div class="category-badge">
                ✨ EXPLORE &nbsp; • &nbsp; LEARN
            </div>

            <h1>Explore Our Categories</h1>

            <p>
                Discover exciting learning paths and choose the perfect
                category to grow your knowledge, skills and career.
            </p>

        </div>


        <!-- CATEGORY GRID -->

        <div class="categories-grid">


            <!-- 01 -->

            <div class="category-card">

                <div class="card-shine"></div>

                <span class="category-number">01</span>

                <div class="category-icon">
                    <i class="fa fa-laptop"></i>
                </div>

                <h3>
                    <a href="course.aspx">
                        Web Development
                    </a>
                </h3>

                <p>
                    Learn HTML, CSS and modern web development.
                </p>

                <a href="course.aspx" class="category-explore">
                    Explore <span>→</span>
                </a>

            </div>


            <!-- 02 -->

            <div class="category-card">

                <div class="card-shine"></div>

                <span class="category-number">02</span>

                <div class="category-icon">
                    <i class="fa fa-code"></i>
                </div>

                <h3>
                    <a href="course.aspx">
                        Programming
                    </a>
                </h3>

                <p>
                    Build strong coding skills with popular languages.
                </p>

                <a href="course.aspx" class="category-explore">
                    Explore <span>→</span>
                </a>

            </div>


            <!-- 03 -->

            <div class="category-card">

                <div class="card-shine"></div>

                <span class="category-number">03</span>

                <div class="category-icon">
                    <i class="fa fa-database"></i>
                </div>

                <h3>
                    <a href="course.aspx">
                        Database
                    </a>
                </h3>

                <p>
                    Understand SQL, databases and data management.
                </p>

                <a href="course.aspx" class="category-explore">
                    Explore <span>→</span>
                </a>

            </div>


            <!-- 04 -->

            <div class="category-card">

                <div class="card-shine"></div>

                <span class="category-number">04</span>

                <div class="category-icon">
                    <i class="fa fa-mobile"></i>
                </div>

                <h3>
                    <a href="course.aspx">
                        Mobile Development
                    </a>
                </h3>

                <p>
                    Create beautiful and useful mobile applications.
                </p>

                <a href="course.aspx" class="category-explore">
                    Explore <span>→</span>
                </a>

            </div>


            <!-- 05 -->

            <div class="category-card">

                <div class="card-shine"></div>

                <span class="category-number">05</span>

                <div class="category-icon">
                    <i class="fa fa-paint-brush"></i>
                </div>

                <h3>
                    <a href="course.aspx">
                        Graphic Design
                    </a>
                </h3>

                <p>
                    Explore creativity, design and visual communication.
                </p>

                <a href="course.aspx" class="category-explore">
                    Explore <span>→</span>
                </a>

            </div>


            <!-- 06 -->

            <div class="category-card">

                <div class="card-shine"></div>

                <span class="category-number">06</span>

                <div class="category-icon">
                    <i class="fa fa-cloud"></i>
                </div>

                <h3>
                    <a href="course.aspx">
                        Cloud Computing
                    </a>
                </h3>

                <p>
                    Learn cloud technologies and modern infrastructure.
                </p>

                <a href="course.aspx" class="category-explore">
                    Explore <span>→</span>
                </a>

            </div>


            <!-- 07 -->

            <div class="category-card">

                <div class="card-shine"></div>

                <span class="category-number">07</span>

                <div class="category-icon">
                    <i class="fa fa-shield"></i>
                </div>

                <h3>
                    <a href="course.aspx">
                        Cyber Security
                    </a>
                </h3>

                <p>
                    Learn how to protect systems, networks and data.
                </p>

                <a href="course.aspx" class="category-explore">
                    Explore <span>→</span>
                </a>

            </div>


            <!-- 08 -->

            <div class="category-card">

                <div class="card-shine"></div>

                <span class="category-number">08</span>

                <div class="category-icon">
                    <i class="fa fa-cogs"></i>
                </div>

                <h3>
                    <a href="course.aspx">
                        Artificial Intelligence
                    </a>
                </h3>

                <p>
                    Discover AI, intelligent systems and smart technology.
                </p>

                <a href="course.aspx" class="category-explore">
                    Explore <span>→</span>
                </a>

            </div>


        </div>

    </div>

</section>

</asp:Content>