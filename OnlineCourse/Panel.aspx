<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Panel.aspx.cs" Inherits="OnlineCourse.Panel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>LearnSphere - Select Panel</title>

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800" rel="stylesheet" />

    <link rel="stylesheet"
        href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />

    <link rel="stylesheet" href="css/bootstrap.min.css" />

    <style>

        /* =====================================================
           GLOBAL
        ===================================================== */

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            background: #09051a;
            overflow-x: hidden;
            color: #fff;
        }


        /* =====================================================
           CURSOR GLOW
        ===================================================== */

        .cursor-glow {
            position: fixed;
            width: 260px;
            height: 260px;
            border-radius: 50%;
            pointer-events: none;

            background: radial-gradient(
                circle,
                rgba(168,85,247,.18),
                rgba(99,102,241,.08),
                transparent 70%
            );

            transform: translate(-50%,-50%);
            z-index: 9999;
            filter: blur(8px);
        }


        /* =====================================================
           HERO
        ===================================================== */

        .hero {
            min-height: 100vh;
            position: relative;
            overflow: hidden;

            display: flex;
            align-items: center;

            background:
                radial-gradient(circle at 15% 20%, rgba(168,85,247,.35), transparent 30%),
                radial-gradient(circle at 85% 80%, rgba(59,130,246,.28), transparent 30%),
                linear-gradient(135deg,#08051a,#160b35,#09051a);
        }

        .hero:before {
            content: "";
            position: absolute;

            width: 700px;
            height: 700px;

            border-radius: 50%;

            background:
                radial-gradient(
                    circle,
                    rgba(139,92,246,.22),
                    transparent 65%
                );

            top: -350px;
            left: -250px;

            animation: pulseGlow 6s ease-in-out infinite;
        }

        .hero:after {
            content: "";
            position: absolute;

            width: 600px;
            height: 600px;

            border-radius: 50%;

            background:
                radial-gradient(
                    circle,
                    rgba(236,72,153,.18),
                    transparent 65%
                );

            bottom: -300px;
            right: -250px;

            animation: pulseGlow 7s ease-in-out infinite reverse;
        }

        @keyframes pulseGlow {

            0%,100% {
                transform: scale(1);
                opacity: .7;
            }

            50% {
                transform: scale(1.15);
                opacity: 1;
            }
        }

        .hero-container {
            position: relative;
            z-index: 10;
            width: 100%;
        }


        /* =====================================================
           PARTICLES
        ===================================================== */

        .particle {
            position: absolute;

            width: 7px;
            height: 7px;

            border-radius: 50%;

            background: #c084fc;

            box-shadow:
                0 0 10px #c084fc,
                0 0 25px #a855f7;

            animation: particleFloat 7s linear infinite;
        }

        .p1 {
            left: 10%;
            top: 25%;
        }

        .p2 {
            left: 25%;
            top: 75%;
            animation-delay: 2s;
        }

        .p3 {
            left: 70%;
            top: 20%;
            animation-delay: 1s;
        }

        .p4 {
            left: 85%;
            top: 65%;
            animation-delay: 3s;
        }

        .p5 {
            left: 50%;
            top: 10%;
            animation-delay: 4s;
        }

        @keyframes particleFloat {

            0% {
                transform: translateY(0) scale(1);
                opacity: .2;
            }

            50% {
                transform: translateY(-80px) scale(1.5);
                opacity: 1;
            }

            100% {
                transform: translateY(0) scale(1);
                opacity: .2;
            }
        }


        /* =====================================================
           HERO TEXT
        ===================================================== */

        .hero-text {
            animation: textEnter 1.2s ease;
        }

        @keyframes textEnter {

            from {
                opacity: 0;
                transform: translateX(-70px);
            }

            to {
                opacity: 1;
                transform: translateX(0);
            }
        }

        .welcome {
            display: inline-block;

            padding: 9px 20px;

            border-radius: 30px;

            color: #e9d5ff;

            font-size: 13px;
            font-weight: 700;

            letter-spacing: 2px;

            border: 1px solid rgba(216,180,254,.35);

            background: rgba(139,92,246,.12);

            box-shadow:
                0 0 20px rgba(168,85,247,.15),
                inset 0 0 15px rgba(255,255,255,.03);

            margin-bottom: 20px;
        }

        .hero-title {
            font-size: 68px;
            line-height: 1.08;

            font-weight: 800;

            background:
                linear-gradient(
                    90deg,
                    #ffffff,
                    #e9d5ff,
                    #c4b5fd,
                    #ffffff
                );

            background-size: 300% auto;

            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;

            animation: textGradient 5s linear infinite;

            text-shadow:
                0 0 30px rgba(168,85,247,.2);
        }

        @keyframes textGradient {

            0% {
                background-position: 0% center;
            }

            100% {
                background-position: 300% center;
            }
        }

        .hero-description {
            color: #cbd5e1;

            font-size: 18px;

            line-height: 31px;

            max-width: 560px;

            margin: 25px 0 35px;
        }


        /* =====================================================
           3D BUTTONS
        ===================================================== */

        .hero-btn {
            position: relative;

            display: inline-block;

            padding: 15px 34px;

            border-radius: 15px;

            margin-right: 12px;

            text-decoration: none !important;

            font-weight: 700;

            transition: .35s;

            transform-style: preserve-3d;

            overflow: hidden;
        }

        .student-btn {
            color: white;

            background:
                linear-gradient(
                    135deg,
                    #7c3aed,
                    #a855f7,
                    #ec4899
                );

            box-shadow:
                0 12px 0 #4c1d95,
                0 20px 35px rgba(139,92,246,.35);
        }

        .admin-btn {
            color: #fff;

            border: 1px solid rgba(255,255,255,.35);

            background: rgba(255,255,255,.08);

            backdrop-filter: blur(15px);

            box-shadow:
                0 15px 35px rgba(0,0,0,.2),
                inset 0 0 20px rgba(255,255,255,.04);
        }

        .hero-btn:before {
            content: "";

            position: absolute;

            top: 0;
            left: -100%;

            width: 60%;
            height: 100%;

            background:
                linear-gradient(
                    90deg,
                    transparent,
                    rgba(255,255,255,.4),
                    transparent
                );

            transform: skewX(-25deg);

            transition: .6s;
        }

        .hero-btn:hover:before {
            left: 140%;
        }

        .hero-btn:hover {
            transform:
                translateY(-7px)
                translateZ(20px);

            color: #fff;
        }

        .student-btn:active {
            transform: translateY(3px);

            box-shadow:
                0 5px 0 #4c1d95,
                0 10px 20px rgba(139,92,246,.3);
        }


        /* =====================================================
           HERO VISUAL AREA
        ===================================================== */

        .hero-visual {
            position: relative;

            min-height: 620px;

            display: flex;

            align-items: center;
            justify-content: center;

            perspective: 1400px;

            animation: visualEnter 1.4s ease;
        }

        @keyframes visualEnter {

            from {
                opacity: 0;
                transform: translateX(70px);
            }

            to {
                opacity: 1;
                transform: translateX(0);
            }
        }


        /* =====================================================
           LEARNSPHERE 5D CARD
        ===================================================== */

        .learnsphere-5d {

            position: relative;

            width: 440px;
            height: 570px;

            border-radius: 42px;

            display: flex;

            align-items: center;
            justify-content: center;

            background:
                linear-gradient(
                    145deg,
                    rgba(255,255,255,.14),
                    rgba(255,255,255,.035)
                );

            border: 2px solid rgba(255,255,255,.22);

            backdrop-filter: blur(22px);
            -webkit-backdrop-filter: blur(22px);

            box-shadow:
                0 35px 80px rgba(0,0,0,.5),
                0 0 30px rgba(168,85,247,.35),
                0 0 80px rgba(59,130,246,.18),
                inset 0 0 35px rgba(255,255,255,.05);

            overflow: hidden;

            transform-style: preserve-3d;

            animation: learnSphereFloat 5s ease-in-out infinite;

            transition:
                transform .45s ease,
                box-shadow .45s ease;
        }

        @keyframes learnSphereFloat {

            0%,100% {
                transform:
                    translateY(0)
                    rotateX(2deg)
                    rotateY(-2deg);
            }

            50% {
                transform:
                    translateY(-14px)
                    rotateX(-2deg)
                    rotateY(3deg);
            }
        }


        /* Animated border */

        .learnsphere-5d:before {

            content: "";

            position: absolute;

            inset: -3px;

            border-radius: 44px;

            background:
                linear-gradient(
                    120deg,
                    #7c3aed,
                    #ec4899,
                    #06b6d4,
                    #7c3aed
                );

            background-size: 300% 300%;

            animation: lsBorder 5s linear infinite;

            z-index: -2;

            filter: blur(4px);
        }

        @keyframes lsBorder {

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


        .learnsphere-5d:hover {

            transform:
                translateY(-15px)
                scale(1.025);

            box-shadow:
                0 45px 90px rgba(0,0,0,.55),
                0 0 40px rgba(236,72,153,.55),
                0 0 100px rgba(59,130,246,.35),
                inset 0 0 45px rgba(255,255,255,.08);
        }


        /* =====================================================
           5D SPHERE
        ===================================================== */

        .ls-sphere {

            position: absolute;

            width: 235px;
            height: 235px;

            top: 34%;
            left: 50%;

            transform:
                translate(-50%,-50%);

            border-radius: 50%;

            background:
                radial-gradient(
                    circle at 32% 25%,
                    #ffffff 0%,
                    #67e8f9 7%,
                    #00d9ff 22%,
                    #087cff 42%,
                    #4920ff 63%,
                    #d000d9 84%,
                    #6400a8 100%
                );

            box-shadow:
                0 0 20px #00eaff,
                0 0 50px #008cff,
                0 0 100px rgba(217,0,255,.8),
                0 0 150px rgba(124,58,237,.4);

            animation:
                lsSpherePulse 4s ease-in-out infinite;

            z-index: 2;
        }

        @keyframes lsSpherePulse {

            0%,100% {
                transform:
                    translate(-50%,-50%)
                    scale(1);
            }

            50% {
                transform:
                    translate(-50%,-50%)
                    scale(1.08);
            }
        }


        .ls-sphere:before {

            content: "";

            position: absolute;

            width: 75px;
            height: 75px;

            top: 25px;
            left: 35px;

            border-radius: 50%;

            background:
                radial-gradient(
                    circle,
                    rgba(255,255,255,.95),
                    rgba(255,255,255,.2),
                    transparent
                );

            filter: blur(5px);
        }

        .ls-sphere:after {

            content: "";

            position: absolute;

            inset: 15px;

            border-radius: 50%;

            border:
                1px solid rgba(255,255,255,.25);

            box-shadow:
                inset 0 0 25px rgba(255,255,255,.25);
        }


        /* =====================================================
           5D RINGS
        ===================================================== */

        .ls-ring {

            position: absolute;

            left: 50%;
            top: 34%;

            border-radius: 50%;

            pointer-events: none;

            z-index: 4;

            border:
                3px solid rgba(255,255,255,.85);

            box-shadow:
                0 0 10px white,
                0 0 25px #00d9ff,
                0 0 45px #ff00cc;
        }

        .ls-ring-one {

            width: 310px;
            height: 90px;

            transform:
                translate(-50%,-50%)
                rotateX(65deg);

            animation:
                lsRingOne 5s linear infinite;
        }

        .ls-ring-two {

            width: 285px;
            height: 125px;

            transform:
                translate(-50%,-50%)
                rotateX(65deg);

            animation:
                lsRingTwo 6s linear infinite;
        }

        .ls-ring-three {

            width: 260px;
            height: 75px;

            transform:
                translate(-50%,-50%)
                rotateX(70deg);

            animation:
                lsRingThree 4s linear infinite;
        }

        @keyframes lsRingOne {

            0% {
                transform:
                    translate(-50%,-50%)
                    rotateX(65deg)
                    rotateZ(0deg);
            }

            100% {
                transform:
                    translate(-50%,-50%)
                    rotateX(65deg)
                    rotateZ(360deg);
            }
        }

        @keyframes lsRingTwo {

            0% {
                transform:
                    translate(-50%,-50%)
                    rotateX(65deg)
                    rotateY(0deg);
            }

            100% {
                transform:
                    translate(-50%,-50%)
                    rotateX(65deg)
                    rotateY(360deg);
            }
        }

        @keyframes lsRingThree {

            0% {
                transform:
                    translate(-50%,-50%)
                    rotateX(70deg)
                    rotateZ(360deg);
            }

            100% {
                transform:
                    translate(-50%,-50%)
                    rotateX(70deg)
                    rotateZ(0deg);
            }
        }


        /* =====================================================
           LEARNSPHERE CONTENT
        ===================================================== */

        .ls-content {

            position: absolute;

            inset: 0;

            z-index: 10;

            display: flex;

            flex-direction: column;

            align-items: center;

            justify-content: flex-end;

            text-align: center;

            padding-bottom: 58px;

            transform-style: preserve-3d;
        }

        .ls-mini {

            color: #d8b4fe;

            font-size: 13px;
            font-weight: 700;

            letter-spacing: 4px;

            margin-bottom: 12px;

            text-shadow:
                0 0 15px #00c6ff;

            transform: translateZ(55px);

            transition: .4s;
        }

        .ls-content h2 {

            margin: 0 0 10px;

            font-size: 52px;

            font-weight: 800;

            color: white;

            text-shadow:
                0 0 8px white,
                0 0 25px #ff00cc,
                0 0 50px #7c3aed;

            transform: translateZ(75px);

            transition: .4s;
        }

        .ls-content p {

            color: #e2e8f0;

            font-size: 16px;

            margin-bottom: 24px;

            transform: translateZ(55px);

            transition: .4s;
        }

        .learnsphere-5d:hover .ls-mini {

            transform:
                translateZ(75px)
                scale(1.08);

            text-shadow:
                0 0 12px white,
                0 0 30px #00c6ff;
        }

        .learnsphere-5d:hover .ls-content h2 {

            transform:
                translateZ(100px)
                scale(1.06);

            text-shadow:
                0 0 10px white,
                0 0 35px #ff00cc,
                0 0 70px #7c3aed;
        }

        .learnsphere-5d:hover .ls-content p {

            transform:
                translateZ(75px);
        }


        /* =====================================================
           EXPLORE BUTTON
        ===================================================== */

        .ls-explore {

            display: inline-block;

            padding: 15px 36px;

            border-radius: 50px;

            color: white !important;

            font-size: 16px;
            font-weight: 700;

            text-decoration: none !important;

            background:
                linear-gradient(
                    90deg,
                    #ec4899,
                    #7c3aed,
                    #2563eb
                );

            background-size: 200% auto;

            box-shadow:
                0 0 20px rgba(236,72,153,.6),
                0 0 45px rgba(124,58,237,.35);

            transform: translateZ(85px);

            transition: .4s;

            animation:
                lsButtonGlow 3s ease-in-out infinite;
        }

        @keyframes lsButtonGlow {

            0%,100% {
                background-position: 0% center;
            }

            50% {
                background-position: 100% center;
            }
        }

        .ls-explore:hover {

            color: white !important;

            text-decoration: none !important;

            transform:
                translateZ(110px)
                translateY(-8px)
                scale(1.08);

            box-shadow:
                0 0 35px rgba(236,72,153,.9),
                0 0 75px rgba(124,58,237,.75);
        }


        /* =====================================================
           FLOATING LIGHTS
        ===================================================== */

        .ls-light {

            position: absolute;

            width: 8px;
            height: 8px;

            border-radius: 50%;

            background: white;

            box-shadow:
                0 0 10px #fff,
                0 0 25px #00c6ff,
                0 0 40px #ff00cc;

            z-index: 6;

            animation:
                lsLightFloat 4s ease-in-out infinite;
        }

        .ls-light-one {
            left: 45px;
            top: 130px;
        }

        .ls-light-two {
            right: 50px;
            top: 190px;
            animation-delay: 1s;
        }

        .ls-light-three {
            left: 70px;
            bottom: 180px;
            animation-delay: 2s;
        }

        @keyframes lsLightFloat {

            0%,100% {
                transform:
                    translateY(0)
                    scale(1);
                opacity: .5;
            }

            50% {
                transform:
                    translateY(-25px)
                    scale(1.6);
                opacity: 1;
            }
        }


        /* =====================================================
           FLOATING 3D SHAPES
        ===================================================== */

        .cube {

            position: absolute;

            width: 55px;
            height: 55px;

            border: 2px solid rgba(216,180,254,.5);

            background: rgba(168,85,247,.12);

            box-shadow:
                0 0 25px rgba(168,85,247,.25),
                inset 0 0 20px rgba(168,85,247,.12);

            transform: rotate(35deg);

            animation:
                cubeFloat 5s ease-in-out infinite;

            z-index: 20;
        }

        .cube-one {
            top: 40px;
            right: 40px;
        }

        .cube-two {

            bottom: 30px;
            left: 20px;

            width: 35px;
            height: 35px;

            animation-delay: 1.5s;
        }

        @keyframes cubeFloat {

            0%,100% {
                transform:
                    translateY(0)
                    rotate(35deg);
            }

            50% {
                transform:
                    translateY(-25px)
                    rotate(90deg);
            }
        }

        .diamond {

            position: absolute;

            width: 28px;
            height: 28px;

            background:
                linear-gradient(
                    135deg,
                    #ec4899,
                    #8b5cf6
                );

            transform: rotate(45deg);

            box-shadow:
                0 0 25px rgba(236,72,153,.7);

            animation:
                diamondFloat 4s ease-in-out infinite;

            z-index: 20;
        }

        .diamond-one {

            left: 35px;
            top: 80px;
        }

        .diamond-two {

            right: 80px;
            bottom: 50px;

            animation-delay: 1s;
        }

        @keyframes diamondFloat {

            0%,100% {
                transform:
                    translateY(0)
                    rotate(45deg);
            }

            50% {
                transform:
                    translateY(-25px)
                    rotate(135deg);
            }
        }


        /* =====================================================
           PANEL SECTION
        ===================================================== */

        .panel-section {

            position: relative;

            padding: 110px 0;

            background:
                radial-gradient(
                    circle at 50% 0%,
                    rgba(124,58,237,.18),
                    transparent 45%
                ),
                #09051a;

            overflow: hidden;
        }

        .panel-heading {

            text-align: center;

            position: relative;

            z-index: 5;

            margin-bottom: 70px;
        }

        .section-badge {

            display: inline-block;

            padding: 9px 23px;

            border-radius: 30px;

            color: #e9d5ff;

            font-size: 13px;
            font-weight: 700;

            letter-spacing: 2px;

            background: rgba(139,92,246,.12);

            border:
                1px solid rgba(196,181,253,.3);

            box-shadow:
                0 0 25px rgba(139,92,246,.12);
        }

        .section-title {

            font-size: 48px;

            font-weight: 800;

            margin: 20px 0 15px;

            background:
                linear-gradient(
                    90deg,
                    #ffffff,
                    #d8b4fe,
                    #f0abfc
                );

            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .section-description {

            color: #94a3b8;

            font-size: 17px;
        }


        /* =====================================================
           3D PANEL CARDS
        ===================================================== */

        .panel-wrapper {

            perspective: 1200px;

            height: 100%;
        }

        .panel-box {

            position: relative;

            height: 100%;

            min-height: 390px;

            padding: 45px 30px;

            text-align: center;

            border-radius: 30px;

            background:
                linear-gradient(
                    145deg,
                    rgba(255,255,255,.11),
                    rgba(255,255,255,.035)
                );

            border:
                1px solid rgba(255,255,255,.12);

            backdrop-filter: blur(20px);

            box-shadow:
                0 30px 60px rgba(0,0,0,.35),
                inset 0 0 30px rgba(255,255,255,.025);

            transform-style: preserve-3d;

            transition:
                transform .2s ease,
                box-shadow .4s ease;

            overflow: hidden;
        }

        .panel-box:before {

            content: "";

            position: absolute;

            inset: -2px;

            border-radius: 30px;

            padding: 2px;

            background:
                linear-gradient(
                    120deg,
                    transparent,
                    #8b5cf6,
                    #ec4899,
                    #3b82f6,
                    transparent
                );

            background-size: 300% 300%;

            animation:
                cardBorder 5s linear infinite;

            -webkit-mask:
                linear-gradient(#fff 0 0) content-box,
                linear-gradient(#fff 0 0);

            -webkit-mask-composite: xor;

            mask-composite: exclude;

            pointer-events: none;
        }

        @keyframes cardBorder {

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

        .panel-box:hover {

            box-shadow:
                0 40px 80px rgba(0,0,0,.5),
                0 0 35px rgba(139,92,246,.18);
        }

        .card-content {

            position: relative;

            z-index: 5;

            transform: translateZ(45px);
        }


        /* =====================================================
           3D ICONS
        ===================================================== */

        .icon-circle {

            width: 95px;
            height: 95px;

            margin: 0 auto 28px;

            border-radius: 28px;

            display: flex;

            align-items: center;
            justify-content: center;

            font-size: 37px;

            color: #fff;

            transform:
                translateZ(55px)
                rotate(-5deg);

            box-shadow:
                0 20px 35px rgba(0,0,0,.35),
                inset 0 0 20px rgba(255,255,255,.18);

            transition: .4s;
        }

        .panel-box:hover .icon-circle {

            transform:
                translateZ(75px)
                rotate(0deg)
                scale(1.08);
        }

        .icon-purple {

            background:
                linear-gradient(
                    135deg,
                    #7c3aed,
                    #a855f7
                );
        }

        .icon-pink {

            background:
                linear-gradient(
                    135deg,
                    #db2777,
                    #ec4899
                );
        }

        .icon-blue {

            background:
                linear-gradient(
                    135deg,
                    #2563eb,
                    #06b6d4
                );
        }

        .panel-box h3 {

            font-size: 26px;

            font-weight: 700;

            color: #fff;

            margin-bottom: 17px;
        }

        .panel-box p {

            color: #aeb8c9;

            font-size: 15px;

            line-height: 28px;

            min-height: 85px;

            margin-bottom: 25px;
        }


        /* =====================================================
           PANEL BUTTON
        ===================================================== */

        .panel-btn {

            position: relative;

            display: block;

            width: 100%;

            padding: 14px;

            border-radius: 15px;

            color: white !important;

            font-weight: 700;

            text-decoration: none !important;

            overflow: hidden;

            transition: .35s;

            box-shadow:
                0 10px 25px rgba(0,0,0,.25);
        }

        .panel-btn:before {

            content: "";

            position: absolute;

            top: 0;
            left: -100%;

            width: 60%;
            height: 100%;

            background:
                linear-gradient(
                    90deg,
                    transparent,
                    rgba(255,255,255,.4),
                    transparent
                );

            transform: skewX(-25deg);

            transition: .6s;
        }

        .panel-btn:hover:before {
            left: 140%;
        }

        .panel-btn:hover {

            transform:
                translateY(-5px)
                translateZ(20px);

            color: #fff !important;

            box-shadow:
                0 15px 35px rgba(0,0,0,.35);
        }

        .purple-btn {

            background:
                linear-gradient(
                    135deg,
                    #7c3aed,
                    #a855f7
                );
        }

        .pink-btn {

            background:
                linear-gradient(
                    135deg,
                    #db2777,
                    #ec4899
                );
        }

        .blue-btn {

            background:
                linear-gradient(
                    135deg,
                    #2563eb,
                    #06b6d4
                );
        }


        /* =====================================================
           FOOTER
        ===================================================== */

        .footer-area {

            position: relative;

            padding: 55px 0 30px;

            background:
                radial-gradient(
                    circle at 20% 0%,
                    rgba(168,85,247,.2),
                    transparent 35%
                ),
                linear-gradient(
                    135deg,
                    #09051a,
                    #160b35
                );

            border-top:
                1px solid rgba(255,255,255,.08);

            overflow: hidden;
        }

        .footer-logo {

            font-size: 34px;

            font-weight: 800;
        }

        .footer-text {

            color: #94a3b8;
        }

        .footer-link {

            color: #cbd5e1;

            margin-left: 25px;

            text-decoration: none !important;

            transition: .3s;
        }

        .footer-link:hover {

            color: #d8b4fe;

            text-shadow:
                0 0 15px rgba(216,180,254,.7);
        }

        .copyright {

            color: #64748b;

            font-size: 14px;
        }


        /* =====================================================
           RESPONSIVE
        ===================================================== */

        @media(max-width:991px) {

            .hero {

                padding: 100px 0;
            }

            .hero-title {

                font-size: 52px;
            }

            .hero-text {

                text-align: center;
            }

            .hero-description {

                margin-left: auto;
                margin-right: auto;
            }

            .hero-visual {

                margin-top: 70px;
            }
        }


        @media(max-width:575px) {

            .hero-title {

                font-size: 39px;
            }

            .hero-description {

                font-size: 16px;
            }

            .hero-btn {

                display: block;

                width: 90%;

                margin: 15px auto;
            }

            .section-title {

                font-size: 35px;
            }

            .footer-link {

                display: inline-block;

                margin: 8px;
            }


            /* 5D CARD MOBILE */

            .learnsphere-5d {

                width: 330px;
                height: 480px;

                border-radius: 35px;
            }

            .ls-sphere {

                width: 180px;
                height: 180px;
            }

            .ls-ring-one {

                width: 235px;
                height: 70px;
            }

            .ls-ring-two {

                width: 215px;
                height: 95px;
            }

            .ls-ring-three {

                width: 195px;
                height: 60px;
            }

            .ls-content h2 {

                font-size: 40px;
            }

            .ls-explore {

                padding: 13px 28px;

                font-size: 14px;
            }
        }

    </style>

</head>

<body>

    <!-- =====================================================
         CURSOR GLOW
    ====================================================== -->

    <div class="cursor-glow" id="cursorGlow"></div>


    <!-- =====================================================
         FLOATING PARTICLES
    ====================================================== -->

    <span class="particle p1"></span>
    <span class="particle p2"></span>
    <span class="particle p3"></span>
    <span class="particle p4"></span>
    <span class="particle p5"></span>


    <form id="form1" runat="server">


        <!-- =================================================
             HERO
        ================================================= -->

        <section class="hero">

            <div class="hero-container">

                <div class="container">

                    <div class="row align-items-center">


                        <!-- LEFT CONTENT -->

                        <div class="col-lg-6 hero-text">

                            <span class="welcome">
                                WELCOME TO LEARNSPHERE
                            </span>

                            <h1 class="hero-title">
                                Learn Without Limits
                            </h1>

                            <p class="hero-description">
                                A modern online learning platform where students
                                can discover courses, watch HD video lessons
                                and earn professional certificates.
                            </p>


                            <a href="Index2.aspx"
                               class="hero-btn student-btn">

                                <i class="fa fa-graduation-cap"></i>
                                &nbsp; Student Panel

                            </a>


                            <a href="AdminLogin.aspx"
                               class="hero-btn admin-btn">

                                <i class="fa fa-user-secret"></i>
                                &nbsp; Admin Login

                            </a>

                        </div>


                        <!-- RIGHT 5D LEARNSPHERE CARD -->

                        <div class="col-lg-6">

                            <div class="hero-visual">


                                <!-- Floating Shapes -->

                                <div class="cube cube-one"></div>

                                <div class="cube cube-two"></div>

                                <div class="diamond diamond-one"></div>

                                <div class="diamond diamond-two"></div>


                                <!-- =================================================
                                     LEARNSPHERE 5D CARD
                                ================================================== -->

                                <div class="learnsphere-5d">


                                    <!-- Floating Lights -->

                                    <div class="ls-light ls-light-one"></div>

                                    <div class="ls-light ls-light-two"></div>

                                    <div class="ls-light ls-light-three"></div>


                                    <!-- Glowing Sphere -->

                                    <div class="ls-sphere"></div>


                                    <!-- Rotating Rings -->

                                    <div class="ls-ring ls-ring-one"></div>

                                    <div class="ls-ring ls-ring-two"></div>

                                    <div class="ls-ring ls-ring-three"></div>


                                    <!-- Content -->

                                    <div class="ls-content">

                                        <div class="ls-mini">
                                            ONLINE LEARNING
                                        </div>

                                        <h2>
                                            LearnSphere
                                        </h2>

                                        <p>
                                            Learn • Practice • Achieve
                                        </p>

                                        <a href="Index2.aspx"
                                           class="ls-explore">

                                            Explore Courses ✨

                                        </a>

                                    </div>

                                </div>

                            </div>

                        </div>

                    </div>

                </div>

            </div>

        </section>


        <!-- =================================================
             PANEL SECTION
        ================================================= -->

        <section class="panel-section">

            <div class="container">


                <!-- Heading -->

                <div class="panel-heading">

                    <span class="section-badge">
                        GET STARTED
                    </span>

                    <h2 class="section-title">
                        Choose Your Panel
                    </h2>

                    <p class="section-description">
                        Select the appropriate panel to continue your
                        learning journey.
                    </p>

                </div>


                <div class="row">


                    <!-- =================================================
                         PUBLIC WEBSITE
                    ================================================= -->

                    <div class="col-lg-4 col-md-6 mb-4">

                        <div class="panel-wrapper">

                            <div class="panel-box">

                                <div class="card-content">


                                    <div class="icon-circle icon-purple">

                                        <i class="fa fa-globe"></i>

                                    </div>


                                    <h3>
                                        Public Website
                                    </h3>


                                    <p>
                                        Explore courses, categories,
                                        about us and contact information.
                                    </p>


                                    <a href="index.aspx"
                                       class="panel-btn purple-btn">

                                        <i class="fa fa-external-link"></i>

                                        &nbsp; Visit Website

                                    </a>

                                </div>

                            </div>

                        </div>

                    </div>


                    <!-- =================================================
                         STUDENT PANEL
                    ================================================= -->

                    <div class="col-lg-4 col-md-6 mb-4">

                        <div class="panel-wrapper">

                            <div class="panel-box">

                                <div class="card-content">


                                    <div class="icon-circle icon-pink">

                                        <i class="fa fa-graduation-cap"></i>

                                    </div>


                                    <h3>
                                        Student Panel
                                    </h3>


                                    <p>
                                        Access your enrolled courses,
                                        video lessons and certificates.
                                    </p>


                                    <a href="Index2.aspx"
                                       class="panel-btn pink-btn">

                                        <i class="fa fa-sign-in"></i>

                                        &nbsp; Student Login

                                    </a>

                                </div>

                            </div>

                        </div>

                    </div>


                    <!-- =================================================
                         ADMIN PANEL
                    ================================================= -->

                    <div class="col-lg-4 col-md-6 mb-4">

                        <div class="panel-wrapper">

                            <div class="panel-box">

                                <div class="card-content">


                                    <div class="icon-circle icon-blue">

                                        <i class="fa fa-user-secret"></i>

                                    </div>


                                    <h3>
                                        Admin Panel
                                    </h3>


                                    <p>
                                        Manage students, courses,
                                        videos and system settings.
                                    </p>


                                    <a href="AdminLogin.aspx"
                                       class="panel-btn blue-btn">

                                        <i class="fa fa-lock"></i>

                                        &nbsp; Admin Login

                                    </a>

                                </div>

                            </div>

                        </div>

                    </div>

                </div>

            </div>

        </section>


        <!-- =================================================
             FOOTER
        ================================================= -->

        <footer class="footer-area">

            <div class="container">

                <div class="row align-items-center">


                    <div class="col-md-6">

                        <h3 class="footer-logo">

                            <span style="color:#ffffff;">
                                Learn
                            </span>

                            <span style="color:#d8b4fe;">
                                Sphere
                            </span>

                        </h3>


                        <p class="footer-text">
                            Learn. Practice. Achieve.
                        </p>

                    </div>


                    <div class="col-md-6 text-md-right text-center mt-3 mt-md-0">

                        <a href="index.aspx"
                           class="footer-link">
                            Website
                        </a>


                        <a href="Index2.aspx"
                           class="footer-link">
                            Student
                        </a>


                        <a href="AdminLogin.aspx"
                           class="footer-link">
                            Admin
                        </a>

                    </div>

                </div>


                <hr style="background:rgba(255,255,255,.15);" />


                <div class="text-center">

                    <p class="copyright">
                        © 2026 LearnSphere | Online Course Learning System
                    </p>

                </div>

            </div>

        </footer>


    </form>


    <!-- =====================================================
         JAVASCRIPT
    ====================================================== -->

    <script>

        /* =====================================================
           CURSOR GLOW
        ===================================================== */

        document.addEventListener("mousemove", function (e) {

            var glow =
                document.getElementById("cursorGlow");

            if (glow) {

                glow.style.left =
                    e.clientX + "px";

                glow.style.top =
                    e.clientY + "px";
            }

        });


        /* =====================================================
           3D PANEL CARD TILT
        ===================================================== */

        var cards =
            document.querySelectorAll(".panel-box");


        cards.forEach(function (card) {

            card.addEventListener("mousemove", function (e) {

                var rect =
                    card.getBoundingClientRect();

                var x =
                    e.clientX - rect.left;

                var y =
                    e.clientY - rect.top;

                var centerX =
                    rect.width / 2;

                var centerY =
                    rect.height / 2;

                var rotateX =
                    ((y - centerY) / centerY) * -6;

                var rotateY =
                    ((x - centerX) / centerX) * 6;


                card.style.transform =
                    "perspective(1000px) rotateX(" +
                    rotateX +
                    "deg) rotateY(" +
                    rotateY +
                    "deg) translateY(-10px)";

            });


            card.addEventListener("mouseleave", function () {

                card.style.transform =
                    "perspective(1000px) rotateX(0deg) rotateY(0deg) translateY(0)";

            });

        });


        /* =====================================================
           5D LEARNSPHERE CARD TILT
        ===================================================== */

        var learnSphere =
            document.querySelector(".learnsphere-5d");


        if (learnSphere) {

            learnSphere.addEventListener(
                "mousemove",
                function (e) {

                    var rect =
                        learnSphere.getBoundingClientRect();

                    var x =
                        e.clientX - rect.left;

                    var y =
                        e.clientY - rect.top;


                    var rotateY =
                        ((x - rect.width / 2) /
                            rect.width) * 14;


                    var rotateX =
                        ((y - rect.height / 2) /
                            rect.height) * -14;


                    learnSphere.style.animation =
                        "none";


                    learnSphere.style.transform =
                        "perspective(1200px) " +
                        "rotateX(" +
                        rotateX +
                        "deg) " +
                        "rotateY(" +
                        rotateY +
                        "deg) " +
                        "translateY(-10px) " +
                        "scale(1.02)";

                }
            );


            learnSphere.addEventListener(
                "mouseleave",
                function () {

                    learnSphere.style.animation =
                        "learnSphereFloat 5s ease-in-out infinite";

                    learnSphere.style.transform =
                        "";

                }
            );

        }

    </script>

</body>
</html>