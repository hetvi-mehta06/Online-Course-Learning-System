<%@ Page Title="" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="OnlineCourse.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>

/* =========================================================
   LOGIN PAGE
========================================================= */

.login-page-3d,
.login-page-3d * {
    box-sizing: border-box;
}

.login-page-3d {
    position: relative;
    overflow: hidden;
}


/* =========================================================
   HERO
========================================================= */

.login-hero {
    position: relative;
    min-height: 300px;

    display: flex;
    align-items: center;
    justify-content: center;

    overflow: hidden;
    background-position: center !important;
    background-size: cover !important;
}

.login-hero::before {
    content: "";
    position: absolute;
    inset: 0;

    background:
        radial-gradient(
            circle at 20% 30%,
            rgba(111,72,255,.40),
            transparent 32%
        ),
        radial-gradient(
            circle at 80% 70%,
            rgba(235,50,210,.30),
            transparent 32%
        );

    animation: heroLight 8s ease-in-out infinite alternate;

    pointer-events: none;
}

@keyframes heroLight {
    0% {
        transform: scale(1);
    }

    100% {
        transform: scale(1.15);
    }
}


/* Hero content */

.login-hero-content {
    position: relative;
    z-index: 20;

    padding: 30px 15px;
}


/* Breadcrumb */

.login-hero .breadcrumbs {
    display: inline-flex;
    align-items: center;
    gap: 8px;

    padding: 9px 18px;
    margin: 0;

    border-radius: 30px;

    background: rgba(255,255,255,.12);

    border: 1px solid rgba(255,255,255,.25);

    backdrop-filter: blur(12px);

    color: white !important;

    font-size: 13px !important;
    line-height: 1.4 !important;
}

.login-hero .breadcrumbs a {
    color: white !important;
    font-size: 13px !important;
    text-decoration: none !important;
}


/* Hero title */

.login-hero-title {
    margin: 20px 0 0 !important;

    color: white !important;

    font-size: 48px !important;
    line-height: 1.15 !important;

    font-weight: 800 !important;

    letter-spacing: .3px;

    text-shadow:
        0 4px 0 rgba(70,40,150,.65),
        0 10px 25px rgba(0,0,0,.35),
        0 0 30px rgba(160,90,255,.55);

    animation: titleFloat 3s ease-in-out infinite;
}

@keyframes titleFloat {
    0%,100% {
        transform: translateY(0);
    }

    50% {
        transform: translateY(-5px);
    }
}


/* =========================================================
   HERO PARTICLES
========================================================= */

.login-particle {
    position: absolute;

    width: 7px;
    height: 7px;

    border-radius: 50%;

    background: white;

    box-shadow:
        0 0 10px #b88cff,
        0 0 25px #d946ef;

    z-index: 5;

    animation: particleMove 5s ease-in-out infinite;
}

.login-p1 {
    left: 15%;
    top: 25%;
}

.login-p2 {
    left: 28%;
    bottom: 25%;
    animation-delay: 1s;
}

.login-p3 {
    right: 20%;
    top: 28%;
    animation-delay: 2s;
}

.login-p4 {
    right: 30%;
    bottom: 20%;
    animation-delay: 3s;
}

.login-p5 {
    left: 50%;
    top: 18%;
    animation-delay: 1.5s;
}

@keyframes particleMove {
    0%,100% {
        transform: translateY(0) scale(1);
        opacity: .65;
    }

    50% {
        transform: translateY(-25px) scale(1.5);
        opacity: 1;
    }
}


/* =========================================================
   MAIN LOGIN SECTION
========================================================= */

.login-section-3d {
    position: relative;

    min-height: 720px;

    padding: 75px 15px 90px;

    overflow: hidden;

    background:
        radial-gradient(
            circle at 10% 20%,
            rgba(102,70,255,.18),
            transparent 30%
        ),
        radial-gradient(
            circle at 90% 80%,
            rgba(240,40,210,.13),
            transparent 30%
        ),
        linear-gradient(
            135deg,
            #f6f3ff,
            #fff9ff
        );
}


/* =========================================================
   BACKGROUND 3D ORBS
========================================================= */

.login-orb {
    position: absolute;

    border-radius: 50%;

    pointer-events: none;

    z-index: 1;
}

.login-orb-1 {
    width: 100px;
    height: 100px;

    left: 8%;
    top: 15%;

    background:
        radial-gradient(
            circle at 30% 25%,
            #ffffff,
            #9b7cff 25%,
            #612ee8 70%
        );

    box-shadow:
        0 25px 50px rgba(85,50,220,.25);

    animation: orbFloat1 6s ease-in-out infinite;
}

.login-orb-2 {
    width: 65px;
    height: 65px;

    right: 10%;
    top: 20%;

    background:
        radial-gradient(
            circle at 30% 25%,
            #ffffff,
            #4eddf2 25%,
            #008fc5 70%
        );

    box-shadow:
        0 25px 45px rgba(0,150,210,.20);

    animation: orbFloat2 5s ease-in-out infinite;
}

.login-orb-3 {
    width: 55px;
    height: 55px;

    left: 14%;
    bottom: 15%;

    background:
        radial-gradient(
            circle at 30% 25%,
            #ffffff,
            #ff7ddc 25%,
            #d92ab8 70%
        );

    animation: orbFloat3 7s ease-in-out infinite;
}

@keyframes orbFloat1 {
    0%,100% {
        transform:
            translateY(0)
            rotate(0deg);
    }

    50% {
        transform:
            translateY(-35px)
            rotate(180deg);
    }
}

@keyframes orbFloat2 {
    0%,100% {
        transform: translateY(0);
    }

    50% {
        transform: translateY(-40px);
    }
}

@keyframes orbFloat3 {
    0%,100% {
        transform:
            translateY(0)
            rotate(0deg);
    }

    50% {
        transform:
            translateY(-30px)
            rotate(180deg);
    }
}


/* =========================================================
   3D GRID
========================================================= */

.login-grid {
    position: absolute;

    left: 0;
    right: 0;
    bottom: -80px;

    height: 250px;

    opacity: .28;

    background-image:
        linear-gradient(
            rgba(105,75,255,.18) 1px,
            transparent 1px
        ),
        linear-gradient(
            90deg,
            rgba(105,75,255,.18) 1px,
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
   LOGIN WRAPPER
========================================================= */

.login-card-wrapper {
    position: relative;

    width: 100%;
    max-width: 530px;

    margin: 0 auto;

    z-index: 10;

    perspective: 1600px;
}


/* =========================================================
   LOGIN CARD
========================================================= */

.login-card-3d {
    position: relative;

    width: 100%;

    padding: 42px 42px 32px;

    border-radius: 30px;

    background:
        linear-gradient(
            145deg,
            rgba(255,255,255,.98),
            rgba(242,237,255,.93)
        );

    border: 1px solid rgba(255,255,255,.95);

    box-shadow:
        0 45px 90px rgba(65,40,145,.18),
        0 15px 35px rgba(85,60,180,.12),
        inset 0 1px 0 white;

    backdrop-filter: blur(20px);
    -webkit-backdrop-filter: blur(20px);

    transform-style: preserve-3d;

    transition:
        transform .18s ease,
        box-shadow .3s ease;
}


/* Animated border */

.login-card-border {
    position: absolute;

    inset: -2px;

    border-radius: 32px;

    background:
        linear-gradient(
            120deg,
            #6246ea,
            #d946ef,
            #00c6ff,
            #6246ea
        );

    background-size: 300% 300%;

    animation: borderMove 5s linear infinite;

    z-index: -1;

    opacity: .65;
}

@keyframes borderMove {
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
   USER ICON
========================================================= */

.login-icon-3d {
    position: relative;

    width: 82px;
    height: 82px;

    margin: 0 auto 20px;

    display: flex;
    align-items: center;
    justify-content: center;

    border-radius: 24px;

    color: white;

    font-size: 32px;

    background:
        linear-gradient(
            145deg,
            #5946e8,
            #8b5cf6,
            #d946ef
        );

    box-shadow:
        0 22px 40px rgba(85,60,200,.28),
        inset 5px 5px 12px rgba(255,255,255,.3),
        inset -7px -7px 15px rgba(50,20,100,.18);

    transform: translateZ(50px);

    z-index: 20;

    animation: iconFloat 4s ease-in-out infinite;
}

@keyframes iconFloat {
    0%,100% {
        transform: translateZ(50px) translateY(0);
    }

    50% {
        transform: translateZ(65px) translateY(-5px);
    }
}

.login-icon-3d::before {
    content: "";

    position: absolute;

    inset: -8px;

    border-radius: 28px;

    border: 2px solid rgba(100,70,255,.25);

    animation: iconRing 5s linear infinite;
}

@keyframes iconRing {
    from {
        transform: rotate(0deg);
    }

    to {
        transform: rotate(360deg);
    }
}


/* =========================================================
   TITLE
========================================================= */

.login-card-title {
    position: relative;

    margin: 0 0 8px !important;

    padding: 0 !important;

    text-align: center;

    color: #29224d !important;

    font-size: 28px !important;

    line-height: 1.25 !important;

    font-weight: 800 !important;

    z-index: 20;

    transform: translateZ(35px);
}

.login-card-subtitle {
    position: relative;

    margin: 0 0 28px !important;

    padding: 0 !important;

    text-align: center;

    color: #817b99 !important;

    font-size: 14px !important;

    line-height: 1.6 !important;

    z-index: 20;
}


/* =========================================================
   FORM AREA
========================================================= */

.login-form-area {
    position: relative;

    z-index: 100;

    width: 100%;
}


/* =========================================================
   FORM GROUP
========================================================= */

.login-form-group {
    position: relative;

    width: 100%;

    margin-bottom: 20px;
}

.login-form-group label {
    display: block;

    width: 100%;

    margin: 0 0 8px !important;

    color: #383052 !important;

    font-size: 14px !important;

    line-height: 1.4 !important;

    font-weight: 700 !important;
}


/* =========================================================
   INPUT
========================================================= */

.login-input-3d {
    display: block;

    width: 100% !important;
    max-width: 100% !important;

    height: 54px !important;
    min-height: 54px !important;

    margin: 0 !important;

    padding: 0 17px !important;

    border-radius: 14px !important;

    border: 1px solid #ded8f2 !important;

    background:
        linear-gradient(
            145deg,
            #ffffff,
            #f3efff
        ) !important;

    color: #302b48 !important;

    font-family: inherit !important;

    font-size: 14px !important;

    line-height: 54px !important;

    box-shadow:
        0 6px 0 #d8d1ec,
        0 14px 25px rgba(70,50,150,.07) !important;

    outline: none !important;

    transition: .25s ease;

    position: relative;

    z-index: 110;
}

.login-input-3d::placeholder {
    color: #9993aa !important;
    opacity: 1 !important;
}

.login-input-3d:hover {
    transform: translateY(-2px);

    box-shadow:
        0 7px 0 #d0c8e8,
        0 18px 30px rgba(80,50,170,.11) !important;
}

.login-input-3d:focus {
    border-color: #7657ff !important;

    transform: translateY(-3px);

    box-shadow:
        0 6px 0 #c7bde7,
        0 20px 32px rgba(90,60,200,.14),
        0 0 0 4px rgba(110,75,255,.08) !important;
}


/* =========================================================
   FORGOT PASSWORD
========================================================= */

.login-forgot-row {
    width: 100%;

    margin-top: -3px;
    margin-bottom: 20px;

    text-align: right;
}

.login-forgot {
    position: relative;

    z-index: 200;

    color: #6246ea !important;

    font-size: 13px !important;

    line-height: 1.4 !important;

    font-weight: 700 !important;

    text-decoration: none !important;

    cursor: pointer !important;
}

.login-forgot:hover {
    color: #d946ef !important;

    text-decoration: none !important;
}


/* =========================================================
   LOGIN BUTTON
========================================================= */

.login-button-3d {
    position: relative;

    z-index: 100;

    display: block;

    width: 100% !important;

    height: 54px !important;
    min-height: 54px !important;

    margin: 0 !important;

    padding: 0 20px !important;

    border: none !important;

    border-radius: 14px !important;

    color: white !important;

    background:
        linear-gradient(
            135deg,
            #5946e8,
            #8055f5,
            #d238d1
        ) !important;

    font-family: inherit !important;

    font-size: 16px !important;

    line-height: 54px !important;

    font-weight: 700 !important;

    text-align: center !important;

    cursor: pointer;

    box-shadow:
        0 7px 0 #4935b7,
        0 20px 35px rgba(85,65,210,.27);

    transition: .2s ease;

    overflow: hidden;
}

.login-button-3d:hover {
    transform: translateY(-4px);

    box-shadow:
        0 7px 0 #4935b7,
        0 27px 45px rgba(85,65,210,.35);
}

.login-button-3d:active {
    transform: translateY(3px);

    box-shadow:
        0 3px 0 #4935b7,
        0 10px 18px rgba(85,65,210,.20);
}


/* Button shine */

.login-button-3d::before {
    content: "";

    position: absolute;

    left: -120%;
    top: 0;

    width: 65%;
    height: 100%;

    background:
        linear-gradient(
            90deg,
            transparent,
            rgba(255,255,255,.45),
            transparent
        );

    transform: skewX(-25deg);

    transition: .7s;
}

.login-button-3d:hover::before {
    left: 140%;
}


/* =========================================================
   DIVIDER
========================================================= */

.login-divider {
    width: 100%;

    height: 1px;

    margin: 27px 0 19px;

    border: none;

    background:
        linear-gradient(
            90deg,
            transparent,
            #ddd6f0,
            transparent
        );
}


/* =========================================================
   REGISTER
========================================================= */

.login-register-area {
    position: relative;

    z-index: 1000 !important;

    width: 100%;

    margin: 0 !important;

    padding: 0 !important;

    text-align: center;

    color: #817b99 !important;

    font-size: 13px !important;

    line-height: 1.6 !important;

    pointer-events: auto !important;
}

.login-register-link {
    position: relative !important;

    z-index: 1001 !important;

    display: inline-block !important;

    color: #6246ea !important;

    font-size: 13px !important;

    line-height: 1.6 !important;

    font-weight: 800 !important;

    text-decoration: none !important;

    cursor: pointer !important;

    pointer-events: auto !important;
}

.login-register-link:hover {
    color: #d946ef !important;

    text-decoration: underline !important;
}


/* =========================================================
   CARD HOVER
========================================================= */

.login-card-3d:hover {
    box-shadow:
        0 50px 100px rgba(65,40,145,.22),
        0 20px 40px rgba(85,60,180,.14),
        inset 0 1px 0 white;
}


/* =========================================================
   MOBILE
========================================================= */

@media (max-width: 767px) {

    .login-hero {
        min-height: 260px;
    }

    .login-hero-title {
        font-size: 36px !important;
    }

    .login-section-3d {
        min-height: auto;

        padding: 55px 15px 70px;
    }

    .login-card-3d {
        padding: 35px 22px 28px;

        border-radius: 25px;
    }

    .login-icon-3d {
        width: 75px;
        height: 75px;

        font-size: 29px;

        border-radius: 21px;
    }

    .login-card-title {
        font-size: 24px !important;
    }

    .login-card-subtitle {
        font-size: 13px !important;
    }

    .login-orb {
        opacity: .5;
    }
}


/* =========================================================
   SMALL MOBILE
========================================================= */

@media (max-width: 480px) {

    .login-hero {
        min-height: 235px;
    }

    .login-hero-title {
        font-size: 31px !important;
    }

    .login-section-3d {
        padding: 45px 12px 60px;
    }

    .login-card-3d {
        padding: 30px 18px 25px;
    }

    .login-card-title {
        font-size: 22px !important;
    }

    .login-input-3d {
        height: 52px !important;
        min-height: 52px !important;

        font-size: 13px !important;
        line-height: 52px !important;
    }

    .login-button-3d {
        height: 52px !important;
        min-height: 52px !important;

        font-size: 15px !important;
        line-height: 52px !important;
    }

    .login-orb {
        display: none;
    }
}

</style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="login-page-3d">


    <!-- =====================================================
         HERO
    ====================================================== -->

    <section class="hero-wrap hero-wrap-2 login-hero"
             style="background-image: url('images/bg_2.jpg');">

        <div class="overlay"></div>


        <!-- Particles -->

        <span class="login-particle login-p1"></span>
        <span class="login-particle login-p2"></span>
        <span class="login-particle login-p3"></span>
        <span class="login-particle login-p4"></span>
        <span class="login-particle login-p5"></span>


        <div class="container">

            <div class="row no-gutters slider-text align-items-center justify-content-center">

                <div class="col-md-10 text-center login-hero-content">

                    <p class="breadcrumbs">

                        <span>
                            <a href="index.aspx">
                                Home
                            </a>
                        </span>

                        <span>
                            <i class="fa fa-chevron-right"></i>
                        </span>

                        <span>
                            Login
                        </span>

                    </p>


                    <h1 class="login-hero-title">
                        Student Login
                    </h1>

                </div>

            </div>

        </div>

    </section>



    <!-- =====================================================
         LOGIN SECTION
    ====================================================== -->

    <section class="login-section-3d">


        <!-- 3D background -->

        <div class="login-orb login-orb-1"></div>

        <div class="login-orb login-orb-2"></div>

        <div class="login-orb login-orb-3"></div>

        <div class="login-grid"></div>


        <div class="container">

            <div class="login-card-wrapper" id="login3D">


                <!-- =================================================
                     LOGIN CARD
                ================================================== -->

                <div class="login-card-3d">


                    <!-- Animated border -->

                    <div class="login-card-border"></div>


                    <!-- User icon -->

                    <div class="login-icon-3d">

                        <i class="fa fa-user"></i>

                    </div>


                    <!-- Heading -->

                    <h2 class="login-card-title">
                        Login to LearnSphere
                    </h2>


                    <p class="login-card-subtitle">
                        Welcome back! Continue your learning journey.
                    </p>


                    <!-- =================================================
                         LOGIN FORM AREA
                    ================================================== -->

                    <div class="login-form-area">


                        <!-- EMAIL -->

                        <div class="login-form-group">

                            <asp:Label
                                ID="lblEmail"
                                runat="server"
                                Text="Email Address">
                            </asp:Label>


                            <asp:TextBox
                                ID="txtEmail"
                                runat="server"
                                CssClass="form-control login-input-3d"
                                TextMode="Email"
                                placeholder="Enter your email">
                            </asp:TextBox>

                        </div>


                        <!-- PASSWORD -->

                        <div class="login-form-group">

                            <asp:Label
                                ID="lblPassword"
                                runat="server"
                                Text="Password">
                            </asp:Label>


                            <asp:TextBox
                                ID="txtPassword"
                                runat="server"
                                CssClass="form-control login-input-3d"
                                TextMode="Password"
                                placeholder="Enter your password">
                            </asp:TextBox>

                        </div>


                        <!-- FORGOT PASSWORD -->

                        <div class="login-forgot-row">

                            <asp:HyperLink
                                ID="lnkForgot"
                                runat="server"
                                NavigateUrl="#"
                                Text="Forgot Password?"
                                CssClass="login-forgot">
                            </asp:HyperLink>

                        </div>


                        <!-- LOGIN -->

                        <div class="login-form-group">

                            <asp:Button
                                ID="btnLogin"
                                runat="server"
                                Text="Login"
                                CssClass="btn btn-primary btn-block login-button-3d" />

                        </div>


                        <!-- DIVIDER -->

                        <div class="login-divider"></div>


                        <!-- REGISTER -->

                        <p class="login-register-area">

                            Don't have an account?

                            <asp:HyperLink
                                ID="lnkRegister"
                                runat="server"
                                NavigateUrl="~/register.aspx"
                                Text="Register Now"
                                CssClass="login-register-link">
                            </asp:HyperLink>

                        </p>


                    </div>

                </div>

            </div>

        </div>

    </section>

</div>


<!-- =========================================================
     3D MOUSE EFFECT
========================================================= -->

<script>

    document.addEventListener("DOMContentLoaded", function () {

        var wrapper =
            document.getElementById("login3D");

        var card =
            document.querySelector(".login-card-3d");


        if (wrapper && card) {

            wrapper.addEventListener("mousemove", function (e) {

                var rect =
                    wrapper.getBoundingClientRect();

                var x =
                    e.clientX - rect.left;

                var y =
                    e.clientY - rect.top;

                var centerX =
                    rect.width / 2;

                var centerY =
                    rect.height / 2;


                var rotateY =
                    ((x - centerX) / centerX) * 4;

                var rotateX =
                    ((y - centerY) / centerY) * -4;


                card.style.transform =
                    "rotateX(" +
                    rotateX +
                    "deg) rotateY(" +
                    rotateY +
                    "deg)";

            });


            wrapper.addEventListener("mouseleave", function () {

                card.style.transform =
                    "rotateX(0deg) rotateY(0deg)";

            });

        }

    });

</script>

</asp:Content>