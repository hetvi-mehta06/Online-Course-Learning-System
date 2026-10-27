<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="DatabaseExam.aspx.cs" Inherits="OnlineCourse.DatabaseExam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>

/* =========================================================
   DATABASE EXAM - STUDENT MASTER SAFE
========================================================= */

.database-exam-page {
    position: relative;
    display: block;
    clear: both;
    width: 100%;
    min-height: 100vh;

    margin: 0 !important;
    padding: 70px 20px 90px !important;

    overflow: hidden;

    background:
        radial-gradient(
            circle at 8% 15%,
            rgba(120, 75, 255, .15),
            transparent 28%
        ),
        radial-gradient(
            circle at 92% 70%,
            rgba(0, 215, 255, .10),
            transparent 30%
        ),
        linear-gradient(
            135deg,
            #080419 0%,
            #10062a 50%,
            #080419 100%
        );

    font-family: 'Poppins', sans-serif;
}

/* Decorative glow */

.database-exam-page::before {
    content: "";

    position: absolute;

    width: 420px;
    height: 420px;

    left: -220px;
    top: 120px;

    border-radius: 50%;

    border: 1px solid rgba(136, 96, 255, .16);

    box-shadow:
        0 0 100px rgba(116, 74, 255, .10);

    pointer-events: none;
}

.database-exam-page::after {
    content: "";

    position: absolute;

    width: 350px;
    height: 350px;

    right: -180px;
    bottom: 100px;

    border-radius: 50%;

    border: 1px solid rgba(0, 220, 255, .13);

    box-shadow:
        0 0 100px rgba(0, 210, 255, .08);

    pointer-events: none;
}


/* =========================================================
   MAIN CONTAINER
========================================================= */

.database-exam-page .container {
    position: relative;
    z-index: 5;

    width: 100%;
    max-width: 950px;

    margin-left: auto;
    margin-right: auto;
}


/* =========================================================
   EXAM BOX
========================================================= */

.database-exam-page .exam-box {
    position: relative;

    width: 100%;

    padding: 38px;

    border-radius: 26px;

    background:
        linear-gradient(
            145deg,
            rgba(255,255,255,.095),
            rgba(255,255,255,.025)
        );

    border: 1px solid rgba(255,255,255,.11);

    box-shadow:
        0 25px 60px rgba(0,0,0,.48),
        inset 0 1px 0 rgba(255,255,255,.08);

    backdrop-filter: blur(22px);
    -webkit-backdrop-filter: blur(22px);
}


/* =========================================================
   EXAM HEADER
========================================================= */

.database-exam-page .exam-header {
    text-align: center;

    margin-bottom: 28px;
}

.database-exam-page .exam-icon {
    width: 62px;
    height: 62px;

    display: flex;
    align-items: center;
    justify-content: center;

    margin: 0 auto 18px;

    border-radius: 18px;

    color: #ffffff;

    background:
        linear-gradient(
            135deg,
            #704cff,
            #985bff,
            #00c9eb
        );

    box-shadow:
        0 12px 30px rgba(103,70,255,.32);

    font-size: 24px;
}

.database-exam-page .exam-title {
    margin: 0 0 10px !important;

    color: #ffffff !important;

    font-size: 31px !important;
    font-weight: 750 !important;

    line-height: 1.25 !important;

    background:
        linear-gradient(
            90deg,
            #ffffff,
            #cbbaff,
            #68eaff
        );

    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}

.database-exam-page .exam-subtitle {
    margin: 0 !important;

    color: #9690a5 !important;

    font-size: 12px !important;
}


/* =========================================================
   DIVIDER
========================================================= */

.database-exam-page .exam-divider {
    width: 100%;
    height: 1px;

    margin: 0 0 25px;

    background:
        linear-gradient(
            90deg,
            transparent,
            rgba(130,95,255,.35),
            rgba(0,215,255,.25),
            transparent
        );

    border: 0;
}


/* =========================================================
   QUESTION BOX
========================================================= */

.database-exam-page .question-box {
    position: relative;

    width: 100%;

    margin-bottom: 19px;

    padding: 23px 24px;

    border-radius: 18px;

    background:
        linear-gradient(
            145deg,
            rgba(255,255,255,.065),
            rgba(255,255,255,.025)
        );

    border: 1px solid rgba(255,255,255,.075);

    box-shadow:
        inset 0 1px 0 rgba(255,255,255,.04);

    transition:
        border-color .3s ease,
        box-shadow .3s ease,
        background .3s ease;
}

.database-exam-page .question-box:hover {
    border-color: rgba(130,95,255,.30);

    background:
        linear-gradient(
            145deg,
            rgba(116,76,255,.08),
            rgba(255,255,255,.025)
        );

    box-shadow:
        0 12px 28px rgba(0,0,0,.22),
        inset 0 1px 0 rgba(255,255,255,.06);
}


/* Question number/title */

.database-exam-page .question-box h5 {
    position: relative;

    margin: 0 0 18px !important;

    padding-left: 14px;

    color: #ffffff !important;

    font-size: 14px !important;
    font-weight: 600 !important;

    line-height: 1.6 !important;
}

.database-exam-page .question-box h5::before {
    content: "";

    position: absolute;

    left: 0;
    top: 4px;

    width: 4px;
    height: 18px;

    border-radius: 10px;

    background:
        linear-gradient(
            180deg,
            #8058ff,
            #00d9ff
        );

    box-shadow:
        0 0 10px rgba(128,88,255,.45);
}


/* =========================================================
   RADIO BUTTON LIST
========================================================= */

.database-exam-page .question-box table {
    width: 100%;

    border-collapse: separate;
    border-spacing: 0 7px;
}

.database-exam-page .question-box td {
    padding: 0 !important;
}

.database-exam-page .question-box label {
    display: inline-flex;
    align-items: center;

    width: 100%;

    min-height: 42px;

    padding: 9px 13px;

    margin: 0;

    border-radius: 11px;

    color: #aaa3b7;

    background: rgba(255,255,255,.025);

    border: 1px solid rgba(255,255,255,.055);

    font-size: 11px;

    cursor: pointer;

    transition:
        color .25s ease,
        background .25s ease,
        border-color .25s ease,
        transform .25s ease;
}

.database-exam-page .question-box label:hover {
    color: #ffffff;

    background:
        rgba(116,76,255,.09);

    border-color:
        rgba(130,95,255,.25);

    transform: translateX(3px);
}

.database-exam-page .question-box input[type="radio"] {
    appearance: none;
    -webkit-appearance: none;

    width: 17px;
    height: 17px;

    min-width: 17px;

    margin: 0 11px 0 0;

    border-radius: 50%;

    border: 1px solid #625b75;

    background: rgba(255,255,255,.025);

    cursor: pointer;

    position: relative;

    transition: .25s ease;
}

.database-exam-page .question-box input[type="radio"]:checked {
    border-color: #8761ff;

    background:
        linear-gradient(
            135deg,
            #704cff,
            #00c9eb
        );

    box-shadow:
        0 0 12px rgba(117,80,255,.30);
}

.database-exam-page .question-box input[type="radio"]:checked::after {
    content: "";

    position: absolute;

    width: 6px;
    height: 6px;

    left: 50%;
    top: 50%;

    transform: translate(-50%, -50%);

    border-radius: 50%;

    background: #ffffff;
}


/* =========================================================
   SUBMIT BUTTON
========================================================= */

.database-exam-page .btn-submit {
    display: flex;
    align-items: center;
    justify-content: center;

    min-width: 175px;
    min-height: 50px;

    margin: 28px auto 0;

    padding: 12px 28px;

    border: 0 !important;
    border-radius: 14px !important;

    color: #ffffff !important;

    background:
        linear-gradient(
            135deg,
            #704cff,
            #985bff,
            #00c9eb
        ) !important;

    box-shadow:
        0 14px 30px rgba(103,70,255,.32);

    font-family: 'Poppins', sans-serif;

    font-size: 12px !important;
    font-weight: 650 !important;

    cursor: pointer;

    transition:
        transform .3s ease,
        box-shadow .3s ease;
}

.database-exam-page .btn-submit:hover {
    transform: translateY(-4px);

    box-shadow:
        0 20px 40px rgba(103,70,255,.44);
}


/* =========================================================
   SMALL DECORATIVE STARS
========================================================= */

.database-exam-page .exam-star-one {
    position: absolute;

    left: 5%;
    top: 170px;

    color: #9275ff;

    font-size: 22px;

    text-shadow:
        0 0 16px #9275ff;

    animation:
        databaseFloat 3s ease-in-out infinite;
}

.database-exam-page .exam-star-two {
    position: absolute;

    right: 5%;
    bottom: 180px;

    color: #5de7ff;

    font-size: 27px;

    text-shadow:
        0 0 18px #5de7ff;

    animation:
        databaseFloat 4s ease-in-out infinite;

    animation-delay: 1s;
}

@keyframes databaseFloat {

    0%, 100% {
        transform: translateY(0);
        opacity: .45;
    }

    50% {
        transform: translateY(-13px);
        opacity: 1;
    }

}


/* =========================================================
   RESPONSIVE
========================================================= */

@media (max-width: 767px) {

    .database-exam-page {
        padding: 50px 15px 70px !important;
    }

    .database-exam-page .exam-box {
        padding: 25px 18px;
        border-radius: 20px;
    }

    .database-exam-page .exam-title {
        font-size: 25px !important;
    }

    .database-exam-page .question-box {
        padding: 19px 16px;
    }

    .database-exam-page .question-box h5 {
        font-size: 13px !important;
    }

}

@media (max-width: 480px) {

    .database-exam-page .exam-title {
        font-size: 22px !important;
    }

    .database-exam-page .exam-subtitle {
        font-size: 11px !important;
    }

    .database-exam-page .question-box label {
        font-size: 10px;
    }

}

</style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<section class="database-exam-page">

    <span class="exam-star-one">✦</span>
    <span class="exam-star-two">✧</span>


    <div class="container">

        <div class="exam-box">


            <!-- =================================================
                 EXAM HEADER
            ================================================== -->

            <div class="exam-header">

                <div class="exam-icon">
                    <i class="fa fa-database"></i>
                </div>

                <h2 class="exam-title">
                    Database Management Exam
                </h2>

                <p class="exam-subtitle">
                    Select the correct answer for each question.
                </p>

            </div>


            <div class="exam-divider"></div>


            <!-- =================================================
                 QUESTION 1
            ================================================== -->

            <div class="question-box">

                <h5>
                    1. What does DBMS stand for?
                </h5>

                <asp:RadioButtonList ID="q1" runat="server">

                    <asp:ListItem>
                        Database Management System
                    </asp:ListItem>

                    <asp:ListItem>
                        Data Backup Management System
                    </asp:ListItem>

                    <asp:ListItem>
                        Database Machine System
                    </asp:ListItem>

                    <asp:ListItem>
                        Data Management Software
                    </asp:ListItem>

                </asp:RadioButtonList>

            </div>


            <!-- =================================================
                 QUESTION 2
            ================================================== -->

            <div class="question-box">

                <h5>
                    2. Which language is commonly used to manage relational databases?
                </h5>

                <asp:RadioButtonList ID="q2" runat="server">

                    <asp:ListItem>
                        HTML
                    </asp:ListItem>

                    <asp:ListItem>
                        CSS
                    </asp:ListItem>

                    <asp:ListItem>
                        SQL
                    </asp:ListItem>

                    <asp:ListItem>
                        Python
                    </asp:ListItem>

                </asp:RadioButtonList>

            </div>


            <!-- =================================================
                 QUESTION 3
            ================================================== -->

            <div class="question-box">

                <h5>
                    3. Which SQL command is used to retrieve data from a table?
                </h5>

                <asp:RadioButtonList ID="q3" runat="server">

                    <asp:ListItem>
                        INSERT
                    </asp:ListItem>

                    <asp:ListItem>
                        SELECT
                    </asp:ListItem>

                    <asp:ListItem>
                        DELETE
                    </asp:ListItem>

                    <asp:ListItem>
                        UPDATE
                    </asp:ListItem>

                </asp:RadioButtonList>

            </div>


            <!-- =================================================
                 QUESTION 4
            ================================================== -->

            <div class="question-box">

                <h5>
                    4. Which key uniquely identifies each record in a table?
                </h5>

                <asp:RadioButtonList ID="q4" runat="server">

                    <asp:ListItem>
                        Foreign Key
                    </asp:ListItem>

                    <asp:ListItem>
                        Primary Key
                    </asp:ListItem>

                    <asp:ListItem>
                        Candidate Key
                    </asp:ListItem>

                    <asp:ListItem>
                        Alternate Key
                    </asp:ListItem>

                </asp:RadioButtonList>

            </div>


            <!-- =================================================
                 QUESTION 5
            ================================================== -->

            <div class="question-box">

                <h5>
                    5. Which SQL command is used to add a new record to a table?
                </h5>

                <asp:RadioButtonList ID="q5" runat="server">

                    <asp:ListItem>
                        INSERT
                    </asp:ListItem>

                    <asp:ListItem>
                        SELECT
                    </asp:ListItem>

                    <asp:ListItem>
                        UPDATE
                    </asp:ListItem>

                    <asp:ListItem>
                        CREATE
                    </asp:ListItem>

                </asp:RadioButtonList>

            </div>


            <!-- =================================================
                 SUBMIT
            ================================================== -->

            <asp:Button
                ID="btnSubmit"
                runat="server"
                Text="Submit Exam"
                CssClass="btn-submit" />


        </div>

    </div>

</section>

</asp:Content>