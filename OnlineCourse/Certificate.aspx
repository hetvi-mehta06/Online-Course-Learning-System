<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="Certificate.aspx.cs" Inherits="OnlineCourse.Certificate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>

/* =========================================================
   LUXURY CERTIFICATE EXPERIENCE
   ========================================================= */

.lux-cert {
    position: relative;
    overflow: hidden;
    min-height: 100vh;
    background:
        radial-gradient(circle at 10% 15%, rgba(117,65,255,.18), transparent 28%),
        radial-gradient(circle at 90% 20%, rgba(0,210,255,.14), transparent 25%),
        radial-gradient(circle at 50% 100%, rgba(174,89,255,.15), transparent 35%),
        #080712;
}


/* =========================================================
   BACKGROUND LIGHT
   ========================================================= */

.lux-cert .ambient {
    position: absolute;
    width: 500px;
    height: 500px;
    border-radius: 50%;
    filter: blur(80px);
    opacity: .20;
    pointer-events: none;
}

.ambient.one {
    background: #713cff;
    left: -180px;
    top: 300px;
    animation: ambientMove1 9s ease-in-out infinite alternate;
}

.ambient.two {
    background: #00cfff;
    right: -180px;
    top: 550px;
    animation: ambientMove2 10s ease-in-out infinite alternate;
}


/* =========================================================
   HERO
   ========================================================= */

.lux-hero {
    position: relative;
    height: 330px;
    overflow: hidden;
    background:
        linear-gradient(
            135deg,
            rgba(10,5,30,.94),
            rgba(43,17,86,.90),
            rgba(0,62,90,.84)
        ),
        url('images/bg_2.jpg');

    background-size: cover;
    background-position: center;
}

.lux-hero::before {
    content: "";
    position: absolute;
    inset: 0;

    background:
        radial-gradient(circle at 50% 50%,
        rgba(255,255,255,.12),
        transparent 28%);
}

.lux-hero-content {
    position: relative;
    z-index: 3;
    height: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
}

.lux-small-title {
    color: #d7b85b;
    font-size: 14px;
    letter-spacing: 6px;
    text-transform: uppercase;
    font-weight: 700;

    animation: heroSmall 1s ease-out both;
}

.lux-hero h1 {
    margin: 12px 0 0;

    color: white;
    font-size: 56px;
    font-weight: 900;
    letter-spacing: 1px;

    text-shadow:
        0 5px 0 rgba(0,0,0,.25),
        0 15px 40px rgba(0,0,0,.55);

    animation: heroEnter 1.2s cubic-bezier(.17,.67,.25,1) both;
}


/* =========================================================
   CELEBRATION LAYER
   ========================================================= */

.fireworks {
    position: absolute;
    inset: 0;
    z-index: 20;
    pointer-events: none;
    overflow: hidden;
}


/* fireworks burst */
.firework {
    position: absolute;
    width: 8px;
    height: 8px;
    border-radius: 50%;
    animation: fireworkBurst 2.2s ease-out forwards;
}

.firework.left {
    left: 15%;
    top: 38%;
}

.firework.right {
    right: 15%;
    top: 38%;
}

.firework.center {
    left: 50%;
    top: 18%;
}


/* particles */

.firework span {
    position: absolute;
    width: 7px;
    height: 7px;
    border-radius: 50%;

    transform:
        rotate(calc(var(--r) * 1deg))
        translateY(-10px);

    animation: fireParticle 1.9s ease-out forwards;
}


/* =========================================================
   PARTICLE POSITIONS
   ========================================================= */

.firework span:nth-child(1)  { --r:0; }
.firework span:nth-child(2)  { --r:30; }
.firework span:nth-child(3)  { --r:60; }
.firework span:nth-child(4)  { --r:90; }
.firework span:nth-child(5)  { --r:120; }
.firework span:nth-child(6)  { --r:150; }
.firework span:nth-child(7)  { --r:180; }
.firework span:nth-child(8)  { --r:210; }
.firework span:nth-child(9)  { --r:240; }
.firework span:nth-child(10) { --r:270; }
.firework span:nth-child(11) { --r:300; }
.firework span:nth-child(12) { --r:330; }


/* =========================================================
   GOLD DUST
   ========================================================= */

.gold-dust {
    position: absolute;
    inset: 0;
    pointer-events: none;
    overflow: hidden;
    z-index: 3;
}

.gold-dust span {
    position: absolute;
    width: 4px;
    height: 4px;

    background: #f5d77a;
    border-radius: 50%;

    box-shadow:
        0 0 8px #f5d77a,
        0 0 16px rgba(245,215,122,.7);

    animation: dustFall 5s linear infinite;
}

.gold-dust span:nth-child(1) { left:5%;  animation-delay:.2s; }
.gold-dust span:nth-child(2) { left:12%; animation-delay:1.1s; }
.gold-dust span:nth-child(3) { left:20%; animation-delay:2s; }
.gold-dust span:nth-child(4) { left:28%; animation-delay:.7s; }
.gold-dust span:nth-child(5) { left:36%; animation-delay:1.7s; }
.gold-dust span:nth-child(6) { left:45%; animation-delay:.4s; }
.gold-dust span:nth-child(7) { left:55%; animation-delay:2.3s; }
.gold-dust span:nth-child(8) { left:63%; animation-delay:1.3s; }
.gold-dust span:nth-child(9) { left:72%; animation-delay:.8s; }
.gold-dust span:nth-child(10){ left:80%; animation-delay:2.1s; }
.gold-dust span:nth-child(11){ left:89%; animation-delay:.5s; }
.gold-dust span:nth-child(12){ left:96%; animation-delay:1.8s; }


/* =========================================================
   CERTIFICATE AREA
   ========================================================= */

.lux-stage {
    position: relative;
    z-index: 5;
    padding: 90px 15px 120px;
    perspective: 1800px;
}


/* =========================================================
   3D CARD
   ========================================================= */

.lux-certificate {

    position: relative;

    max-width: 1080px;
    margin: auto;

    padding: 70px 80px;

    border-radius: 10px;

    background:
        linear-gradient(
            145deg,
            #fffef9 0%,
            #fffdf5 35%,
            #f9f4e6 100%
        );

    box-shadow:
        0 60px 120px rgba(0,0,0,.55),
        0 25px 50px rgba(111,54,190,.22),
        inset 0 0 0 1px rgba(255,255,255,.9);

    transform-style: preserve-3d;

    animation:
        certificateReveal 1.5s cubic-bezier(.16,.8,.25,1) both,
        certificateFloat 7s ease-in-out 1.6s infinite;

    transition:
        box-shadow .5s ease,
        transform .5s ease;
}


/* luxury border */
.lux-certificate::before {

    content: "";

    position: absolute;

    inset: -7px;

    border-radius: 16px;

    background:
        linear-gradient(
            120deg,
            #8c5cff,
            #d6ad4c,
            #fff1a8,
            #00bfe8,
            #8c5cff
        );

    background-size: 300% 300%;

    z-index: -2;

    animation: luxuryBorder 5s linear infinite;
}


/* black shadow frame */
.lux-certificate::after {

    content: "";

    position: absolute;

    inset: -15px;

    border-radius: 20px;

    border: 1px solid rgba(255,255,255,.08);

    box-shadow:
        0 0 0 10px rgba(255,255,255,.015);

    z-index: -3;
}


/* hover */

.lux-certificate:hover {

    transform:
        rotateX(2deg)
        rotateY(-2deg)
        translateY(-12px)
        scale(1.012);

    box-shadow:
        0 75px 140px rgba(0,0,0,.62),
        0 30px 70px rgba(115,66,255,.28);
}


/* =========================================================
   INNER GOLD FRAME
   ========================================================= */

.gold-frame {

    position: absolute;
    inset: 20px;

    border: 2px solid #c7a449;

    pointer-events: none;

    box-shadow:
        inset 0 0 30px rgba(199,164,73,.10);
}


/* second frame */

.gold-frame::after {

    content: "";

    position: absolute;

    inset: 9px;

    border: 1px solid rgba(199,164,73,.55);
}


/* =========================================================
   ORNAMENTS
   ========================================================= */

.ornament {

    position: absolute;

    width: 100px;
    height: 100px;

    z-index: 4;
}

.ornament::before,
.ornament::after {

    content: "";

    position: absolute;

    border-color: #c6a14b;
}

.ornament::before {
    width: 65px;
    height: 65px;
}

.ornament::after {
    width: 30px;
    height: 30px;
}

.ornament.tl {
    top: 35px;
    left: 35px;
}

.ornament.tr {
    top: 35px;
    right: 35px;
    transform: rotate(90deg);
}

.ornament.bl {
    bottom: 35px;
    left: 35px;
    transform: rotate(-90deg);
}

.ornament.br {
    bottom: 35px;
    right: 35px;
    transform: rotate(180deg);
}

.ornament::before {
    border-top: 3px solid;
    border-left: 3px solid;
    border-radius: 25px 0 0 0;
}

.ornament::after {
    left: 12px;
    top: 12px;
    border-top: 2px solid;
    border-left: 2px solid;
    border-radius: 15px 0 0 0;
}


/* =========================================================
   CONTENT
   ========================================================= */

.lux-content {

    position: relative;
    z-index: 10;

    text-align: center;

    transform-style: preserve-3d;
}


/* academy */

.lux-academy {

    color: #6d4ab2;

    font-size: 17px;
    font-weight: 800;

    letter-spacing: 7px;

    text-transform: uppercase;

    transform: translateZ(45px);

    animation: contentUp 1s ease-out .4s both;
}


/* title */

.lux-title {

    margin: 12px 0 0;

    font-size: 76px;

    font-weight: 900;

    letter-spacing: 2px;

    background:
        linear-gradient(
            135deg,
            #4a2a89,
            #a27724,
            #d8ae4c,
            #5b349e
        );

    -webkit-background-clip: text;
    background-clip: text;

    color: transparent;

    transform: translateZ(70px);

    text-shadow:
        0 8px 20px rgba(90,55,150,.14);

    animation: titleLuxury 1.3s cubic-bezier(.15,.75,.25,1) .2s both;
}


/* subtitle */

.lux-subtitle {

    margin-top: -5px;

    font-size: 18px;

    color: #82775f;

    letter-spacing: 8px;

    text-transform: uppercase;

    transform: translateZ(45px);

    animation: contentUp 1s ease-out .7s both;
}


/* presented */

.lux-presented {

    margin-top: 45px;

    color: #777;

    font-size: 16px;

    transform: translateZ(40px);

    animation: contentUp 1s ease-out .8s both;
}


/* student */

.lux-student {

    margin: 10px 0 18px;

    font-size: 48px;

    font-weight: 900;

    color: #4d2b8e;

    text-shadow:
        0 5px 15px rgba(77,43,142,.22);

    transform: translateZ(90px);

    animation:
        studentLuxury 1.3s cubic-bezier(.15,.8,.25,1) .9s both;

    transition:
        transform .4s ease,
        text-shadow .4s ease;
}

.lux-student:hover {

    transform:
        translateZ(105px)
        scale(1.07);

    text-shadow:
        0 12px 35px rgba(77,43,142,.35);
}


/* course */

.lux-course-label {

    color: #777;

    font-size: 16px;

    transform: translateZ(40px);
}

.lux-course {

    margin-top: 8px;

    font-size: 32px;

    font-weight: 800;

    color: #25212e;

    transform: translateZ(65px);

    animation: contentUp 1s ease-out 1.15s both;
}


/* =========================================================
   MEDALLION
   ========================================================= */

.medallion {

    position: relative;

    width: 125px;
    height: 125px;

    margin: 32px auto 20px;

    border-radius: 50%;

    background:
        radial-gradient(
            circle,
            #fff3a8 0%,
            #d7ad46 35%,
            #9d7022 65%,
            #5e4215 100%
        );

    border: 6px double #fff3a8;

    box-shadow:
        0 10px 30px rgba(110,77,20,.30),
        inset 0 0 20px rgba(255,255,255,.45);

    transform:
        translateZ(80px)
        rotateY(0deg);

    animation:
        medallionReveal 1.4s ease-out 1.2s both,
        medalFloat 4s ease-in-out 2.6s infinite;
}

.medallion::before {

    content: "";

    position: absolute;

    inset: 10px;

    border-radius: 50%;

    border: 2px solid rgba(255,255,255,.7);
}

.medallion i {

    position: absolute;

    left: 50%;
    top: 50%;

    transform: translate(-50%,-50%);

    color: white;

    font-size: 38px;

    text-shadow:
        0 3px 8px rgba(0,0,0,.3);
}

.medallion span {

    position: absolute;

    left: 50%;
    bottom: 17px;

    transform: translateX(-50%);

    color: white;

    font-size: 9px;

    font-weight: 800;

    letter-spacing: 2px;
}


/* =========================================================
   DIVIDER
   ========================================================= */

.lux-divider {

    width: 240px;
    height: 3px;

    margin: 28px auto;

    background:
        linear-gradient(
            90deg,
            transparent,
            #c49a39,
            #f6dc87,
            #c49a39,
            transparent
        );

    box-shadow:
        0 0 15px rgba(196,154,57,.35);

    animation: dividerReveal 1s ease-out 1.2s both;
}


/* =========================================================
   DETAILS
   ========================================================= */

.lux-details {

    margin-top: 25px;

    color: #5e5a51;

    font-size: 15px;

    transform: translateZ(45px);

    animation: contentUp 1s ease-out 1.35s both;
}

.lux-details p {
    margin: 7px 0;
}

.lux-details strong {
    color: #302a21;
}


/* =========================================================
   SIGNATURE
   ========================================================= */

.lux-signatures {

    margin-top: 45px;

    transform: translateZ(45px);
}

.signature-line {

    width: 190px;

    margin: auto auto 10px;

    border-top: 2px solid #4b463e;
}

.signature-title {

    color: #777;

    font-size: 12px;

    font-weight: 800;

    letter-spacing: 2px;

    text-transform: uppercase;
}


/* =========================================================
   BUTTONS
   ========================================================= */

.lux-buttons {

    margin-top: 45px;

    transform: translateZ(65px);

    animation: contentUp 1s ease-out 1.5s both;
}

.lux-btn {

    display: inline-block;

    padding: 15px 28px;

    margin: 5px;

    border-radius: 50px;

    font-weight: 800;

    text-decoration: none !important;

    transition:
        transform .3s ease,
        box-shadow .3s ease;
}

.lux-btn:hover {

    transform:
        translateY(-7px)
        translateZ(20px)
        scale(1.05);
}

.download-btn {

    color: white !important;

    background:
        linear-gradient(
            135deg,
            #6941c6,
            #3d79e8
        );

    box-shadow:
        0 12px 30px rgba(74,62,190,.35);
}

.back-btn {

    color: white !important;

    background:
        linear-gradient(
            135deg,
            #0ca678,
            #087f5b
        );

    box-shadow:
        0 12px 30px rgba(12,166,120,.30);
}


/* =========================================================
   ANIMATIONS
   ========================================================= */

@keyframes certificateReveal {

    0% {
        opacity: 0;

        transform:
            perspective(1800px)
            rotateX(35deg)
            rotateY(-25deg)
            translateY(150px)
            scale(.72);
    }

    55% {
        opacity: 1;

        transform:
            perspective(1800px)
            rotateX(-5deg)
            rotateY(5deg)
            translateY(-15px)
            scale(1.025);
    }

    100% {

        opacity: 1;

        transform:
            perspective(1800px)
            rotateX(0)
            rotateY(0)
            translateY(0)
            scale(1);
    }
}


@keyframes certificateFloat {

    0%,100% {

        transform:
            perspective(1800px)
            rotateX(0)
            rotateY(0)
            translateY(0);
    }

    50% {

        transform:
            perspective(1800px)
            rotateX(1deg)
            rotateY(-1deg)
            translateY(-9px);
    }
}


@keyframes luxuryBorder {

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


@keyframes heroEnter {

    0% {
        opacity: 0;
        transform:
            perspective(700px)
            rotateX(60deg)
            translateY(70px);
    }

    100% {
        opacity: 1;
        transform:
            perspective(700px)
            rotateX(0)
            translateY(0);
    }
}


@keyframes heroSmall {

    0% {
        opacity: 0;
        transform: translateY(-25px);
    }

    100% {
        opacity: 1;
        transform: translateY(0);
    }
}


@keyframes contentUp {

    0% {
        opacity: 0;
        transform:
            translateY(35px)
            translateZ(0);
    }

    100% {
        opacity: 1;
        transform:
            translateY(0)
            translateZ(45px);
    }
}


@keyframes titleLuxury {

    0% {
        opacity: 0;

        transform:
            perspective(700px)
            rotateX(75deg)
            translateZ(-100px)
            translateY(50px)
            scale(.75);
    }

    100% {
        opacity: 1;

        transform:
            perspective(700px)
            rotateX(0)
            translateZ(70px)
            translateY(0)
            scale(1);
    }
}


@keyframes studentLuxury {

    0% {
        opacity: 0;

        transform:
            translateZ(-100px)
            rotateX(30deg)
            scale(.55);
    }

    70% {
        opacity: 1;

        transform:
            translateZ(105px)
            rotateX(-3deg)
            scale(1.08);
    }

    100% {
        opacity: 1;

        transform:
            translateZ(90px)
            rotateX(0)
            scale(1);
    }
}


@keyframes medallionReveal {

    0% {
        opacity: 0;

        transform:
            translateZ(-100px)
            rotateY(180deg)
            scale(.4);
    }

    100% {
        opacity: 1;

        transform:
            translateZ(80px)
            rotateY(0)
            scale(1);
    }
}


@keyframes medalFloat {

    0%,100% {
        transform:
            translateZ(80px)
            translateY(0)
            rotateY(0);
    }

    50% {
        transform:
            translateZ(90px)
            translateY(-7px)
            rotateY(8deg);
    }
}


@keyframes dividerReveal {

    0% {
        width: 0;
        opacity: 0;
    }

    100% {
        width: 240px;
        opacity: 1;
    }
}


/* =========================================================
   FIREWORKS
   ========================================================= */

@keyframes fireParticle {

    0% {
        opacity: 1;
        transform:
            rotate(calc(var(--r) * 1deg))
            translateY(0)
            scale(.3);
    }

    60% {
        opacity: 1;
        transform:
            rotate(calc(var(--r) * 1deg))
            translateY(-115px)
            scale(1);
    }

    100% {
        opacity: 0;
        transform:
            rotate(calc(var(--r) * 1deg))
            translateY(-175px)
            scale(.05);
    }
}


@keyframes fireworkBurst {

    0% {
        transform: scale(.2);
    }

    20% {
        transform: scale(1.4);
    }

    100% {
        transform: scale(1);
    }
}


/* =========================================================
   GOLD DUST
   ========================================================= */

@keyframes dustFall {

    0% {
        top: -10px;
        opacity: 0;
        transform: rotate(0);
    }

    15% {
        opacity: .9;
    }

    100% {
        top: 105%;
        opacity: 0;
        transform: rotate(360deg);
    }
}


/* =========================================================
   AMBIENT
   ========================================================= */

@keyframes ambientMove1 {

    from {
        transform: translate(0,0);
    }

    to {
        transform: translate(160px,100px);
    }
}


@keyframes ambientMove2 {

    from {
        transform: translate(0,0);
    }

    to {
        transform: translate(-140px,-80px);
    }
}


/* =========================================================
   RESPONSIVE
   ========================================================= */

@media(max-width:768px) {

    .lux-hero {
        height: 270px;
    }

    .lux-hero h1 {
        font-size: 38px;
    }

    .lux-stage {
        padding: 55px 12px 80px;
    }

    .lux-certificate {
        padding: 55px 25px;
    }

    .lux-title {
        font-size: 48px;
    }

    .lux-subtitle {
        font-size: 13px;
        letter-spacing: 4px;
    }

    .lux-student {
        font-size: 32px;
    }

    .lux-course {
        font-size: 24px;
    }

    .gold-frame {
        inset: 12px;
    }

    .ornament {
        transform: scale(.65);
    }

    .lux-buttons .lux-btn {
        display: block;
        margin: 10px auto;
        max-width: 270px;
    }
}


@media(prefers-reduced-motion:reduce) {

    .lux-cert *,
    .lux-cert *::before,
    .lux-cert *::after {

        animation: none !important;
        transition: none !important;
    }
}

</style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="lux-cert">

    <!-- Ambient background -->
    <div class="ambient one"></div>
    <div class="ambient two"></div>


    <!-- =====================================================
         FIREWORK CELEBRATION
         ===================================================== -->

    <div class="fireworks">

        <div class="firework left">

            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>

        </div>


        <div class="firework right">

            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>

        </div>


        <div class="firework center">

            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>

        </div>

    </div>


    <!-- Gold particles -->

    <div class="gold-dust">

        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>

    </div>


    <!-- =====================================================
         HERO
         ===================================================== -->

    <section class="lux-hero">

        <div class="lux-hero-content">

            <div class="lux-small-title">
                LearnSphere Academy
            </div>

            <h1>
                Course Certificate
            </h1>

        </div>

    </section>


    <!-- =====================================================
         CERTIFICATE
         ===================================================== -->

    <section class="lux-stage">

        <div class="container">

            <div class="lux-certificate">


                <!-- Frames -->

                <div class="gold-frame"></div>


                <!-- Corner ornaments -->

                <div class="ornament tl"></div>
                <div class="ornament tr"></div>
                <div class="ornament bl"></div>
                <div class="ornament br"></div>


                <div class="lux-content">


                    <!-- Academy -->

                    <div class="lux-academy">
                        LearnSphere Academy
                    </div>


                    <!-- Title -->

                    <div class="lux-title">
                        Certificate
                    </div>


                    <div class="lux-subtitle">
                        of Completion
                    </div>


                    <!-- Presented -->

                    <div class="lux-presented">
                        This Certificate is proudly presented to
                    </div>


                    <!-- Student -->

                    <div class="lux-student">
                        Vaibhavi Raiyani
                    </div>


                    <!-- Course -->

                    <div class="lux-course-label">
                        For Successfully Completing the Course
                    </div>


                    <div class="lux-course">
                        ASP.NET Web Forms
                    </div>


                    <!-- Gold divider -->

                    <div class="lux-divider"></div>


                    <!-- Medal -->

                    <div class="medallion">

                        <i class="fa fa-trophy"></i>

                        <span>
                            VERIFIED
                        </span>

                    </div>


                    <!-- Details -->

                    <div class="lux-details">

                        <p>
                            <strong>Instructor :</strong>
                            Tony Garret
                        </p>

                        <p>
                            <strong>Completion Date :</strong>
                            25 July 2026
                        </p>

                        <p>
                            <strong>Certificate ID :</strong>
                            LS20260001
                        </p>

                    </div>


                    <!-- Signatures -->

                    <div class="row lux-signatures">

                        <div class="col-md-6">

                            <div class="signature-line"></div>

                            <div class="signature-title">
                                Instructor Signature
                            </div>

                        </div>


                        <div class="col-md-6">

                            <div class="signature-line"></div>

                            <div class="signature-title">
                                Director Signature
                            </div>

                        </div>

                    </div>


                    <!-- Buttons -->

                    <div class="lux-buttons">

                        <a href="#"
                           class="lux-btn download-btn">

                            <i class="fa fa-download"></i>

                            &nbsp; Download PDF

                        </a>


                        <a href="MyCourses.aspx"
                           class="lux-btn back-btn">

                            <i class="fa fa-arrow-left"></i>

                            &nbsp; Back to My Courses

                        </a>

                    </div>


                </div>

            </div>

        </div>

    </section>

</div>

</asp:Content>