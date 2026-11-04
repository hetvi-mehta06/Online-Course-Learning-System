<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="TakeExam.aspx.cs" Inherits="OnlineCourse.TakeExam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

/* =====================================================
   LEARNSPHERE TAKE EXAM PAGE
   Dark Purple + Cyan Theme
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
        radial-gradient(circle at 10% 10%, rgba(139,92,246,.13), transparent 28%),
        radial-gradient(circle at 90% 30%, rgba(34,211,238,.09), transparent 28%),
        linear-gradient(180deg, #080a17, #0d1021);

    color: var(--exam-text);
    padding-bottom: 70px;
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
}

.take-exam-page .hero-content {
    position: relative;
    z-index: 2;
    padding: 65px 20px;
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
}

.take-exam-page .exam-container {
    max-width: 1050px;
    margin: auto;
}

.take-exam-page .exam-box {
    position: relative;
    padding: 45px;
    border-radius: 30px;

    background:
        linear-gradient(
            145deg,
            rgba(30,33,62,.95),
            rgba(13,15,32,.98)
        );

    border: 1px solid rgba(139,92,246,.25);
    box-shadow: 0 30px 75px rgba(0,0,0,.38);
    overflow: hidden;
}

/* HEADING */

.take-exam-page .exam-heading {
    position: relative;
    z-index: 2;
    text-align: center;
    margin-bottom: 40px;
}

.take-exam-page .heading-icon {
    width: 70px;
    height: 70px;
    margin: 0 auto 20px;

    display: flex;
    align-items: center;
    justify-content: center;

    border-radius: 22px;

    background: linear-gradient(
        135deg,
        rgba(139,92,246,.25),
        rgba(34,211,238,.13)
    );

    border: 1px solid rgba(139,92,246,.35);
    color: #c4b5fd;
    font-size: 28px;
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

/* QUESTION CARD */

.take-exam-page .question-card {
    position: relative;
    z-index: 2;
    padding: 28px;
    margin-bottom: 25px;
    border-radius: 22px;

    background: linear-gradient(
        145deg,
        rgba(29,32,59,.96),
        rgba(15,17,35,.98)
    );

    border: 1px solid rgba(139,92,246,.22);
    box-shadow: 0 15px 35px rgba(0,0,0,.22);
    transition: .3s ease;
}

.take-exam-page .question-card:hover {
    border-color: rgba(34,211,238,.40);
    transform: translateY(-3px);
}

.take-exam-page .question-text {
    display: block;
    color: #ffffff;
    font-size: 18px;
    font-weight: 750;
    line-height: 1.6;
    margin-bottom: 22px;
}

/* RADIO BUTTON OPTIONS */

.take-exam-page .question-card input[type="radio"] {
    accent-color: #8b5cf6;
    cursor: pointer;
    margin-right: 10px;
}

/* ASP.NET RADIOBUTTON LABEL */

.take-exam-page .question-card label {
    display: block;
    padding: 13px 16px;
    margin: 12px 0;
    border-radius: 12px;

    background: rgba(139,92,246,.07);
    border: 1px solid rgba(139,92,246,.14);

    color: #dbe3f5;
    font-size: 14px;
    cursor: pointer;
    transition: .3s ease;
}

.take-exam-page .question-card label:hover {
    background: rgba(34,211,238,.09);
    border-color: rgba(34,211,238,.35);
    color: #ffffff;
}

/* OPTIONS */

.take-exam-page .answer-option {
    display: block;
    padding: 13px 16px;
    margin: 12px 0;
    border-radius: 12px;

    background: rgba(139,92,246,.07);
    border: 1px solid rgba(139,92,246,.14);

    color: #dbe3f5;
    font-size: 14px;
    cursor: pointer;
    transition: .3s ease;
}

.take-exam-page .answer-option:hover {
    background: rgba(34,211,238,.09);
    border-color: rgba(34,211,238,.35);
    color: #ffffff;
}

/* SUBMIT BUTTON */

.take-exam-page .submit-area {
    text-align: center;
    margin-top: 35px;
}

.take-exam-page .submit-exam-btn {
    min-width: 190px;
    padding: 14px 32px;
    border: none;
    border-radius: 50px;

    background: linear-gradient(
        100deg,
        #7c3aed,
        #8b5cf6,
        #06b6d4
    );

    color: #ffffff;
    font-size: 14px;
    font-weight: 800;
    letter-spacing: .5px;

    box-shadow: 0 12px 35px rgba(124,58,237,.28);
    cursor: pointer;
    transition: .3s ease;
}

.take-exam-page .submit-exam-btn:hover {
    transform: translateY(-4px);
    box-shadow: 0 17px 45px rgba(139,92,246,.42);
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
                                    Text='<%# Eval("Question") %>'>
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