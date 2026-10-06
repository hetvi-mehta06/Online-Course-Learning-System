<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="PythonExam.aspx.cs" Inherits="OnlineCourse.PythonExam" %>
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

<h2 class="exam-title">Python Programming Exam</h2>

<p class="exam-subtitle">
    Select the correct answer for each question.
</p>

<hr />

<!-- Question 1 -->
<div class="question-box">

<h5>1. What type of language is Python?</h5>

<asp:RadioButtonList ID="q1" runat="server">

    <asp:ListItem>Programming Language</asp:ListItem>
    <asp:ListItem>Database</asp:ListItem>
    <asp:ListItem>Operating System</asp:ListItem>
    <asp:ListItem>Web Browser</asp:ListItem>

</asp:RadioButtonList>

</div>


<!-- Question 2 -->
<div class="question-box">

<h5>2. Which symbol is used to write a comment in Python?</h5>

<asp:RadioButtonList ID="q2" runat="server">

    <asp:ListItem>//</asp:ListItem>
    <asp:ListItem>#</asp:ListItem>
    <asp:ListItem>/*</asp:ListItem>
    <asp:ListItem>--</asp:ListItem>

</asp:RadioButtonList>

</div>


<!-- Question 3 -->
<div class="question-box">

<h5>3. Which function is used to display output in Python?</h5>

<asp:RadioButtonList ID="q3" runat="server">

    <asp:ListItem>display()</asp:ListItem>
    <asp:ListItem>show()</asp:ListItem>
    <asp:ListItem>print()</asp:ListItem>
    <asp:ListItem>write()</asp:ListItem>

</asp:RadioButtonList>

</div>


<!-- Question 4 -->
<div class="question-box">

<h5>4. Which keyword is used to define a function in Python?</h5>

<asp:RadioButtonList ID="q4" runat="server">

    <asp:ListItem>function</asp:ListItem>
    <asp:ListItem>define</asp:ListItem>
    <asp:ListItem>def</asp:ListItem>
    <asp:ListItem>fun</asp:ListItem>

</asp:RadioButtonList>

</div>


<!-- Question 5 -->
<div class="question-box">

<h5>5. Which of the following is a Python data type?</h5>

<asp:RadioButtonList ID="q5" runat="server">

    <asp:ListItem>int</asp:ListItem>
    <asp:ListItem>html</asp:ListItem>
    <asp:ListItem>css</asp:ListItem>
    <asp:ListItem>sql</asp:ListItem>

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
