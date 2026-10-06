<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="Exam.aspx.cs" Inherits="OnlineCourse.Exam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>
        .exam-section {
    width: 100%;
    height: 665px;

    background-image:
        linear-gradient(
            rgba(165, 105, 210, 0.38),
            rgba(90, 140, 225, 0.38)
        ),
        url('images/bg_1.jpg');

    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;

    padding: 0;
    margin: 0;
}

.exam-page {
    width: 100%;
    margin: 0;
    padding: 0;
}

/* IMAGE ONLY */
.exam-hero {
    width: 100%;
    height: 665px;

    background-image:
        linear-gradient(
            rgba(165, 105, 210, 0.38),
            rgba(90, 140, 225, 0.38)
        ),
        url('images/bg_1.jpg');

    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
}


/* MCQ IMAGE NI NICHE */
.exam-content {
    width: 100%;
    background: #f5f3ff;
    padding: 60px 0;
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
    padding: 8px 0;
}


.btn-submit {
    background: #6c63ff;
    color: white;
    border: none;
    padding: 12px 30px;
    border-radius: 25px;
}

.exam-hero-content {
    position: absolute;
    top: 260px;
    left: 0;
    width: 100%;
    text-align: center;
    color: white;
}

.exam-tag {
    font-size: 15px;
    font-weight: 600;
    letter-spacing: 1px;
}

.exam-hero-content h1 {
    font-size: 55px;
    font-weight: 700;
    margin: 15px 0;
}

.exam-hero-content p {
    font-size: 20px;
    margin-bottom: 25px;
}

.exam-btn {
    display: inline-block;
    background: #4d8df7;
    color: white;
    padding: 13px 28px;
    border-radius: 4px;
    text-decoration: none;
}

.exam-btn:hover {
    color: white;
}

.subject-card {
    background: #f8f7ff;
    padding: 25px;
    border-radius: 12px;
    text-align: center;
    min-height: 200px;
}

.subject-card h4 {
    color: #6c63ff;
    font-weight: 600;
    margin-bottom: 15px;
}

.subject-card p {
    color: #777;
    margin-bottom: 20px;
}
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="exam-page">

    <!-- ONLY BACKGROUND IMAGE -->
    <div class="exam-hero">

    <div class="exam-hero-content">

        <span class="exam-tag">ONLINE EXAM</span>

        <h1>Test Your Knowledge</h1>

        <p>
            Complete your course exam and check your understanding.
        </p>

        <a href="#exam" class="exam-btn">
            Start Exam
        </a>

    </div>

</div>


    <!-- MCQ BELOW IMAGE -->
    <div class="exam-content" id="exam">

        <div class="container">

           <div class="exam-box">

    <h2 class="exam-title">
        Choose Your Subject
    </h2>

    <p class="exam-subtitle">
        Select a course to start your exam.
    </p>

    <div class="row">

        <div class="col-md-4 mb-4">
            <div class="subject-card">
                <h4>HTML & CSS</h4>
                <p>Test your knowledge of HTML and CSS.</p>

                <a href="HTMLCSSExam.aspx" class="exam-btn">
            Start Exam
        </a>
            </div>
        </div>

        <div class="col-md-4 mb-4">
            <div class="subject-card">
                <h4>ASP.NET Web Forms</h4>
                <p>Test your ASP.NET Web Forms knowledge.</p>
                       <a href="ASPNETExam.aspx" class="exam-btn">
                    Start Exam
                    </a>
            </div>
        </div>

        <div class="col-md-4 mb-4">
            <div class="subject-card">
                <h4>Python Programming</h4>
                <p>Test your Python programming skills.</p>
                <a href="PythonExam.aspx" class="exam-btn">
                    Start Exam
                </a>
            </div>
        </div>

        <div class="col-md-4 mb-4">
            <div class="subject-card">
                <h4>Java Programming</h4>
                <p>Test your Java programming knowledge.</p>
                <a href="JavaExam.aspx" class="exam-btn">
                    Start Exam
                </a>
            </div>
        </div>

        <div class="col-md-4 mb-4">
            <div class="subject-card">
                <h4>JavaScript</h4>
                <p>Test your JavaScript knowledge.</p>
                <a href="JavaScriptExam.aspx" class="exam-btn">
                    Start Exam
                </a>
            </div>
        </div>

        <div class="col-md-4 mb-4">
            <div class="subject-card">
                <h4>Database Management</h4>
                <p>Test your database knowledge.</p>
                <a href="DatabaseExam.aspx" class="exam-btn">
                    Start Exam
                </a>
            </div>
        </div>

    </div>

</div>

   

</section>
</asp:Content>
