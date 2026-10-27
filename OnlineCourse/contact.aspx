<%@ Page Title="" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="OnlineCourse.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>

/* =========================================================
   LEARNSPHERE CONTACT PAGE
   PUBLIC MASTER SAFE
========================================================= */

.contact-page {
    position: relative;
    display: block;
    width: 100%;
    min-height: 100vh;
    margin: 0 !important;
    padding: 0 0 90px !important;
    overflow: hidden;

    background:
        radial-gradient(
            circle at 5% 20%,
            rgba(120, 75, 255, .16),
            transparent 28%
        ),
        radial-gradient(
            circle at 95% 65%,
            rgba(0, 210, 255, .12),
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

.contact-hero {

    position: relative;

    min-height: 330px;

    display: flex;
    align-items: center;
    justify-content: center;

    padding: 90px 20px 65px;

    overflow: hidden;

    background:
        linear-gradient(
            135deg,
            rgba(11, 4, 30, .96),
            rgba(54, 25, 108, .90)
        );
}


.contact-hero::before {

    content: "";

    position: absolute;

    width: 500px;
    height: 500px;

    left: -250px;
    top: -220px;

    border-radius: 50%;

    border:
        1px solid rgba(143, 98, 255, .24);

    box-shadow:
        0 0 100px rgba(116, 74, 255, .15);

    pointer-events: none;
}


.contact-hero::after {

    content: "";

    position: absolute;

    width: 400px;
    height: 400px;

    right: -210px;
    bottom: -230px;

    border-radius: 50%;

    border:
        1px solid rgba(0, 220, 255, .20);

    box-shadow:
        0 0 100px rgba(0, 210, 255, .10);

    pointer-events: none;
}


.contact-hero .container {

    position: relative;

    z-index: 5;

    width: 100%;

    max-width: 1100px;

    margin-left: auto;
    margin-right: auto;
}


.contact-hero-title {

    margin: 0 !important;

    text-align: center;

    color: #ffffff !important;

    font-size: 46px !important;

    font-weight: 800 !important;

    letter-spacing: -.8px;

    background:
        linear-gradient(
            90deg,
            #ffffff,
            #cbbaff,
            #62eaff
        );

    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}


/* =========================================================
   MAIN CONTENT
========================================================= */

.contact-content {

    position: relative;

    width: 100%;

    padding:
        75px 20px 0;

    background: transparent;
}


.contact-content .container {

    position: relative;

    z-index: 5;

    max-width: 1120px;

    margin-left: auto;
    margin-right: auto;
}


/* =========================================================
   MAIN CONTACT CARD
========================================================= */

.contact-card {

    position: relative;

    width: 100%;

    display: flex;

    border-radius: 28px;

    overflow: hidden;

    background:
        linear-gradient(
            145deg,
            rgba(255,255,255,.09),
            rgba(255,255,255,.025)
        );

    border:
        1px solid rgba(255,255,255,.12);

    box-shadow:
        0 30px 75px rgba(0,0,0,.50),
        inset 0 1px 0 rgba(255,255,255,.10);

    backdrop-filter: blur(22px);
    -webkit-backdrop-filter: blur(22px);
}


/* =========================================================
   LEFT INFORMATION SIDE
========================================================= */

.contact-info {

    position: relative;

    width: 37%;

    padding: 48px 38px;

    background:
        linear-gradient(
            145deg,
            #5131ad 0%,
            #392078 48%,
            #171035 100%
        );

    overflow: hidden;
}


/* decorative circle */

.contact-info::before {

    content: "";

    position: absolute;

    width: 260px;
    height: 260px;

    top: -120px;
    right: -120px;

    border-radius: 50%;

    border:
        1px solid rgba(255,255,255,.14);

    box-shadow:
        0 0 80px rgba(130,91,255,.20);

    pointer-events: none;
}


.contact-info::after {

    content: "";

    position: absolute;

    width: 170px;
    height: 170px;

    bottom: -90px;
    left: -80px;

    border-radius: 50%;

    border:
        1px solid rgba(0,220,255,.14);

    pointer-events: none;
}


/* =========================================================
   INFO TITLE
========================================================= */

.contact-info h3 {

    position: relative;

    z-index: 2;

    margin:
        0 0 14px !important;

    color:
        #ffffff !important;

    font-size:
        26px !important;

    font-weight:
        700 !important;
}


.contact-info-intro {

    position: relative;

    z-index: 2;

    margin:
        0 0 35px !important;

    color:
        #d4cdea !important;

    font-size:
        13px !important;

    line-height:
        1.7 !important;
}


/* =========================================================
   INFO ITEM
========================================================= */

.contact-info-item {

    position: relative;

    z-index: 2;

    display: flex;

    align-items: flex-start;

    margin-bottom: 25px;

    color: #ffffff;
}


.contact-info-item:last-child {
    margin-bottom: 0;
}


.contact-icon {

    flex-shrink: 0;

    width: 45px;
    height: 45px;

    display: flex;

    align-items: center;
    justify-content: center;

    margin-right: 14px;

    border-radius: 14px;

    color: #ffffff;

    font-size: 16px;

    background:
        rgba(255,255,255,.12);

    border:
        1px solid rgba(255,255,255,.15);

    box-shadow:
        inset 0 1px 0 rgba(255,255,255,.12),
        0 8px 20px rgba(0,0,0,.15);

    transition: .3s ease;
}


.contact-info-item:hover .contact-icon {

    transform:
        translateY(-3px)
        rotate(-4deg);

    background:
        linear-gradient(
            135deg,
            #7955ff,
            #00c9eb
        );

    box-shadow:
        0 10px 25px rgba(100,70,255,.30);
}


.contact-info-text {

    padding-top: 2px;
}


.contact-info-text strong {

    display: block;

    margin-bottom: 3px;

    color: #ffffff;

    font-size: 12px;

    font-weight: 600;

    text-transform: uppercase;

    letter-spacing: .7px;
}


.contact-info-text span {

    color: #d0c9df;

    font-size: 12px;

    line-height: 1.6;
}


/* =========================================================
   RIGHT FORM SIDE
========================================================= */

.contact-form {

    width: 63%;

    padding: 48px 45px;
}


.contact-form-title {

    margin:
        0 0 28px !important;

    color:
        #ffffff !important;

    font-size:
        28px !important;

    font-weight:
        700 !important;
}


.contact-form-title span {

    background:
        linear-gradient(
            90deg,
            #8b64ff,
            #4bdfff
        );

    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}


/* =========================================================
   FORM GROUP
========================================================= */

.contact-form .form-group {

    margin-bottom: 22px !important;
}


.contact-form .label {

    display: block;

    margin-bottom: 8px !important;

    color:
        #bcb4d0 !important;

    font-size:
        12px !important;

    font-weight:
        600 !important;

    letter-spacing:
        .3px;
}


/* =========================================================
   INPUTS
========================================================= */

.contact-form .form-control {

    width: 100% !important;

    min-height: 50px;

    padding:
        12px 16px !important;

    border-radius:
        13px !important;

    border:
        1px solid rgba(255,255,255,.10) !important;

    outline: none !important;

    color:
        #ffffff !important;

    background:
        rgba(255,255,255,.045) !important;

    box-shadow:
        inset 0 1px 0 rgba(255,255,255,.04) !important;

    font-family:
        'Poppins',
        sans-serif !important;

    font-size:
        13px !important;

    transition:
        .3s ease;
}


.contact-form .form-control::placeholder {

    color:
        #777187 !important;

    opacity: 1;
}


.contact-form .form-control:focus {

    border-color:
        rgba(133,95,255,.65) !important;

    background:
        rgba(120,80,255,.065) !important;

    box-shadow:
        0 0 0 3px rgba(117,79,255,.10),
        0 8px 25px rgba(0,0,0,.15) !important;
}


/* Textarea */

.contact-form textarea.form-control {

    min-height:
        135px;

    resize:
        vertical;
}


/* =========================================================
   SEND BUTTON
========================================================= */

.contact-send {

    position: relative;

    min-width: 190px;

    height: 53px;

    padding:
        0 25px !important;

    border:
        0 !important;

    border-radius:
        14px !important;

    color:
        #ffffff !important;

    background:
        linear-gradient(
            135deg,
            #704cff,
            #985bff,
            #00c9eb
        ) !important;

    font-family:
        'Poppins',
        sans-serif !important;

    font-size:
        13px !important;

    font-weight:
        600 !important;

    letter-spacing:
        .3px;

    box-shadow:
        0 15px 35px rgba(103,70,255,.35),
        inset 0 1px 1px rgba(255,255,255,.25);

    cursor:
        pointer;

    transition:
        .35s ease;

    overflow:
        hidden;
}


.contact-send::before {

    content: "";

    position: absolute;

    top: 0;
    left: -120%;

    width: 75%;
    height: 100%;

    background:
        linear-gradient(
            90deg,
            transparent,
            rgba(255,255,255,.4),
            transparent
        );

    transform:
        skewX(-25deg);

    transition:
        .6s ease;
}


.contact-send:hover::before {
    left: 140%;
}


.contact-send:hover {

    transform:
        translateY(-4px);

    box-shadow:
        0 22px 45px rgba(103,70,255,.48),
        0 0 25px rgba(0,207,255,.16);
}


/* =========================================================
   MAP
========================================================= */

.contact-map-wrapper {

    position: relative;

    margin-top:
        35px;

    padding:
        10px;

    border-radius:
        25px;

    background:
        linear-gradient(
            145deg,
            rgba(255,255,255,.09),
            rgba(255,255,255,.025)
        );

    border:
        1px solid rgba(255,255,255,.10);

    box-shadow:
        0 25px 55px rgba(0,0,0,.38);

    overflow:
        hidden;
}


.contact-map {

    display: block;

    width: 100%;

    height: 400px;

    border:
        0 !important;

    border-radius:
        18px;

    filter:
        saturate(.8)
        contrast(1.05);

}


/* =========================================================
   FLOATING DECORATIONS
========================================================= */

.contact-content::before {

    content:
        "✦";

    position:
        absolute;

    left:
        5%;

    top:
        90px;

    color:
        #9475ff;

    font-size:
        24px;

    text-shadow:
        0 0 20px #9475ff;

    animation:
        contactFloat 3s ease-in-out infinite;
}


.contact-content::after {

    content:
        "✧";

    position:
        absolute;

    right:
        5%;

    bottom:
        70px;

    color:
        #5ce7ff;

    font-size:
        28px;

    text-shadow:
        0 0 20px #5ce7ff;

    animation:
        contactFloat 4s ease-in-out infinite;

    animation-delay:
        1s;
}


@keyframes contactFloat {

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

    .contact-card {

        flex-direction:
            column;
    }


    .contact-info,
    .contact-form {

        width:
            100%;
    }


    .contact-info {

        padding:
            40px 30px;
    }


    .contact-form {

        padding:
            40px 30px;
    }


    .contact-hero-title {

        font-size:
            38px !important;
    }
}


@media (max-width: 767px) {

    .contact-page {

        padding-bottom:
            60px !important;
    }


    .contact-hero {

        min-height:
            280px;

        padding:
            70px 15px 55px;
    }


    .contact-hero-title {

        font-size:
            31px !important;
    }


    .contact-content {

        padding:
            50px 15px 0;
    }


    .contact-info {

        padding:
            35px 25px;
    }


    .contact-form {

        padding:
            35px 20px;
    }


    .contact-info h3 {

        font-size:
            23px !important;
    }


    .contact-form-title {

        font-size:
            24px !important;
    }


    .contact-map {

        height:
            330px;
    }
}


@media (max-width: 480px) {

    .contact-info-item {

        margin-bottom:
            21px;
    }


    .contact-icon {

        width:
            40px;

        height:
            40px;

        margin-right:
            11px;
    }


    .contact-info-text span {

        font-size:
            11px;
    }


    .contact-send {

        width:
            100%;
    }
}

</style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="contact-page">


    <!-- =================================================
         HERO
    ================================================== -->

    <section class="contact-hero">

        <div class="container">

            <h1 class="contact-hero-title">
                Contact Us
            </h1>

        </div>

    </section>


    <!-- =================================================
         CONTACT CONTENT
    ================================================== -->

    <section class="contact-content">

        <div class="container">


            <!-- MAIN CONTACT CARD -->

            <div class="contact-card">


                <!-- =====================================
                     LEFT INFORMATION
                ====================================== -->

                <div class="contact-info">

                    <h3>
                        Let's get in touch
                    </h3>

                    <p class="contact-info-intro">
                        We're open for any suggestion or just to
                        have a chat.
                    </p>


                    <!-- ADDRESS -->

                    <div class="contact-info-item">

                        <div class="contact-icon">
                            <span class="fa fa-map-marker"></span>
                        </div>

                        <div class="contact-info-text">

                            <strong>
                                Address
                            </strong>

                            <span>
                                Ahmedabad, Gujarat, India
                            </span>

                        </div>

                    </div>


                    <!-- PHONE -->

                    <div class="contact-info-item">

                        <div class="contact-icon">
                            <span class="fa fa-phone"></span>
                        </div>

                        <div class="contact-info-text">

                            <strong>
                                Phone
                            </strong>

                            <span>
                                +91 9876543210
                            </span>

                        </div>

                    </div>


                    <!-- EMAIL -->

                    <div class="contact-info-item">

                        <div class="contact-icon">
                            <span class="fa fa-paper-plane"></span>
                        </div>

                        <div class="contact-info-text">

                            <strong>
                                Email
                            </strong>

                            <span>
                                learnsphere@gmail.com
                            </span>

                        </div>

                    </div>


                    <!-- WEBSITE -->

                    <div class="contact-info-item">

                        <div class="contact-icon">
                            <span class="fa fa-globe"></span>
                        </div>

                        <div class="contact-info-text">

                            <strong>
                                Website
                            </strong>

                            <span>
                                www.learnsphere.com
                            </span>

                        </div>

                    </div>

                </div>


                <!-- =====================================
                     RIGHT CONTACT FORM
                ====================================== -->

                <div class="contact-form">

                    <h3 class="contact-form-title">
                        Get in <span>touch</span>
                    </h3>


                    <div class="row">


                        <!-- NAME -->

                        <div class="col-md-6">

                            <div class="form-group">

                                <asp:Label
                                    ID="lblName"
                                    runat="server"
                                    Text="Full Name"
                                    CssClass="label">
                                </asp:Label>

                                <asp:TextBox
                                    ID="txtName"
                                    runat="server"
                                    CssClass="form-control"
                                    placeholder="Enter your name">
                                </asp:TextBox>

                            </div>

                        </div>


                        <!-- EMAIL -->

                        <div class="col-md-6">

                            <div class="form-group">

                                <asp:Label
                                    ID="lblEmail"
                                    runat="server"
                                    Text="Email Address"
                                    CssClass="label">
                                </asp:Label>

                                <asp:TextBox
                                    ID="txtEmail"
                                    runat="server"
                                    TextMode="Email"
                                    CssClass="form-control"
                                    placeholder="Enter your email">
                                </asp:TextBox>

                            </div>

                        </div>


                        <!-- SUBJECT -->

                        <div class="col-md-12">

                            <div class="form-group">

                                <asp:Label
                                    ID="lblSubject"
                                    runat="server"
                                    Text="Subject"
                                    CssClass="label">
                                </asp:Label>

                                <asp:TextBox
                                    ID="txtSubject"
                                    runat="server"
                                    CssClass="form-control"
                                    placeholder="Enter subject">
                                </asp:TextBox>

                            </div>

                        </div>


                        <!-- MESSAGE -->

                        <div class="col-md-12">

                            <div class="form-group">

                                <asp:Label
                                    ID="lblMessage"
                                    runat="server"
                                    Text="Message"
                                    CssClass="label">
                                </asp:Label>

                                <asp:TextBox
                                    ID="txtMessage"
                                    runat="server"
                                    TextMode="MultiLine"
                                    Rows="5"
                                    CssClass="form-control"
                                    placeholder="Write your message...">
                                </asp:TextBox>

                            </div>

                        </div>


                        <!-- BUTTON -->

                        <div class="col-md-12">

                            <div class="form-group">

                                <asp:Button
                                    ID="btnSend"
                                    runat="server"
                                    Text="Send Message"
                                    CssClass="contact-send" />

                            </div>

                        </div>


                    </div>

                </div>

            </div>


            <!-- =================================================
                 GOOGLE MAP
            ================================================== -->

            <div class="contact-map-wrapper">

                <iframe
                    class="contact-map"
                    src="https://www.google.com/maps?q=Ahmedabad,Gujarat&output=embed"
                    width="100%"
                    height="400"
                    allowfullscreen=""
                    loading="lazy">
                </iframe>

            </div>


        </div>

    </section>

</div>

</asp:Content>