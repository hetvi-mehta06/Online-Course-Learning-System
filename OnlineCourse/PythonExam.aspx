<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="PythonExam.aspx.cs" Inherits="OnlineCourse.PythonExam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>

    /* =====================================================
       PYTHON EXAM PAGE
    ===================================================== */

    .python-exam-page {
        min-height: 100vh;
        padding: 45px 0 80px;
        position: relative;
        overflow: hidden;

        background:
            radial-gradient(
                circle at 8% 15%,
                rgba(124, 58, 237, 0.20),
                transparent 30%
            ),
            radial-gradient(
                circle at 92% 75%,
                rgba(6, 182, 212, 0.14),
                transparent 32%
            ),
            linear-gradient(
                135deg,
                #070a1c,
                #10132d 50%,
                #080b20
            );
    }


    /* Decorative glow */

    .python-exam-page::before {
        content: "";
        position: absolute;

        width: 280px;
        height: 280px;

        top: -100px;
        left: -90px;

        border-radius: 50%;

        background: rgba(124, 58, 237, 0.18);

        filter: blur(70px);

        pointer-events: none;
    }

    .python-exam-page::after {
        content: "";
        position: absolute;

        width: 320px;
        height: 320px;

        right: -120px;
        bottom: -120px;

        border-radius: 50%;

        background: rgba(6, 182, 212, 0.12);

        filter: blur(80px);

        pointer-events: none;
    }


    /* =====================================================
       MAIN CONTAINER
    ===================================================== */

    .python-exam-page .container {
        width: 92%;
        max-width: 1000px;
        margin: auto;

        position: relative;
        z-index: 2;
    }


    /* =====================================================
       EXAM BOX
    ===================================================== */

    .python-exam-box {
        padding: 38px;

        border-radius: 28px;

        background:
            linear-gradient(
                145deg,
                rgba(25, 30, 67, 0.94),
                rgba(12, 16, 40, 0.94)
            );

        border: 1px solid rgba(255,255,255,0.09);

        box-shadow:
            0 30px 80px rgba(0,0,0,0.40),
            0 0 40px rgba(124,58,237,0.08);

        backdrop-filter: blur(20px);
        -webkit-backdrop-filter: blur(20px);
    }


    /* =====================================================
       HEADER
    ===================================================== */

    .python-exam-header {
        display: flex;
        align-items: center;
        gap: 18px;

        margin-bottom: 28px;
    }

    .python-exam-icon {
        width: 62px;
        height: 62px;

        flex-shrink: 0;

        display: flex;
        align-items: center;
        justify-content: center;

        border-radius: 18px;

        background:
            linear-gradient(
                135deg,
                #7c3aed,
                #06b6d4
            );

        color: white;

        font-size: 27px;

        box-shadow:
            0 12px 30px rgba(124,58,237,0.30);
    }

    .python-exam-title {
        margin: 0 0 5px;

        color: #ffffff;

        font-size: 30px;
        font-weight: 800;

        letter-spacing: -0.5px;
    }

    .python-exam-subtitle {
        margin: 0;

        color: #94a3b8;

        font-size: 14px;
    }


    /* =====================================================
       TOP LINE
    ===================================================== */

    .python-exam-line {
        height: 1px;

        margin: 0 0 28px;

        background:
            linear-gradient(
                90deg,
                rgba(124,58,237,0.8),
                rgba(6,182,212,0.4),
                transparent
            );

        border: none;
    }


    /* =====================================================
       QUESTION BOX
    ===================================================== */

    .python-question {
        position: relative;

        padding: 23px 24px;
        margin-bottom: 18px;

        border-radius: 20px;

        background:
            linear-gradient(
                145deg,
                rgba(255,255,255,0.055),
                rgba(255,255,255,0.025)
            );

        border: 1px solid rgba(255,255,255,0.08);

        transition:
            transform 0.3s ease,
            border-color 0.3s ease,
            box-shadow 0.3s ease;
    }

    .python-question:hover {
        transform: translateY(-4px);

        border-color:
            rgba(124,58,237,0.35);

        box-shadow:
            0 15px 35px rgba(0,0,0,0.20),
            0 0 25px rgba(124,58,237,0.07);
    }


    /* Question number */

    .python-question-number {
        display: inline-flex;

        align-items: center;
        justify-content: center;

        width: 32px;
        height: 32px;

        margin-right: 9px;

        border-radius: 10px;

        background:
            linear-gradient(
                135deg,
                rgba(124,58,237,0.30),
                rgba(6,182,212,0.18)
            );

        border: 1px solid rgba(124,58,237,0.30);

        color: #c4b5fd;

        font-size: 13px;
        font-weight: 700;
    }


    /* Question title */

    .python-question h5 {
        display: flex;
        align-items: center;

        margin: 0 0 18px;

        color: #f8fafc;

        font-size: 16px;
        font-weight: 650;

        line-height: 1.6;
    }


    /* =====================================================
       RADIO BUTTON LIST
    ===================================================== */

    .python-question table {
        width: 100% !important;
        border-collapse: separate;
        border-spacing: 0 8px;
    }

    .python-question td {
        padding: 0 !important;
    }

    .python-question input[type="radio"] {
        margin-right: 9px;

        accent-color: #8b5cf6;

        cursor: pointer;
    }

    .python-question label {
        color: #cbd5e1;

        font-size: 14px;

        cursor: pointer;

        transition: color 0.25s ease;
    }

    .python-question label:hover {
        color: #ffffff;
    }


    /* Radio row */

    .python-question table tr {
        transition: 0.25s ease;
    }

    .python-question table tr:hover {
        background: rgba(124,58,237,0.07);
    }


    /* =====================================================
       SUBMIT AREA
    ===================================================== */

    .python-submit-area {
        margin-top: 30px;

        padding-top: 25px;

        border-top:
            1px solid rgba(255,255,255,0.08);

        display: flex;
        justify-content: flex-end;
    }


    /* =====================================================
       SUBMIT BUTTON
    ===================================================== */

    .python-submit-btn {
        min-width: 170px;

        padding: 13px 28px;

        border: none;
        border-radius: 14px;

        color: #ffffff !important;

        font-family: 'Poppins', sans-serif;
        font-size: 14px;
        font-weight: 700;

        cursor: pointer;

        background:
            linear-gradient(
                135deg,
                #7c3aed,
                #6366f1,
                #06b6d4
            );

        box-shadow:
            0 12px 30px rgba(124,58,237,0.28);

        transition:
            transform 0.3s ease,
            box-shadow 0.3s ease;
    }

    .python-submit-btn:hover {
        transform: translateY(-3px);

        box-shadow:
            0 16px 38px rgba(6,182,212,0.28);
    }


    /* =====================================================
       RESPONSIVE
    ===================================================== */

    @media (max-width: 700px) {

        .python-exam-page {
            padding: 30px 0 60px;
        }

        .python-exam-box {
            padding: 24px 18px;

            border-radius: 22px;
        }

        .python-exam-header {
            align-items: flex-start;
        }

        .python-exam-icon {
            width: 52px;
            height: 52px;

            font-size: 22px;
        }

        .python-exam-title {
            font-size: 23px;
        }

        .python-question {
            padding: 19px 17px;
        }

        .python-question h5 {
            font-size: 14px;
        }

        .python-submit-area {
            justify-content: stretch;
        }

        .python-submit-btn {
            width: 100%;
        }
    }

</style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<section class="python-exam-page">

    <div class="container">

        <div class="python-exam-box">


            <!-- =================================================
                 EXAM HEADER
            ================================================== -->

            <div class="python-exam-header">

                <div class="python-exam-icon">
                    <i class="fa fa-code"></i>
                </div>

                <div>

                    <h2 class="python-exam-title">
                        Python Programming Exam
                    </h2>

                    <p class="python-exam-subtitle">
                        Select the correct answer for each question.
                    </p>

                </div>

            </div>


            <hr class="python-exam-line" />


            <!-- =================================================
                 QUESTION 1
            ================================================== -->

            <div class="python-question">

                <h5>
                    <span class="python-question-number">01</span>
                    What type of language is Python?
                </h5>

                <asp:RadioButtonList ID="q1" runat="server">

                    <asp:ListItem>
                        Programming Language
                    </asp:ListItem>

                    <asp:ListItem>
                        Database
                    </asp:ListItem>

                    <asp:ListItem>
                        Operating System
                    </asp:ListItem>

                    <asp:ListItem>
                        Web Browser
                    </asp:ListItem>

                </asp:RadioButtonList>

            </div>


            <!-- =================================================
                 QUESTION 2
            ================================================== -->

            <div class="python-question">

                <h5>
                    <span class="python-question-number">02</span>
                    Which symbol is used to write a comment in Python?
                </h5>

                <asp:RadioButtonList ID="q2" runat="server">

                    <asp:ListItem>//</asp:ListItem>

                    <asp:ListItem>#</asp:ListItem>

                    <asp:ListItem>/*</asp:ListItem>

                    <asp:ListItem>--</asp:ListItem>

                </asp:RadioButtonList>

            </div>


            <!-- =================================================
                 QUESTION 3
            ================================================== -->

            <div class="python-question">

                <h5>
                    <span class="python-question-number">03</span>
                    Which function is used to display output in Python?
                </h5>

                <asp:RadioButtonList ID="q3" runat="server">

                    <asp:ListItem>display()</asp:ListItem>

                    <asp:ListItem>show()</asp:ListItem>

                    <asp:ListItem>print()</asp:ListItem>

                    <asp:ListItem>write()</asp:ListItem>

                </asp:RadioButtonList>

            </div>


            <!-- =================================================
                 QUESTION 4
            ================================================== -->

            <div class="python-question">

                <h5>
                    <span class="python-question-number">04</span>
                    Which keyword is used to define a function in Python?
                </h5>

                <asp:RadioButtonList ID="q4" runat="server">

                    <asp:ListItem>function</asp:ListItem>

                    <asp:ListItem>define</asp:ListItem>

                    <asp:ListItem>def</asp:ListItem>

                    <asp:ListItem>fun</asp:ListItem>

                </asp:RadioButtonList>

            </div>


            <!-- =================================================
                 QUESTION 5
            ================================================== -->

            <div class="python-question">

                <h5>
                    <span class="python-question-number">05</span>
                    Which of the following is a Python data type?
                </h5>

                <asp:RadioButtonList ID="q5" runat="server">

                    <asp:ListItem>int</asp:ListItem>

                    <asp:ListItem>html</asp:ListItem>

                    <asp:ListItem>css</asp:ListItem>

                    <asp:ListItem>sql</asp:ListItem>

                </asp:RadioButtonList>

            </div>


            <!-- =================================================
                 SUBMIT
            ================================================== -->

            <div class="python-submit-area">

                <asp:Button
                    ID="btnSubmit"
                    runat="server"
                    Text="Submit Exam"
                    CssClass="python-submit-btn" />

            </div>


        </div>

    </div>

</section>

</asp:Content>