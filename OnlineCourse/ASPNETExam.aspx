<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="ASPNETExam.aspx.cs" Inherits="OnlineCourse.ASPNETExam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>

/* =========================================================
   LEARNSPHERE ASP.NET EXAM
   MASTER HEADER SAFE VERSION
========================================================= */

.exam-page,
.exam-page * {
    box-sizing: border-box;
}


/* =========================================================
   MAIN PAGE
========================================================= */

.exam-page {
    position: relative;
    display: block;

    width: 100%;
    min-height: 100vh;

    margin: 0 !important;

    /* Important: keeps content below Master Page header */
    padding: 100px 20px 90px !important;

    overflow: hidden;

    background:
        radial-gradient(
            circle at 8% 15%,
            rgba(123, 78, 255, .18),
            transparent 28%
        ),
        radial-gradient(
            circle at 92% 80%,
            rgba(0, 210, 255, .14),
            transparent 30%
        ),
        linear-gradient(
            135deg,
            #080419 0%,
            #11072b 48%,
            #080419 100%
        );

    font-family: 'Poppins', sans-serif;
}


/* Background circles */

.exam-page::before {
    content: "";

    position: absolute;

    width: 450px;
    height: 450px;

    left: -250px;
    top: 120px;

    border-radius: 50%;

    border: 1px solid rgba(141, 105, 255, .14);

    box-shadow:
        0 0 90px rgba(120, 70, 255, .10),
        inset 0 0 90px rgba(120, 70, 255, .05);

    pointer-events: none;
}


.exam-page::after {
    content: "";

    position: absolute;

    width: 400px;
    height: 400px;

    right: -220px;
    bottom: 60px;

    border-radius: 50%;

    border: 1px solid rgba(0, 220, 255, .12);

    box-shadow:
        0 0 90px rgba(0, 210, 255, .08);

    pointer-events: none;
}


/* =========================================================
   CONTAINER
========================================================= */

.exam-page > .container {
    position: relative;

    width: 100%;

    max-width: 1080px;

    margin-left: auto !important;
    margin-right: auto !important;

    padding-left: 15px;
    padding-right: 15px;

    z-index: 10;
}


/* =========================================================
   MAIN EXAM CARD
========================================================= */

.exam-box {

    position: relative;

    width: 100%;

    padding: 45px;

    border-radius: 30px;

    background:
        linear-gradient(
            145deg,
            rgba(255,255,255,.105),
            rgba(255,255,255,.025)
        );

    border:
        1px solid rgba(255,255,255,.14);

    backdrop-filter: blur(24px);
    -webkit-backdrop-filter: blur(24px);

    box-shadow:
        0 35px 90px rgba(0,0,0,.55),
        inset 0 1px 0 rgba(255,255,255,.12),
        0 0 55px rgba(108,70,255,.10);

    transform:
        perspective(1400px)
        rotateX(.8deg);

    transition: .4s ease;
}


/* Animated border */

.exam-box::before {

    content: "";

    position: absolute;

    inset: -1px;

    border-radius: 30px;

    padding: 1px;

    background:
        linear-gradient(
            120deg,
            transparent 10%,
            rgba(138,91,255,.75),
            rgba(0,220,255,.65),
            transparent 90%
        );

    -webkit-mask:
        linear-gradient(#fff 0 0) content-box,
        linear-gradient(#fff 0 0);

    -webkit-mask-composite: xor;
    mask-composite: exclude;

    pointer-events: none;

    animation: borderGlow 6s linear infinite;
}


.exam-box:hover {

    transform:
        perspective(1400px)
        rotateX(0deg)
        translateY(-5px);

    box-shadow:
        0 45px 105px rgba(0,0,0,.65),
        0 0 70px rgba(115,75,255,.15),
        inset 0 1px 0 rgba(255,255,255,.16);
}


/* =========================================================
   TITLE
========================================================= */

.exam-title {

    position: relative;

    margin: 0 0 12px !important;

    padding: 0 !important;

    color: #ffffff !important;

    font-size: 34px !important;

    line-height: 1.35 !important;

    font-weight: 800 !important;

    letter-spacing: -.6px;

    background:
        linear-gradient(
            90deg,
            #ffffff,
            #cbbaff,
            #69eaff
        );

    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}


/* Book icon */

.exam-title::before {

    content: "\f02d";

    font-family: FontAwesome;

    display: inline-flex;

    align-items: center;
    justify-content: center;

    width: 55px;
    height: 55px;

    margin-right: 14px;

    vertical-align: middle;

    border-radius: 17px;

    color: #ffffff;

    font-size: 22px;

    background:
        linear-gradient(
            135deg,
            #704cff,
            #975cff,
            #00cfff
        );

    box-shadow:
        0 15px 35px rgba(106,70,255,.35),
        inset 0 1px 1px rgba(255,255,255,.3);
}


/* =========================================================
   SUBTITLE
========================================================= */

.exam-subtitle {

    margin:
        8px 0 28px !important;

    padding: 0 !important;

    color: #aaa3c0 !important;

    font-size: 14px !important;

    line-height: 1.6;

    letter-spacing: .2px;
}


/* =========================================================
   HR
========================================================= */

.exam-box hr {

    width: 100%;

    height: 1px;

    margin:
        0 0 30px !important;

    padding: 0;

    border: 0 !important;

    background:
        linear-gradient(
            90deg,
            transparent,
            rgba(144,95,255,.55),
            rgba(0,215,255,.35),
            transparent
        );
}


/* =========================================================
   QUESTION CARD
========================================================= */

.question-box {

    position: relative;

    width: 100%;

    padding:
        24px 25px 25px;

    margin:
        0 0 20px !important;

    border-radius: 21px;

    background:
        linear-gradient(
            145deg,
            rgba(255,255,255,.075),
            rgba(255,255,255,.025)
        );

    border:
        1px solid rgba(255,255,255,.10);

    box-shadow:
        0 15px 35px rgba(0,0,0,.23),
        inset 0 1px 0 rgba(255,255,255,.06);

    transition: .35s ease;

    overflow: hidden;
}


/* Left glowing line */

.question-box::before {

    content: "";

    position: absolute;

    left: 0;
    top: 17px;
    bottom: 17px;

    width: 4px;

    border-radius: 10px;

    background:
        linear-gradient(
            180deg,
            #7955ff,
            #00d9ff
        );

    box-shadow:
        0 0 16px rgba(121,85,255,.55);
}


.question-box:hover {

    transform:
        translateY(-4px);

    border-color:
        rgba(139,96,255,.27);

    box-shadow:
        0 25px 50px rgba(0,0,0,.35),
        0 0 35px rgba(110,72,255,.08),
        inset 0 1px 0 rgba(255,255,255,.09);
}


/* =========================================================
   QUESTION TEXT
========================================================= */

.question-box h5 {

    position: relative;

    margin:
        0 0 17px !important;

    padding:
        0 0 0 10px !important;

    color:
        #ffffff !important;

    font-size:
        16px !important;

    line-height:
        1.6 !important;

    font-weight:
        600 !important;
}


/* =========================================================
   RADIO TABLE
========================================================= */

.question-box table {

    width: 100% !important;

    margin: 0 !important;

    border-collapse:
        separate !important;

    border-spacing:
        0 7px !important;
}


.question-box tr {
    background: transparent !important;
}


.question-box td {

    padding:
        0 !important;

    border: 0 !important;
}


/* =========================================================
   RADIO OPTIONS
========================================================= */

.question-box td label {

    display: flex !important;

    align-items: center !important;

    width: 100% !important;

    min-height: 45px;

    margin: 0 !important;

    padding:
        9px 14px !important;

    border-radius: 12px;

    color:
        #bdb6cf !important;

    background:
        rgba(255,255,255,.035);

    border:
        1px solid rgba(255,255,255,.055);

    font-size:
        13px !important;

    font-weight:
        400 !important;

    cursor: pointer;

    transition:
        .25s ease;
}


.question-box td label:hover {

    color:
        #ffffff !important;

    background:
        rgba(122,82,255,.10);

    border-color:
        rgba(139,96,255,.24);

    transform:
        translateX(4px);
}


/* =========================================================
   RADIO BUTTON
========================================================= */

.question-box input[type="radio"] {

    appearance: none !important;
    -webkit-appearance: none !important;

    position: relative;

    width: 18px !important;
    height: 18px !important;

    min-width: 18px !important;

    margin:
        0 12px 0 0 !important;

    padding: 0 !important;

    border:
        2px solid #716a84 !important;

    border-radius: 50% !important;

    background:
        transparent !important;

    cursor: pointer;

    box-shadow: none !important;

    transition: .25s ease;
}


.question-box input[type="radio"]:checked {

    border-color:
        #8b68ff !important;

    background:
        #8b68ff !important;

    box-shadow:
        0 0 0 4px rgba(139,104,255,.13),
        0 0 16px rgba(139,104,255,.35) !important;
}


.question-box input[type="radio"]:checked::after {

    content: "";

    position: absolute;

    width: 6px;
    height: 6px;

    left: 4px;
    top: 4px;

    border-radius: 50%;

    background: #ffffff;
}


/* =========================================================
   SUBMIT BUTTON
========================================================= */

.btn-submit {

    position: relative;

    display: block;

    width: 230px;

    height: 57px;

    margin:
        35px auto 0 !important;

    padding: 0 !important;

    border: 0 !important;

    border-radius: 16px !important;

    color:
        #ffffff !important;

    background:
        linear-gradient(
            135deg,
            #704cff,
            #955bff,
            #00c8ec
        ) !important;

    font-family:
        'Poppins',
        sans-serif !important;

    font-size:
        14px !important;

    font-weight:
        600 !important;

    letter-spacing:
        .5px;

    cursor: pointer;

    box-shadow:
        0 15px 35px rgba(103,70,255,.35),
        inset 0 1px 1px rgba(255,255,255,.25);

    transition:
        .35s ease;

    overflow:
        hidden;
}


.btn-submit::before {

    content: "";

    position: absolute;

    top: 0;
    left: -120%;

    width: 80%;
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
        .6s;
}


.btn-submit:hover::before {
    left: 140%;
}


.btn-submit:hover {

    transform:
        translateY(-5px)
        scale(1.02);

    box-shadow:
        0 22px 45px rgba(103,70,255,.48),
        0 0 30px rgba(0,207,255,.16);
}


.btn-submit:active {

    transform:
        translateY(0)
        scale(.99);
}


/* =========================================================
   DECORATIVE STARS
========================================================= */

.exam-page > .container::before {

    content: "✦";

    position: absolute;

    left: -5px;
    top: 100px;

    color: #9a7cff;

    font-size: 25px;

    text-shadow:
        0 0 18px #9a7cff;

    animation:
        starFloat 3s ease-in-out infinite;
}


.exam-page > .container::after {

    content: "✧";

    position: absolute;

    right: -5px;
    bottom: 120px;

    color: #55e5ff;

    font-size: 28px;

    text-shadow:
        0 0 18px #55e5ff;

    animation:
        starFloat 4s ease-in-out infinite;

    animation-delay:
        1s;
}


/* =========================================================
   ANIMATION
========================================================= */

@keyframes borderGlow {

    0% {
        filter: hue-rotate(0deg);
    }

    100% {
        filter: hue-rotate(360deg);
    }
}


@keyframes starFloat {

    0%, 100% {
        transform:
            translateY(0)
            scale(1);

        opacity: .45;
    }

    50% {
        transform:
            translateY(-15px)
            scale(1.2);

        opacity: 1;
    }
}


/* =========================================================
   MOBILE
========================================================= */

@media (max-width: 767px) {

    .exam-page {

        padding:
            65px 10px 60px !important;
    }


    .exam-page > .container {

        padding-left:
            8px;

        padding-right:
            8px;
    }


    .exam-box {

        padding:
            28px 17px;

        border-radius:
            23px;
    }


    .exam-title {

        font-size:
            24px !important;

        line-height:
            1.45 !important;
    }


    .exam-title::before {

        width:
            45px;

        height:
            45px;

        margin-right:
            8px;

        border-radius:
            13px;

        font-size:
            18px;
    }


    .exam-subtitle {

        font-size:
            12px !important;
    }


    .question-box {

        padding:
            20px 15px 20px;
    }


    .question-box h5 {

        font-size:
            14px !important;
    }


    .question-box td label {

        font-size:
            12px !important;

        min-height:
            43px;
    }


    .btn-submit {

        width:
            100%;

        height:
            54px;
    }

}


/* =========================================================
   EXTRA SAFETY
   Prevents Master Page styles from pulling exam upward
========================================================= */

.exam-page h1,
.exam-page h2,
.exam-page h3,
.exam-page h4,
.exam-page h5,
.exam-page p,
.exam-page hr,
.exam-page table,
.exam-page tr,
.exam-page td {
    position: relative;
}

.exam-page .row {
    margin-left: 0;
    margin-right: 0;
}

</style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<section class="exam-page">

    <div class="container">

        <div class="exam-box">

            <h2 class="exam-title">
                ASP.NET Web Forms Exam
            </h2>

            <p class="exam-subtitle">
                Select the correct answer for each question.
            </p>

            <hr />


            <!-- QUESTION 1 -->

            <div class="question-box">

                <h5>
                    1. What does ASP.NET stand for?
                </h5>

                <asp:RadioButtonList ID="q1" runat="server">

                    <asp:ListItem>
                        Active Server Pages .NET
                    </asp:ListItem>

                    <asp:ListItem>
                        Advanced Server Pages Network
                    </asp:ListItem>

                    <asp:ListItem>
                        Application Server Programming Network
                    </asp:ListItem>

                    <asp:ListItem>
                        Active Software Programming .NET
                    </asp:ListItem>

                </asp:RadioButtonList>

            </div>


            <!-- QUESTION 2 -->

            <div class="question-box">

                <h5>
                    2. Which language is commonly used for ASP.NET Web Forms?
                </h5>

                <asp:RadioButtonList ID="q2" runat="server">

                    <asp:ListItem>
                        C#
                    </asp:ListItem>

                    <asp:ListItem>
                        HTML
                    </asp:ListItem>

                    <asp:ListItem>
                        CSS
                    </asp:ListItem>

                    <asp:ListItem>
                        SQL
                    </asp:ListItem>

                </asp:RadioButtonList>

            </div>


            <!-- QUESTION 3 -->

            <div class="question-box">

                <h5>
                    3. Which file is used to write the C# code for an ASP.NET Web Form?
                </h5>

                <asp:RadioButtonList ID="q3" runat="server">

                    <asp:ListItem>
                        .aspx.cs
                    </asp:ListItem>

                    <asp:ListItem>
                        .html
                    </asp:ListItem>

                    <asp:ListItem>
                        .css
                    </asp:ListItem>

                    <asp:ListItem>
                        .sql
                    </asp:ListItem>

                </asp:RadioButtonList>

            </div>


            <!-- QUESTION 4 -->

            <div class="question-box">

                <h5>
                    4. Which ASP.NET control is used to display data in rows and columns?
                </h5>

                <asp:RadioButtonList ID="q4" runat="server">

                    <asp:ListItem>
                        GridView
                    </asp:ListItem>

                    <asp:ListItem>
                        TextBox
                    </asp:ListItem>

                    <asp:ListItem>
                        Label
                    </asp:ListItem>

                    <asp:ListItem>
                        Button
                    </asp:ListItem>

                </asp:RadioButtonList>

            </div>


            <!-- QUESTION 5 -->

            <div class="question-box">

                <h5>
                    5. Which property is used to set the text displayed by a Button?
                </h5>

                <asp:RadioButtonList ID="q5" runat="server">

                    <asp:ListItem>
                        Text
                    </asp:ListItem>

                    <asp:ListItem>
                        Name
                    </asp:ListItem>

                    <asp:ListItem>
                        Value
                    </asp:ListItem>

                    <asp:ListItem>
                        Caption
                    </asp:ListItem>

                </asp:RadioButtonList>

            </div>


            <asp:Button
                ID="btnSubmit"
                runat="server"
                Text="Submit Exam"
                CssClass="btn-submit" />

        </div>

    </div>

</section>

</asp:Content>