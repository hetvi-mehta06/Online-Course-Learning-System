<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="HTMLCSSExam.aspx.cs" Inherits="OnlineCourse.HTMLCSSExam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>

.exam-page {
    background: #f5f3ff;
    padding: 60px 0;
    min-height: 100vh;
}

.exam-box {
    background: white;
    padding: 40px;
    border-radius: 15px;
    box-shadow: 0 5px 25px rgba(0,0,0,0.08);
}

.exam-title {
    color: #6c63ff;
    font-weight: 700;
    margin-bottom: 10px;
}

.exam-subtitle {
    color: #777;
    margin-bottom: 30px;
}

.question-box {
    background: #f8f7ff;
    padding: 20px;
    margin-bottom: 20px;
    border-radius: 10px;
}

.question-box h5 {
    color: #333;
    font-weight: 600;
    margin-bottom: 15px;
}

.question-box table {
    width: 100%;
}

.question-box td {
    padding: 6px 0;
}

.btn-submit {
    background: #6c63ff;
    color: white;
    border: none;
    padding: 12px 30px;
    border-radius: 25px;
}

</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="exam-page">

    <div class="container">

        <div class="exam-box">

            <h2 class="exam-title">
                HTML & CSS Exam
            </h2>

            <p class="exam-subtitle">
                Select the correct answer for each question.
            </p>

            <hr />

            <!-- Question 1 -->
            <div class="question-box">

                <h5>1. What does HTML stand for?</h5>

                <asp:RadioButtonList ID="q1" runat="server">
                    <asp:ListItem>Hyper Text Markup Language</asp:ListItem>
                    <asp:ListItem>High Text Machine Language</asp:ListItem>
                    <asp:ListItem>Hyperlinks Text Mark Language</asp:ListItem>
                    <asp:ListItem>Home Tool Markup Language</asp:ListItem>
                </asp:RadioButtonList>

            </div>


            <!-- Question 2 -->
            <div class="question-box">

                <h5>2. Which language is used to style a web page?</h5>

                <asp:RadioButtonList ID="q2" runat="server">
                    <asp:ListItem>HTML</asp:ListItem>
                    <asp:ListItem>CSS</asp:ListItem>
                    <asp:ListItem>Python</asp:ListItem>
                    <asp:ListItem>SQL</asp:ListItem>
                </asp:RadioButtonList>

            </div>


            <!-- Question 3 -->
            <div class="question-box">

                <h5>3. Which HTML tag is used to create a hyperlink?</h5>

                <asp:RadioButtonList ID="q3" runat="server">
                    <asp:ListItem>&lt;a&gt;</asp:ListItem>
                    <asp:ListItem>&lt;p&gt;</asp:ListItem>
                    <asp:ListItem>&lt;img&gt;</asp:ListItem>
                    <asp:ListItem>&lt;table&gt;</asp:ListItem>
                </asp:RadioButtonList>

            </div>


            <!-- Question 4 -->
            <div class="question-box">

                <h5>4. Which CSS property is used to change text color?</h5>

                <asp:RadioButtonList ID="q4" runat="server">
                    <asp:ListItem>font-size</asp:ListItem>
                    <asp:ListItem>background</asp:ListItem>
                    <asp:ListItem>color</asp:ListItem>
                    <asp:ListItem>text-style</asp:ListItem>
                </asp:RadioButtonList>

            </div>


            <!-- Question 5 -->
            <div class="question-box">

                <h5>5. Which HTML tag is used for the largest heading?</h5>

                <asp:RadioButtonList ID="q5" runat="server">
                    <asp:ListItem>&lt;h6&gt;</asp:ListItem>
                    <asp:ListItem>&lt;h3&gt;</asp:ListItem>
                    <asp:ListItem>&lt;h1&gt;</asp:ListItem>
                    <asp:ListItem>&lt;head&gt;</asp:ListItem>
                </asp:RadioButtonList>

            </div>


            <asp:Button ID="btnSubmit"
                runat="server"
                Text="Submit Exam"
                CssClass="btn-submit" />

        </div>

    </div>

</section>


</asp:Content>
