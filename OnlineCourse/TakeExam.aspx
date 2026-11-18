<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="TakeExam.aspx.cs" Inherits="OnlineCourse.TakeExam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
/* =====================================================
   LEARNSPHERE TAKE EXAM PAGE
   Dark Purple + Cyan Theme with 3D & Animations
===================================================== */

.take-exam-page {
    --exam-purple: #8b5cf6;
    --exam-purple-light: #c4b5fd;
    --exam-cyan: #22d3ee;
    --exam-text: #f8fafc;
    --exam-muted: #a8aec5;

    width: 100%;
    min-height: 100vh;
    background:
        radial-gradient(circle at 10% 10%, rgba(139,92,246,.15), transparent 30%),
        radial-gradient(circle at 90% 30%, rgba(34,211,238,.12), transparent 30%),
        linear-gradient(180deg, #080a17, #0d1021);
    color: var(--exam-text);
    padding-bottom: 70px;
    overflow-x: hidden;
}

/* KEYFRAME ANIMATIONS */
@keyframes fadeSlideUp {
    0% {
        opacity: 0;
        transform: translateY(30px) scale(0.98);
    }
    100% {
        opacity: 1;
        transform: translateY(0) scale(1);
    }
}

@keyframes floatIcon {
    0%, 100% {
        transform: translateY(0px) rotate(0deg);
    }
    50% {
        transform: translateY(-7px) rotate(3deg);
    }
}

@keyframes pulseGlow {
    0%, 100% {
        box-shadow: 0 0 15px rgba(139, 92, 246, 0.3);
    }
    50% {
        box-shadow: 0 0 28px rgba(34, 211, 238, 0.5);
    }
}

/* HERO */
.take-exam-page .exam-hero {
    position: relative;
    min-height: 300px;
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
    background:
        linear-gradient(
            135deg,
            rgba(8,10,25,.90),
            rgba(61,34,103,.75),
            rgba(8,47,73,.65)
        ),
        url('images/bg_1.jpg');
    background-size: cover;
    background-position: center;
    overflow: hidden;
    border-bottom: 1px solid rgba(139,92,246,.2);
}

.take-exam-page .hero-content {
    position: relative;
    z-index: 2;
    padding: 65px 20px;
    animation: fadeSlideUp 0.8s ease-out forwards;
}

.take-exam-page .exam-tag {
    display: inline-block;
    padding: 9px 20px;
    border-radius: 50px;
    background: rgba(139,92,246,.15);
    border: 1px solid rgba(139,92,246,.45);
    color: #c4b5fd;
    font-size: 12px;
    font-weight: 800;
    letter-spacing: 2px;
    animation: pulseGlow 3s infinite;
}

.take-exam-page .hero-content h1 {
    margin: 22px 0 12px;
    font-size: clamp(35px, 5vw, 55px);
    font-weight: 850;
    background: linear-gradient(90deg, #ffffff, #c4b5fd, #67e8f9);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}

.take-exam-page .hero-content p {
    color: #c0c5d8;
    font-size: 16px;
}

/* MAIN CONTENT */
.take-exam-page .exam-content {
    padding: 75px 15px;
    perspective: 1200px; /* 3D Depth */
}

.take-exam-page .exam-container {
    max-width: 1050px;
    margin: auto;
}

.take-exam-page .exam-box {
    position: relative;
    padding: 45px;
    border-radius: 30px;
    background: linear-gradient(145deg, rgba(30,33,62,.95), rgba(13,15,32,.98));
    border: 1px solid rgba(139,92,246,.3);
    box-shadow: 0 30px 75px rgba(0,0,0,.5), inset 0 1px 1px rgba(255,255,255,0.1);
    animation: fadeSlideUp 0.9s ease-out forwards;
}

/* HEADING */
.take-exam-page .exam-heading {
    position: relative;
    z-index: 2;
    text-align: center;
    margin-bottom: 40px;
}

.take-exam-page .heading-icon {
    width: 72px;
    height: 72px;
    margin: 0 auto 20px;
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 22px;
    background: linear-gradient(135deg, rgba(139,92,246,.3), rgba(34,211,238,.18));
    border: 1px solid rgba(139,92,246,.45);
    color: #c4b5fd;
    font-size: 28px;
    box-shadow: 0 10px 25px rgba(139, 92, 246, 0.25);
    animation: floatIcon 3.5s ease-in-out infinite;
}

.take-exam-page .exam-title {
    color: white;
    font-size: 32px;
    font-weight: 800;
    margin-bottom: 12px;
}

.take-exam-page .exam-subtitle {
    color: #a8aec5;
    font-size: 15px;
}

/* 3D QUESTION CARD */
.take-exam-page .question-card {
    position: relative;
    z-index: 2;
    padding: 30px;
    margin-bottom: 28px;
    border-radius: 22px;
    background: linear-gradient(145deg, rgba(29,32,59,.96), rgba(15,17,35,.98));
    border: 1px solid rgba(139,92,246,.25);
    box-shadow: 0 15px 35px rgba(0,0,0,.3), inset 0 1px 0 rgba(255,255,255,.08);
    transform-style: preserve-3d;
    transition: transform 0.35s cubic-bezier(0.25, 0.8, 0.25, 1), border-color 0.35s ease, box-shadow 0.35s ease;
    animation: fadeSlideUp 0.7s ease-out backwards;
}

.take-exam-page .question-card:hover {
    border-color: rgba(34,211,238,.55);
    transform: translateY(-6px) rotateX(1.5deg) scale(1.01);
    box-shadow: 0 25px 50px rgba(0,0,0,.45), 0 0 20px rgba(34,211,238,.15);
}

.take-exam-page .question-text {
    display: block;
    color: #ffffff;
    font-size: 18px;
    font-weight: 750;
    line-height: 1.6;
    margin-bottom: 20px;
    padding-bottom: 12px;
    border-bottom: 1px solid rgba(139,92,246,.18);
}

/* =====================================================
   FIXED ASP.NET RADIO BUTTONS & OPTIONS (BULLET POINTS)
===================================================== */
.take-exam-page .answer-option {
    display: flex !important;
    align-items: center;
    padding: 14px 18px;
    margin: 12px 0;
    border-radius: 14px;
    background: rgba(139,92,246,.07);
    border: 1px solid rgba(139,92,246,.18);
    cursor: pointer;
    transition: all 0.25s ease;
    position: relative;
}

.take-exam-page .answer-option:hover {
    background: rgba(34,211,238,.12);
    border-color: rgba(34,211,238,.45);
    transform: translateX(6px);
}

/* Custom Radio Circle */
.take-exam-page .answer-option input[type="radio"] {
    appearance: none;
    -webkit-appearance: none;
    width: 20px;
    height: 20px;
    min-width: 20px;
    border: 2px solid #8b5cf6;
    border-radius: 50%;
    margin: 0 14px 0 0 !important;
    cursor: pointer;
    position: relative;
    transition: all 0.25s ease;
    background: rgba(13, 15, 32, 0.8);
}

.take-exam-page .answer-option input[type="radio"]:checked {
    border-color: #22d3ee;
    background: #22d3ee;
    box-shadow: 0 0 12px rgba(34, 211, 238, 0.7);
}

.take-exam-page .answer-option input[type="radio"]:checked::after {
    content: "";
    position: absolute;
    top: 50%;
    left: 50%;
    width: 8px;
    height: 8px;
    background: #080a17;
    border-radius: 50%;
    transform: translate(-50%, -50%);
}

/* Remove inner box styling from ASP.NET generated label */
.take-exam-page .answer-option label {
    display: inline-block !important;
    width: 100%;
    padding: 0 !important;
    margin: 0 !important;
    background: transparent !important;
    border: none !important;
    color: #dbe3f5;
    font-size: 15px;
    font-weight: 500;
    cursor: pointer;
    user-select: none;
}

.take-exam-page .answer-option:hover label {
    color: #ffffff;
}

/* Highlight entire option card when selected */
.take-exam-page .answer-option:has(input[type="radio"]:checked) {
    background: linear-gradient(90deg, rgba(139,92,246,.22), rgba(34,211,238,.15));
    border-color: #22d3ee;
    box-shadow: 0 6px 20px rgba(34, 211, 238, 0.15);
    transform: translateX(8px);
}

.take-exam-page .answer-option:has(input[type="radio"]:checked) label {
    color: #ffffff;
    font-weight: 700;
}

/* 3D SUBMIT BUTTON */
.take-exam-page .submit-area {
    text-align: center;
    margin-top: 40px;
}

.take-exam-page .submit-exam-btn {
    position: relative;
    overflow: hidden;
    min-width: 220px;
    padding: 16px 38px;
    border: none;
    border-radius: 50px;
    background: linear-gradient(100deg, #7c3aed, #8b5cf6, #06b6d4);
    color: #ffffff;
    font-size: 15px;
    font-weight: 800;
    letter-spacing: 0.8px;
    text-transform: uppercase;
    box-shadow: 0 8px 0 #4c1d95, 0 15px 35px rgba(124,58,237,.4);
    cursor: pointer;
    transition: all 0.25s ease;
}

.take-exam-page .submit-exam-btn:hover {
    transform: translateY(-3px);
    box-shadow: 0 11px 0 #4c1d95, 0 22px 45px rgba(34,211,238,.45);
}

.take-exam-page .submit-exam-btn:active {
    transform: translateY(4px);
    box-shadow: 0 4px 0 #4c1d95, 0 8px 15px rgba(124,58,237,.3);
}

/* MESSAGE */
.take-exam-page .result-message {
    display: block;
    text-align: center;
    color: #67e8f9;
    font-size: 18px;
    font-weight: 700;
    margin: 20px 0;
}

/* RESPONSIVE */
@media (max-width: 768px) {
    .take-exam-page .exam-hero {
        min-height: 250px;
    }
    .take-exam-page .exam-content {
        padding: 45px 15px;
    }
    .take-exam-page .exam-box {
        padding: 25px 17px;
    }
    .take-exam-page .exam-title {
        font-size: 26px;
    }
    .take-exam-page .question-card {
        padding: 20px 16px;
    }
    .take-exam-page .question-text {
        font-size: 16px;
    }
}
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="take-exam-page">

        <!-- HERO SECTION -->
        <section class="exam-hero">
            <div class="hero-content">
                <span class="exam-tag">
                    ✦ ONLINE EXAMINATION
                </span>
                <h1>Test Your Knowledge</h1>
                <p>Read each question carefully and select the correct answer.</p>
            </div>
        </section>

        <!-- QUESTION SECTION -->
        <section class="exam-content">
            <div class="exam-container">
                <div class="exam-box">

                    <div class="exam-heading">
                        <div class="heading-icon">
                            <i class="fa fa-graduation-cap"></i>
                        </div>
                        <h2 class="exam-title">
                            Answer All Questions
                        </h2>
                        <p class="exam-subtitle">
                            Select one correct option for each question.
                        </p>
                    </div>

                    <asp:Label ID="lblMessage" runat="server"
                        CssClass="result-message">
                    </asp:Label>

                    <asp:DataList ID="dlQuestions" runat="server" Width="100%">
                        <ItemTemplate>
                            <div class="question-card">

                                <!-- QUESTION -->
                                <asp:Label ID="lblQuestion" runat="server"
                                    CssClass="question-text"
                                    Text='<%# (Container.ItemIndex + 1) + ". " + Eval("Question") %>'>
                                </asp:Label>

                                <!-- OPTION A -->
                                <asp:RadioButton ID="rbOption1" runat="server"
                                    GroupName='<%# "Q" + Eval("QuizID") %>'
                                    Text='<%# "A. " + Eval("Option1") %>'
                                    CssClass="answer-option" />

                                <!-- OPTION B -->
                                <asp:RadioButton ID="rbOption2" runat="server"
                                    GroupName='<%# "Q" + Eval("QuizID") %>'
                                    Text='<%# "B. " + Eval("Option2") %>'
                                    CssClass="answer-option" />

                                <!-- OPTION C -->
                                <asp:RadioButton ID="rbOption3" runat="server"
                                    GroupName='<%# "Q" + Eval("QuizID") %>'
                                    Text='<%# "C. " + Eval("Option3") %>'
                                    CssClass="answer-option" />

                                <!-- OPTION D -->
                                <asp:RadioButton ID="rbOption4" runat="server"
                                    GroupName='<%# "Q" + Eval("QuizID") %>'
                                    Text='<%# "D. " + Eval("Option4") %>'
                                    CssClass="answer-option" />

                                <!-- HIDDEN FIELDS -->
                                <asp:HiddenField ID="hfQuizID" runat="server"
                                    Value='<%# Eval("QuizID") %>' />

                                <asp:HiddenField ID="hfCorrectAnswer" runat="server"
                                    Value='<%# Eval("CorrectAnswer") %>' />

                                <asp:HiddenField ID="hfMarks" runat="server"
                                    Value='<%# Eval("Marks") %>' />

                            </div>
                        </ItemTemplate>
                    </asp:DataList>

                    <!-- SUBMIT BUTTON -->
                    <div class="submit-area">
                        <asp:Button ID="btnSubmit" runat="server"
                            Text="Submit Exam"
                            CssClass="submit-exam-btn"
                            OnClick="btnSubmit_Click" />
                    </div>

                </div>
            </div>
        </section>

    </div>
</asp:Content>