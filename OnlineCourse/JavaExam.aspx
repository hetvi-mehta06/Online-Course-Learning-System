<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="JavaExam.aspx.cs" Inherits="OnlineCourse.JavaExam" %>
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

<h2 class="exam-title">Java Programming Exam</h2>

<p class="exam-subtitle">
    Select the correct answer for each question.
</p>

<hr />

<!-- Question 1 -->
<div class="question-box">

<h5>1. Who developed Java?</h5>

<asp:RadioButtonList ID="q1" runat="server">

    <asp:ListItem>Microsoft</asp:ListItem>
    <asp:ListItem>Sun Microsystems</asp:ListItem>
    <asp:ListItem>Google</asp:ListItem>
    <asp:ListItem>Apple</asp:ListItem>

</asp:RadioButtonList>

</div>


<!-- Question 2 -->
<div class="question-box">

<h5>2. Which keyword is used to create a class in Java?</h5>

<asp:RadioButtonList ID="q2" runat="server">

    <asp:ListItem>class</asp:ListItem>
    <asp:ListItem>ClassName</asp:ListItem>
    <asp:ListItem>new</asp:ListItem>
    <asp:ListItem>object</asp:ListItem>

</asp:RadioButtonList>

</div>


<!-- Question 3 -->
<div class="question-box">

<h5>3. Which method is the starting point of a Java program?</h5>

<asp:RadioButtonList ID="q3" runat="server">

    <asp:ListItem>start()</asp:ListItem>
    <asp:ListItem>run()</asp:ListItem>
    <asp:ListItem>main()</asp:ListItem>
    <asp:ListItem>execute()</asp:ListItem>

</asp:RadioButtonList>

</div>


<!-- Question 4 -->
<div class="question-box">

<h5>4. Which keyword is used to create an object in Java?</h5>

<asp:RadioButtonList ID="q4" runat="server">

    <asp:ListItem>object</asp:ListItem>
    <asp:ListItem>new</asp:ListItem>
    <asp:ListItem>create</asp:ListItem>
    <asp:ListItem>class</asp:ListItem>

</asp:RadioButtonList>

</div>


<!-- Question 5 -->
<div class="question-box">

<h5>5. Which data type is used to store whole numbers in Java?</h5>

<asp:RadioButtonList ID="q5" runat="server">

    <asp:ListItem>float</asp:ListItem>
    <asp:ListItem>String</asp:ListItem>
    <asp:ListItem>int</asp:ListItem>
    <asp:ListItem>boolean</asp:ListItem>

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
