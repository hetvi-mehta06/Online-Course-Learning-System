<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="OnlineCourse.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Admin Login - LearnSphere</title>

    <!-- GOOGLE FONT -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet" />

    <!-- FONT AWESOME -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />

    <!-- EXISTING CSS -->
    <link rel="stylesheet" href="css/animate.css" />
    <link rel="stylesheet" href="css/owl.carousel.min.css" />
    <link rel="stylesheet" href="css/owl.theme.default.min.css" />
    <link rel="stylesheet" href="css/magnific-popup.css" />
    <link rel="stylesheet" href="css/bootstrap-datepicker.css" />
    <link rel="stylesheet" href="css/jquery.timepicker.css" />
    <link rel="stylesheet" href="css/flaticon.css" />
    <link rel="stylesheet" href="css/style.css" />


    <!-- =====================================================
         CUSTOM LEARNSPHERE ADMIN LOGIN CSS
    ====================================================== -->

    <style>

        * {
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            margin: 0;
            padding: 0;

            font-family: 'Poppins', sans-serif;

            color: #ffffff;

            background:
                radial-gradient(
                    circle at 10% 10%,
                    rgba(117, 75, 255, .18),
                    transparent 28%
                ),
                radial-gradient(
                    circle at 90% 80%,
                    rgba(0, 215, 255, .12),
                    transparent 30%
                ),
                #080419;
        }


        /* =====================================================
           3D HERO SECTION
        ====================================================== */

        .admin-hero {

            position: relative;

            min-height: 420px;

            display: flex;

            align-items: center;

            justify-content: center;

            overflow: hidden;

            background:

                radial-gradient(
                    circle at 50% 45%,
                    rgba(119, 76, 255, .23),
                    transparent 35%
                ),

                radial-gradient(
                    circle at 10% 20%,
                    rgba(0, 210, 255, .12),
                    transparent 28%
                ),

                radial-gradient(
                    circle at 90% 75%,
                    rgba(175, 70, 255, .13),
                    transparent 28%
                ),

                linear-gradient(
                    135deg,
                    #080319,
                    #170936,
                    #0a041d
                );
        }


        /* BACKGROUND GRID */

        .admin-hero:before {

            content: "";

            position: absolute;

            inset: 0;

            background-image:

                linear-gradient(
                    rgba(255,255,255,.025) 1px,
                    transparent 1px
                ),

                linear-gradient(
                    90deg,
                    rgba(255,255,255,.025) 1px,
                    transparent 1px
                );

            background-size: 55px 55px;

            mask-image:
                linear-gradient(
                    to bottom,
                    black,
                    transparent
                );

            pointer-events: none;
        }


        /* BOTTOM GLOW */

        .admin-hero:after {

            content: "";

            position: absolute;

            width: 700px;
            height: 150px;

            left: 50%;
            bottom: -120px;

            transform: translateX(-50%);

            background:
                radial-gradient(
                    ellipse,
                    rgba(118, 76, 255, .35),
                    transparent 70%
                );

            filter: blur(20px);

            pointer-events: none;
        }


        /* =====================================================
           CENTER GLASS CARD
        ====================================================== */

        .admin-hero-content {

            position: relative;

            z-index: 20;

            width: 550px;

            padding: 42px 55px;

            text-align: center;

            border-radius: 32px;

            background:
                linear-gradient(
                    145deg,
                    rgba(255,255,255,.105),
                    rgba(255,255,255,.025)
                );

            border:
                1px solid rgba(255,255,255,.14);

            backdrop-filter: blur(22px);
            -webkit-backdrop-filter: blur(22px);

            box-shadow:

                0 35px 90px rgba(0,0,0,.55),

                inset 0 1px 0
                rgba(255,255,255,.13),

                0 0 60px
                rgba(110,70,255,.12);

            transform:
                perspective(1000px)
                rotateX(2deg);

            animation:
                cardFloat 5s ease-in-out infinite;
        }


        /* CARD GLOW BORDER */

        .admin-hero-content:before {

            content: "";

            position: absolute;

            inset: -1px;

            border-radius: 32px;

            padding: 1px;

            background:

                linear-gradient(
                    120deg,
                    transparent,
                    rgba(142,91,255,.8),
                    rgba(0,220,255,.75),
                    transparent
                );

            -webkit-mask:

                linear-gradient(#fff 0 0) content-box,
                linear-gradient(#fff 0 0);

            -webkit-mask-composite: xor;

            mask-composite: exclude;

            animation:
                borderGlow 5s linear infinite;

            pointer-events: none;
        }


        /* =====================================================
           SECURITY BADGE
        ====================================================== */

        .admin-badge {

            display: inline-flex;

            align-items: center;

            gap: 8px;

            padding: 9px 18px;

            margin-bottom: 18px;

            border-radius: 50px;

            color: #c9b9ff;

            font-size: 10px;

            font-weight: 600;

            letter-spacing: 1.6px;

            background:
                rgba(119,76,255,.12);

            border:
                1px solid
                rgba(151,111,255,.25);

            box-shadow:
                0 8px 25px
                rgba(108,70,255,.12);
        }


        .admin-badge i {

            color: #9d7aff;

            font-size: 12px;
        }


        /* =====================================================
           HERO TITLE
        ====================================================== */

        .admin-hero h1 {

            margin: 0;

            font-size: 55px;

            font-weight: 800;

            letter-spacing: -1.5px;

            background:

                linear-gradient(
                    90deg,
                    #ffffff,
                    #cab9ff,
                    #72eaff,
                    #ffffff
                );

            background-size: 250% auto;

            -webkit-background-clip: text;

            -webkit-text-fill-color: transparent;

            animation:
                titleGradient 5s linear infinite;

            text-shadow:
                0 15px 40px
                rgba(117,76,255,.25);
        }


        .admin-hero p {

            margin: 12px 0 0;

            color: #aaa2c2;

            font-size: 15px;

            letter-spacing: .8px;
        }


        /* SMALL LINE */

        .hero-line {

            width: 95px;

            height: 3px;

            margin: 20px auto 0;

            border-radius: 10px;

            background:

                linear-gradient(
                    90deg,
                    #7955ff,
                    #00d8ff
                );

            box-shadow:
                0 0 18px
                rgba(0,215,255,.4);
        }


        /* =====================================================
           3D FLOATING EDUCATION OBJECTS
        ====================================================== */

        .edu-object {

            position: absolute;

            z-index: 10;

            width: 75px;

            height: 75px;

            display: flex;

            align-items: center;

            justify-content: center;

            border-radius: 22px;

            font-size: 39px;

            background:

                linear-gradient(
                    145deg,
                    rgba(255,255,255,.15),
                    rgba(255,255,255,.035)
                );

            border:
                1px solid
                rgba(255,255,255,.16);

            backdrop-filter:
                blur(12px);

            box-shadow:

                0 25px 45px
                rgba(0,0,0,.45),

                inset 0 1px 1px
                rgba(255,255,255,.18),

                0 0 35px
                rgba(117,76,255,.12);

            transform-style:
                preserve-3d;

            transition:
                .35s ease;
        }


        .edu-object:hover {

            transform:
                translateY(-12px)
                rotateX(12deg)
                rotateY(15deg)
                scale(1.08);

            box-shadow:

                0 35px 60px
                rgba(0,0,0,.55),

                0 0 35px
                rgba(127,82,255,.25);
        }


        /* =====================================================
           PENCIL
        ====================================================== */

        .pencil-object {

            left: 11%;

            top: 55px;

            transform:
                rotate(-18deg);

            animation:
                pencilFloat
                4s
                ease-in-out
                infinite;
        }


        /* =====================================================
           BOOK
        ====================================================== */

        .book-object {

            left: 7%;

            bottom: 55px;

            transform:
                rotate(-10deg);

            animation:
                bookFloat
                5s
                ease-in-out
                infinite;
        }


        /* =====================================================
           LAPTOP
        ====================================================== */

        .laptop-object {

            right: 10%;

            top: 48px;

            transform:
                rotate(8deg);

            animation:
                laptopFloat
                4.5s
                ease-in-out
                infinite;
        }


        /* =====================================================
           KEYBOARD
        ====================================================== */

        .keyboard-object {

            right: 5%;

            bottom: 45px;

            transform:
                rotate(-8deg);

            animation:
                keyboardFloat
                5s
                ease-in-out
                infinite;
        }


        /* =====================================================
           MOUSE
        ====================================================== */

        .mouse-object {

            right: 23%;

            bottom: 28px;

            width: 55px;

            height: 55px;

            font-size: 28px;

            border-radius: 18px;

            animation:
                mouseFloat
                4s
                ease-in-out
                infinite;
        }


        /* =====================================================
           3D BOY
        ====================================================== */

        .boy-object {

            left: 23%;

            top: 28px;

            width: 68px;

            height: 68px;

            font-size: 37px;

            border-radius: 50%;

            animation:
                boyFloat
                4.3s
                ease-in-out
                infinite;
        }


        /* =====================================================
           3D GIRL
        ====================================================== */

        .girl-object {

            right: 23%;

            top: 30px;

            width: 68px;

            height: 68px;

            font-size: 37px;

            border-radius: 50%;

            animation:
                girlFloat
                4.7s
                ease-in-out
                infinite;
        }


        /* =====================================================
           GLOW ORBS
        ====================================================== */

        .hero-glow {

            position: absolute;

            border-radius: 50%;

            pointer-events: none;
        }


        .glow-one {

            width: 330px;

            height: 330px;

            left: -140px;

            top: -150px;

            background:
                rgba(111,71,255,.14);

            filter: blur(5px);

            box-shadow:
                0 0 120px
                rgba(111,71,255,.22);

            animation:
                orbFloat
                8s
                ease-in-out
                infinite;
        }


        .glow-two {

            width: 300px;

            height: 300px;

            right: -120px;

            bottom: -150px;

            background:
                rgba(0,210,255,.10);

            filter: blur(5px);

            box-shadow:
                0 0 120px
                rgba(0,210,255,.18);

            animation:
                orbFloat2
                9s
                ease-in-out
                infinite;
        }


        /* =====================================================
           STARS
        ====================================================== */

        .floating-star {

            position: absolute;

            z-index: 5;

            color: #a58aff;

            font-size: 22px;

            text-shadow:
                0 0 18px
                #8b67ff;

            animation:
                starFloat
                3s
                ease-in-out
                infinite;
        }


        .star-one {

            left: 31%;

            bottom: 70px;
        }


        .star-two {

            right: 31%;

            top: 85px;

            color: #5ce8ff;

            text-shadow:
                0 0 18px
                #5ce8ff;

            animation-delay:
                1s;
        }


        .star-three {

            left: 40%;

            top: 32px;

            animation-delay:
                1.7s;
        }


        .star-four {

            right: 40%;

            bottom: 35px;

            color: #ffffff;

            animation-delay:
                2.2s;
        }


        /* =====================================================
           LOGIN SECTION
        ====================================================== */

        .ftco-section {

            position: relative;

            padding: 90px 0 !important;

            background:
                transparent !important;

            overflow: hidden;
        }


        .ftco-section:before {

            content: "";

            position: absolute;

            width: 500px;

            height: 500px;

            border-radius: 50%;

            border:
                1px solid
                rgba(157,112,255,.10);

            left: -280px;

            top: 10px;

            box-shadow:

                0 0 80px
                rgba(125,75,255,.08),

                inset 0 0 80px
                rgba(125,75,255,.04);
        }


        .ftco-section:after {

            content: "";

            position: absolute;

            width: 450px;

            height: 450px;

            border-radius: 50%;

            border:
                1px solid
                rgba(0,220,255,.08);

            right: -250px;

            bottom: -200px;
        }


        .ftco-section .container {

            position: relative;

            z-index: 5;
        }


        /* =====================================================
           LOGIN CARD
        ====================================================== */

        .bg-white.shadow.rounded.p-5 {

            position: relative;

            padding: 48px !important;

            background:

                linear-gradient(
                    145deg,
                    rgba(255,255,255,.10),
                    rgba(255,255,255,.025)
                ) !important;

            border:
                1px solid
                rgba(255,255,255,.13);

            border-radius: 28px !important;

            box-shadow:

                0 35px 80px
                rgba(0,0,0,.55),

                inset 0 1px 0
                rgba(255,255,255,.12),

                0 0 55px
                rgba(109,70,255,.12) !important;

            backdrop-filter:
                blur(25px);

            -webkit-backdrop-filter:
                blur(25px);

            transform:
                perspective(1000px)
                rotateX(1deg);

            transition:
                .4s ease;
        }


        .bg-white.shadow.rounded.p-5:hover {

            transform:
                perspective(1000px)
                rotateX(0deg)
                translateY(-8px);

            box-shadow:

                0 45px 100px
                rgba(0,0,0,.65),

                0 0 60px
                rgba(115,75,255,.20),

                inset 0 1px 0
                rgba(255,255,255,.16) !important;
        }


        /* CARD BORDER */

        .bg-white.shadow.rounded.p-5:before {

            content: "";

            position: absolute;

            inset: -1px;

            border-radius: 28px;

            padding: 1px;

            background:

                linear-gradient(
                    120deg,
                    transparent,
                    rgba(151,91,255,.8),
                    rgba(0,220,255,.7),
                    transparent
                );

            -webkit-mask:

                linear-gradient(#fff 0 0) content-box,
                linear-gradient(#fff 0 0);

            -webkit-mask-composite:
                xor;

            mask-composite:
                exclude;

            pointer-events: none;

            animation:
                borderMove
                5s
                linear
                infinite;
        }


        /* =====================================================
           LOGIN TITLE
        ====================================================== */

        .bg-white h2 {

            color: #ffffff !important;

            font-size: 28px;

            font-weight: 700;

            margin-bottom: 35px !important;

            position: relative;

            z-index: 2;
        }


        .bg-white h2:before {

            content:
                "\f2bd";

            font-family:
                FontAwesome;

            display: flex;

            align-items: center;

            justify-content: center;

            width: 65px;

            height: 65px;

            margin:
                0 auto 18px;

            border-radius:
                20px;

            background:

                linear-gradient(
                    135deg,
                    #7957ff,
                    #9d5cff,
                    #00cfff
                );

            color: #ffffff;

            font-size: 27px;

            box-shadow:

                0 15px 35px
                rgba(106,70,255,.35),

                inset 0 1px 1px
                rgba(255,255,255,.3);
        }


        /* =====================================================
           FORM LABEL
        ====================================================== */

        .form-group label {

            color:
                #dcd6ee !important;

            font-size:
                14px;

            margin-bottom:
                9px;

            letter-spacing:
                .3px;
        }


        /* =====================================================
           INPUT
        ====================================================== */

        .form-control {

            height:
                58px !important;

            border-radius:
                15px !important;

            background:
                rgba(255,255,255,.055) !important;

            border:
                1px solid
                rgba(255,255,255,.12) !important;

            color:
                #ffffff !important;

            padding:
                0 18px !important;

            font-family:
                'Poppins',
                sans-serif;

            font-size:
                14px;

            box-shadow:

                inset 0 2px 8px
                rgba(0,0,0,.15);

            transition:
                .3s ease;
        }


        .form-control::placeholder {

            color:
                #88819f !important;
        }


        .form-control:focus {

            outline:
                none !important;

            border-color:
                #8864ff !important;

            background:
                rgba(255,255,255,.09) !important;

            box-shadow:

                0 0 0 4px
                rgba(126,87,255,.10),

                0 0 25px
                rgba(126,87,255,.15),

                inset 0 2px 8px
                rgba(0,0,0,.15) !important;
        }


        /* =====================================================
           LOGIN BUTTON
        ====================================================== */

        .btn-primary {

            position:
                relative;

            width:
                100%;

            height:
                58px;

            border:
                none !important;

            border-radius:
                16px !important;

            background:

                linear-gradient(
                    135deg,
                    #704cff,
                    #925cff,
                    #00bfe9
                ) !important;

            color:
                #ffffff !important;

            font-size:
                15px !important;

            font-weight:
                600 !important;

            letter-spacing:
                .5px;

            box-shadow:

                0 15px 35px
                rgba(104,72,255,.35),

                inset 0 1px 1px
                rgba(255,255,255,.25);

            transition:
                .35s ease;

            overflow:
                hidden;
        }


        .btn-primary:before {

            content: "";

            position:
                absolute;

            top: 0;

            left: -120%;

            width: 80%;

            height: 100%;

            background:

                linear-gradient(
                    90deg,
                    transparent,
                    rgba(255,255,255,.35),
                    transparent
                );

            transform:
                skewX(-25deg);

            transition:
                .6s;
        }


        .btn-primary:hover:before {

            left:
                140%;
        }


        .btn-primary:hover {

            transform:
                translateY(-4px)
                scale(1.01);

            box-shadow:

                0 20px 45px
                rgba(104,72,255,.48),

                0 0 30px
                rgba(0,207,255,.18);
        }


        .btn-primary:active {

            transform:
                translateY(0);
        }


        /* =====================================================
           HR
        ====================================================== */

        .bg-white hr {

            border:
                0;

            border-top:
                1px solid
                rgba(255,255,255,.10);

            margin:
                35px 0 25px;
        }


        /* =====================================================
           HOME LINK
        ====================================================== */

        .bg-white p {

            color:
                #aaa3bd !important;

            font-size:
                13px;
        }


        .bg-white p a {

            color:
                #9c7cff !important;

            font-weight:
                600;

            text-decoration:
                none !important;

            transition:
                .3s;
        }


        .bg-white p a:hover {

            color:
                #55e7ff !important;

            text-shadow:
                0 0 15px
                rgba(85,231,255,.35);
        }


        /* =====================================================
           ANIMATIONS
        ====================================================== */

        @keyframes cardFloat {

            0%,100% {
                transform:
                    perspective(1000px)
                    rotateX(2deg)
                    translateY(0);
            }

            50% {
                transform:
                    perspective(1000px)
                    rotateX(0deg)
                    translateY(-6px);
            }
        }


        @keyframes titleGradient {

            0% {
                background-position:
                    0% center;
            }

            100% {
                background-position:
                    250% center;
            }
        }


        @keyframes borderGlow {

            0% {
                filter:
                    hue-rotate(0deg);
            }

            100% {
                filter:
                    hue-rotate(360deg);
            }
        }


        @keyframes pencilFloat {

            0%,100% {
                transform:
                    translateY(0)
                    rotate(-18deg);
            }

            50% {
                transform:
                    translateY(-18px)
                    rotate(-7deg);
            }
        }


        @keyframes bookFloat {

            0%,100% {
                transform:
                    translateY(0)
                    rotate(-10deg);
            }

            50% {
                transform:
                    translateY(-15px)
                    rotate(2deg);
            }
        }


        @keyframes laptopFloat {

            0%,100% {
                transform:
                    translateY(0)
                    rotate(8deg);
            }

            50% {
                transform:
                    translateY(-17px)
                    rotate(-2deg);
            }
        }


        @keyframes keyboardFloat {

            0%,100% {
                transform:
                    translateY(0)
                    rotate(-8deg);
            }

            50% {
                transform:
                    translateY(-13px)
                    rotate(3deg);
            }
        }


        @keyframes mouseFloat {

            0%,100% {
                transform:
                    translateY(0);
            }

            50% {
                transform:
                    translateY(-15px);
            }
        }


        @keyframes boyFloat {

            0%,100% {
                transform:
                    translateY(0)
                    rotate(-4deg);
            }

            50% {
                transform:
                    translateY(-18px)
                    rotate(5deg);
            }
        }


        @keyframes girlFloat {

            0%,100% {
                transform:
                    translateY(0)
                    rotate(4deg);
            }

            50% {
                transform:
                    translateY(-17px)
                    rotate(-5deg);
            }
        }


        @keyframes orbFloat {

            0%,100% {
                transform:
                    translate(0,0);
            }

            50% {
                transform:
                    translate(30px,25px);
            }
        }


        @keyframes orbFloat2 {

            0%,100% {
                transform:
                    translate(0,0);
            }

            50% {
                transform:
                    translate(-25px,-20px);
            }
        }


        @keyframes starFloat {

            0%,100% {

                transform:
                    translateY(0)
                    scale(1);

                opacity:
                    .5;
            }

            50% {

                transform:
                    translateY(-15px)
                    scale(1.3);

                opacity:
                    1;
            }
        }


        @keyframes borderMove {

            0% {
                filter:
                    hue-rotate(0deg);
            }

            100% {
                filter:
                    hue-rotate(360deg);
            }
        }


        /* =====================================================
           MOBILE
        ====================================================== */

        @media(max-width: 767px) {

            .admin-hero {

                min-height:
                    390px;
            }


            .admin-hero-content {

                width:
                    88%;

                padding:
                    35px 20px;
            }


            .admin-hero h1 {

                font-size:
                    38px;
            }


            .admin-hero p {

                font-size:
                    12px;
            }


            .edu-object {

                width:
                    48px;

                height:
                    48px;

                font-size:
                    25px;
            }


            .boy-object,
            .girl-object {

                width:
                    48px;

                height:
                    48px;

                font-size:
                    27px;
            }


            .pencil-object {

                left:
                    3%;
            }


            .book-object {

                left:
                    2%;

                bottom:
                    35px;
            }


            .laptop-object {

                right:
                    3%;
            }


            .keyboard-object {

                right:
                    2%;

                bottom:
                    35px;
            }


            .mouse-object {

                display:
                    none;
            }


            .boy-object {

                left:
                    17%;

                top:
                    20px;
            }


            .girl-object {

                right:
                    17%;

                top:
                    20px;
            }


            .ftco-section {

                padding:
                    55px 15px !important;
            }


            .bg-white.shadow.rounded.p-5 {

                padding:
                    30px 22px !important;

                border-radius:
                    22px !important;
            }


            .bg-white h2 {

                font-size:
                    23px;
            }


            .bg-white h2:before {

                width:
                    58px;

                height:
                    58px;
            }
        }

    </style>

</head>


<body>

<form id="form1" runat="server">


    <!-- =====================================================
         3D ADMIN HERO
    ====================================================== -->

    <section class="admin-hero">


        <!-- Background Glow -->

        <div class="hero-glow glow-one"></div>

        <div class="hero-glow glow-two"></div>


        <!-- =================================================
             FLOATING EDUCATION OBJECTS
        ================================================== -->


        <!-- Pencil -->

        <div class="edu-object pencil-object">
            ✏️
        </div>


        <!-- Books -->

        <div class="edu-object book-object">
            📚
        </div>


        <!-- Laptop -->

        <div class="edu-object laptop-object">
            💻
        </div>


        <!-- Keyboard -->

        <div class="edu-object keyboard-object">
            ⌨️
        </div>


        <!-- Mouse -->

        <div class="edu-object mouse-object">
            🖱️
        </div>


        <!-- Boy -->

        <div class="edu-object boy-object">
            👨‍💻
        </div>


        <!-- Girl -->

        <div class="edu-object girl-object">
            👩‍💻
        </div>


        <!-- Stars -->

        <div class="floating-star star-one">
            ✦
        </div>

        <div class="floating-star star-two">
            ✦
        </div>

        <div class="floating-star star-three">
            ✧
        </div>

        <div class="floating-star star-four">
            ✦
        </div>


        <!-- =================================================
             CENTER CONTENT
        ================================================== -->

        <div class="admin-hero-content">


            <div class="admin-badge">

                <i class="fa fa-shield"></i>

                SECURE ADMIN PORTAL

            </div>


            <h1>
                Admin Login
            </h1>


            <p>
                LearnSphere Administration Panel
            </p>


            <div class="hero-line"></div>


        </div>


    </section>



    <!-- =====================================================
         LOGIN FORM
    ====================================================== -->

    <section class="ftco-section">


        <div class="container">


            <div class="row justify-content-center">


                <div class="col-md-6">


                    <div class="bg-white shadow rounded p-5">


                        <h2 class="text-center mb-4">

                            Administrator Login

                        </h2>



                        <!-- EMAIL -->

                        <div class="form-group">


                            <label>

                                <strong>
                                    Admin Email
                                </strong>

                            </label>


                            <input
                                type="email"
                                class="form-control"
                                placeholder="admin@learnsphere.com" />


                        </div>



                        <!-- PASSWORD -->

                        <div class="form-group">


                            <label>

                                <strong>
                                    Password
                                </strong>

                            </label>


                            <input
                                type="password"
                                class="form-control"
                                placeholder="Enter Password" />


                        </div>



                        <!-- LOGIN -->

                        <div class="form-group text-center mt-4">


                            <a
                                href="Dashboard.aspx"
                                class="btn btn-primary btn-lg">

                                <i class="fa fa-sign-in"></i>

                                &nbsp;

                                Login

                            </a>


                        </div>



                        <hr />



                        <!-- HOME -->

                        <p class="text-center">

                            Return to

                            <a href="index.aspx">

                                Home Page

                            </a>

                        </p>


                    </div>


                </div>


            </div>


        </div>


    </section>



    <!-- EXISTING SCRIPTS -->

    <script src="js/jquery.min.js"></script>

    <script src="js/popper.min.js"></script>

    <script src="js/bootstrap.min.js"></script>

    <script src="js/main.js"></script>


</form>

</body>

</html>