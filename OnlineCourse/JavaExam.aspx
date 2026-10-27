<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="JavaExam.aspx.cs" Inherits="OnlineCourse.JavaExam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>

    /* ===============================
       JAVA EXAM - PREMIUM UI
       =============================== */

    .java-exam-page {
        min-height: 100vh;
        padding: 55px 0 70px;

        background:
            radial-gradient(circle at 10% 10%, rgba(126, 87, 255, 0.22), transparent 30%),
            radial-gradient(circle at 90% 20%, rgba(0, 229, 255, 0.14), transparent 28%),
            radial-gradient(circle at 50% 100%, rgba(236, 72, 153, 0.12), transparent 35%),
            #08091b;

        position: relative;
        overflow: hidden;
    }

    /* Decorative Glow */

    .java-exam-page::before,
    .java-exam-page::after {
        content: "";
        position: absolute;
        border-radius: 50%;
        pointer-events: none;
    }

    .java-exam-page::before {
        width: 280px;
        height: 280px;

        top: 70px;
        left: -130px;

        background: rgba(124, 58, 237, 0.16);

        box-shadow:
            0 0 100px rgba(124, 58, 237, 0.25);
    }

    .java-exam-page::after {
        width: 240px;
        height: 240px;

        right: -100px;
        bottom: 100px;

        background: rgba(6, 182, 212, 0.12);

        box-shadow:
            0 0 100px rgba(6, 182, 212, 0.22);
    }

    .java-exam-page .container {
        position: relative;
        z-index: 2;
        max-width: 1000px;
    }


    /* ===============================
       MAIN EXAM CARD
       =============================== */

    .exam-box {
        position: relative;

        padding: 42px;

        border-radius: 28px;

        background: rgba(17, 20, 45, 0.82);

        border: 1px solid rgba(255, 255, 255, 0.10);

        box-shadow:
            0 30px 80px rgba(0, 0, 0, 0.45),
            inset 0 1px 0 rgba(255, 255, 255, 0.08);

        backdrop-filter: blur(22px);
        -webkit-backdrop-filter: blur(22px);
    }


    /* Top Gradient Line */

    .exam-box::before {
        content: "";

        position: absolute;

        top: 0;
        left: 8%;

        width: 84%;
        height: 2px;

        border-radius: 20px;

        background: linear-gradient(
            90deg,
            transparent,
            #8b5cf6,
            #22d3ee,
            #ec4899,
            transparent
        );

        box-shadow:
            0 0 18px rgba(34, 211, 238, 0.6),
            0 0 30px rgba(139, 92, 246, 0.5);
    }


    /* ===============================
       HEADER
       =============================== */

    .exam-header {
        text-align: center;
        margin-bottom: 30px;
    }

    .exam-icon {
        width: 68px;
        height: 68px;

        margin: 0 auto 18px;

        display: flex;
        align-items: center;
        justify-content: center;

        border-radius: 20px;

        background:
            linear-gradient(
                135deg,
                rgba(139, 92, 246, 0.25),
                rgba(34, 211, 238, 0.15)
            );

        border: 1px solid rgba(139, 92, 246, 0.35);

        color: #67e8f9;

        font-size: 27px;
        font-weight: 800;

        box-shadow:
            0 0 30px rgba(34, 211, 238, 0.12),
            inset 0 0 20px rgba(139, 92, 246, 0.08);
    }


    .exam-title {
        margin: 0 0 10px;

        font-size: 34px;
        font-weight: 800;

        letter-spacing: -0.8px;

        background:
            linear-gradient(
                90deg,
                #ffffff,
                #c4b5fd,
                #67e8f9
            );

        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;

        background-clip: text;
    }


    .exam-subtitle {
        margin: 0;

        color: #9ca3c7;

        font-size: 15px;
        line-height: 1.7;
    }


    /* ===============================
       INFO PILLS
       =============================== */

    .exam-info {
        display: flex;

        justify-content: center;

        gap: 12px;

        flex-wrap: wrap;

        margin-top: 22px;
    }

    .info-pill {
        padding: 8px 15px;

        border-radius: 30px;

        color: #cbd5e1;

        font-size: 13px;

        background: rgba(255, 255, 255, 0.045);

        border: 1px solid rgba(255, 255, 255, 0.09);
    }

    .info-pill span {
        color: #67e8f9;
        font-weight: 700;
    }


    /* ===============================
       DIVIDER
       =============================== */

    .exam-divider {
        height: 1px;

        border: none;

        margin: 30px 0;

        background:
            linear-gradient(
                90deg,
                transparent,
                rgba(139, 92, 246, 0.45),
                rgba(34, 211, 238, 0.45),
                transparent
            );
    }


    /* ===============================
       QUESTION CARD
       =============================== */

    .question-box {
        position: relative;

        margin-bottom: 22px;

        padding: 25px;

        border-radius: 20px;

        background: rgba(255, 255, 255, 0.035);

        border: 1px solid rgba(255, 255, 255, 0.08);

        transition:
            transform 0.3s ease,
            border-color 0.3s ease,
            box-shadow 0.3s ease;
    }

    .question-box:hover {
        transform: translateY(-3px);

        border-color: rgba(103, 232, 249, 0.28);

        box-shadow:
            0 15px 35px rgba(0, 0, 0, 0.22),
            0 0 25px rgba(34, 211, 238, 0.05);
    }


    .question-box h5 {
        margin: 0 0 18px;

        color: #f1f5f9;

        font-size: 17px;

        font-weight: 700;

        line-height: 1.6;
    }


    /* ===============================
       RADIO OPTIONS
       =============================== */

    .question-box table {
        width: 100%;

        border-collapse: separate;

        border-spacing: 0 9px;
    }

    .question-box td {
        padding: 0;

        color: #b9c0d9;
    }

    .question-box td label {
        display: block;

        width: 100%;

        box-sizing: border-box;

        padding: 13px 16px;

        border-radius: 12px;

        background: rgba(255, 255, 255, 0.025);

        border: 1px solid rgba(255, 255, 255, 0.06);

        color: #cbd5e1;

        font-size: 14px;

        cursor: pointer;

        transition:
            background 0.25s ease,
            border-color 0.25s ease,
            color 0.25s ease,
            padding-left 0.25s ease;
    }

    .question-box td label:hover {
        background: rgba(103, 232, 249, 0.07);

        border-color: rgba(103, 232, 249, 0.28);

        color: #ffffff;

        padding-left: 21px;
    }

    .question-box input[type="radio"] {
        margin-right: 10px;

        accent-color: #8b5cf6;
    }


    /* ===============================
       SUBMIT BUTTON
       =============================== */

    .submit-area {
        text-align: center;

        margin-top: 32px;
    }

    .btn-submit {
        min-width: 190px;

        padding: 14px 32px;

        border: none;

        border-radius: 14px;

        color: white;

        font-size: 15px;

        font-weight: 700;

        letter-spacing: 0.3px;

        cursor: pointer;

        background:
            linear-gradient(
                135deg,
                #7c3aed,
                #8b5cf6,
                #06b6d4
            );

        box-shadow:
            0 12px 30px rgba(124, 58, 237, 0.30),
            0 0 20px rgba(6, 182, 212, 0.12);

        transition:
            transform 0.3s ease,
            box-shadow 0.3s ease,
            filter 0.3s ease;
    }

    .btn-submit:hover {
        transform: translateY(-3px);

        filter: brightness(1.12);

        box-shadow:
            0 18px 38px rgba(124, 58, 237, 0.40),
            0 0 28px rgba(6, 182, 212, 0.22);
    }

    .btn-submit:active {
        transform: translateY(0);
    }


    /* ===============================
       NOTE
       =============================== */

    .exam-note {
        text-align: center;

        margin-top: 20px;

        color: #717997;

        font-size: 12px;
    }


    /* ===============================
       RESPONSIVE
       =============================== */

    @media (max-width: 768px) {

        .java-exam-page {
            padding: 35px 15px 50px;
        }

        .exam-box {
            padding: 25px 18px;

            border-radius: 22px;
        }

        .exam-title {
            font-size: 27px;
        }

        .exam-subtitle {
            font-size: 14px;
        }

        .question-box {
            padding: 19px;
        }

        .question-box h5 {
            font-size: 15px;
        }

        .question-box td label {
            font-size: 13px;

            padding: 12px;
        }

        .btn-submit {
            width: 100%;
        }
    }

</style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<section class="java-exam-page">

    <div class="container">

        <div class="exam-box">

            <!-- Exam Header -->

            <div class="exam-header">

                <div class="exam-icon">
                    ☕
                </div>

                <h2 class="exam-title">
                    Java Programming Exam
                </h2>

                <p class="exam-subtitle">
                    Test your knowledge of Java programming concepts.
                    Select the correct answer for each question.
                </p>

                <div class="exam-info">

                    <div class="info-pill">
                        <span>05</span> Questions
                    </div>

                    <div class="info-pill">
                        <span>JAVA</span> Programming
                    </div>

                    <div class="info-pill">
                        <span>MCQ</span> Exam
                    </div>

                </div>

            </div>


            <hr class="exam-divider" />


            <!-- Question 1 -->

            <div class="question-box">

                <h5>
                    1. Who developed Java?
                </h5>

                <asp:RadioButtonList ID="q1" runat="server">

                    <asp:ListItem>
                        Microsoft
                    </asp:ListItem>

                    <asp:ListItem>
                        Sun Microsystems
                    </asp:ListItem>

                    <asp:ListItem>
                        Google
                    </asp:ListItem>

                    <asp:ListItem>
                        Apple
                    </asp:ListItem>

                </asp:RadioButtonList>

            </div>


            <!-- Question 2 -->

            <div class="question-box">

                <h5>
                    2. Which keyword is used to create a class in Java?
                </h5>

                <asp:RadioButtonList ID="q2" runat="server">

                    <asp:ListItem>
                        class
                    </asp:ListItem>

                    <asp:ListItem>
                        ClassName
                    </asp:ListItem>

                    <asp:ListItem>
                        new
                    </asp:ListItem>

                    <asp:ListItem>
                        object
                    </asp:ListItem>

                </asp:RadioButtonList>

            </div>


            <!-- Question 3 -->

            <div class="question-box">

                <h5>
                    3. Which method is the starting point of a Java program?
                </h5>

                <asp:RadioButtonList ID="q3" runat="server">

                    <asp:ListItem>
                        start()
                    </asp:ListItem>

                    <asp:ListItem>
                        run()
                    </asp:ListItem>

                    <asp:ListItem>
                        main()
                    </asp:ListItem>

                    <asp:ListItem>
                        execute()
                    </asp:ListItem>

                </asp:RadioButtonList>

            </div>


            <!-- Question 4 -->

            <div class="question-box">

                <h5>
                    4. Which keyword is used to create an object in Java?
                </h5>

                <asp:RadioButtonList ID="q4" runat="server">

                    <asp:ListItem>
                        object
                    </asp:ListItem>

                    <asp:ListItem>
                        new
                    </asp:ListItem>

                    <asp:ListItem>
                        create
                    </asp:ListItem>

                    <asp:ListItem>
                        class
                    </asp:ListItem>

                </asp:RadioButtonList>

            </div>


            <!-- Question 5 -->

            <div class="question-box">

                <h5>
                    5. Which data type is used to store whole numbers in Java?
                </h5>

                <asp:RadioButtonList ID="q5" runat="server">

                    <asp:ListItem>
                        float
                    </asp:ListItem>

                    <asp:ListItem>
                        String
                    </asp:ListItem>

                    <asp:ListItem>
                        int
                    </asp:ListItem>

                    <asp:ListItem>
                        boolean
                    </asp:ListItem>

                </asp:RadioButtonList>

            </div>


            <!-- Submit -->

            <div class="submit-area">

                <asp:Button
                    ID="btnSubmit"
                    runat="server"
                    Text="Submit Exam"
                    CssClass="btn-submit" />

                <div class="exam-note">
                    Make sure you have selected an answer for every question.
                </div>

            </div>

        </div>

    </div>

</section>

</asp:Content>