<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="JavaScriptExam.aspx.cs" Inherits="OnlineCourse.JavaScriptExam" %>
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

<h2 class="exam-title">JavaScript Exam</h2>

<p class="exam-subtitle">
    Select the correct answer for each question.
</p>

<hr />

<!-- Question 1 -->
<div class="question-box">

<h5>1. What is JavaScript mainly used for?</h5>

<asp:RadioButtonList ID="q1" runat="server">

    <asp:ListItem>Creating dynamic and interactive web pages</asp:ListItem>
    <asp:ListItem>Managing databases only</asp:ListItem>
    <asp:ListItem>Creating operating systems</asp:ListItem>
    <asp:ListItem>Designing hardware</asp:ListItem>

</asp:RadioButtonList>

</div>


<!-- Question 2 -->
<div class="question-box">

<h5>2. Which tag is used to include JavaScript in HTML?</h5>

<asp:RadioButtonList ID="q2" runat="server">

    <asp:ListItem>&lt;js&gt;</asp:ListItem>
    <asp:ListItem>&lt;javascript&gt;</asp:ListItem>
    <asp:ListItem>&lt;script&gt;</asp:ListItem>
    <asp:ListItem>&lt;code&gt;</asp:ListItem>

</asp:RadioButtonList>

</div>


<!-- Question 3 -->
<div class="question-box">

<h5>3. Which keyword is used to declare a variable in JavaScript?</h5>

<asp:RadioButtonList ID="q3" runat="server">

    <asp:ListItem>var</asp:ListItem>
    <asp:ListItem>int</asp:ListItem>
    <asp:ListItem>string</asp:ListItem>
    <asp:ListItem>variable</asp:ListItem>

</asp:RadioButtonList>

</div>


<!-- Question 4 -->
<div class="question-box">

<h5>4. Which function is used to display a message in the browser console?</h5>

<asp:RadioButtonList ID="q4" runat="server">

    <asp:ListItem>print()</asp:ListItem>
    <asp:ListItem>console.log()</asp:ListItem>
    <asp:ListItem>display()</asp:ListItem>
    <asp:ListItem>message()</asp:ListItem>

</asp:RadioButtonList>

</div>


<!-- Question 5 -->
<div class="question-box">

<h5>5. Which symbol is used for a single-line comment in JavaScript?</h5>

<asp:RadioButtonList ID="q5" runat="server">

    <asp:ListItem>#</asp:ListItem>
    <asp:ListItem>//</asp:ListItem>
    <asp:ListItem>/*</asp:ListItem>
    <asp:ListItem>&lt;!-- --&gt;</asp:ListItem>

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
