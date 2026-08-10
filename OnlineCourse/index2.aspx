<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="index2.aspx.cs" Inherits="OnlineCourse.index2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

/* Continue Learning Cards */

.project-wrap{
    height:100%;
    display:flex;
    flex-direction:column;
    background:#fff;
    border-radius:12px;
    overflow:hidden;
    box-shadow:0 10px 25px rgba(0,0,0,.08);
}

.project-wrap img{
    width:100%;
    height:250px;
    object-fit:cover;
}

.project-wrap .text{
    flex:1;
    display:flex;
    flex-direction:column;
    padding:25px;
}

.project-wrap h3{
    min-height:65px;
}

.project-wrap p{
    margin-bottom:15px;
}

.project-wrap .progress{
    height:18px;
    border-radius:30px;
}

.project-wrap .btn{
    margin-top:auto;
    border-radius:8px;
}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- ================= HERO SECTION ================= -->

<section class="hero-wrap hero-wrap-2" style="background-image:url('images/bg_1.jpg');">
    <div class="overlay"></div>

    <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">

            <div class="col-lg-10 text-center ftco-animate">

                <span class="subheading text-white">
                    👨‍🎓 Student Dashboard
                </span>

                <h1 class="mb-4">
                    Welcome Back to LearnSphere
                </h1>

                <p class="mb-4">
                    Continue your learning journey with expert instructors,
                    interactive video lessons, quizzes and real-world projects.
                    Track your learning progress and earn certificates after
                    successfully completing your courses.
                </p>

                <a href="MyCourses.aspx" class="btn btn-primary mr-3">
                    Continue Learning
                </a>

                <a href="course.aspx" class="btn btn-white">
                    Browse Courses
                </a>

            </div>

        </div>
    </div>
</section>


<!-- ================= DASHBOARD CARDS ================= -->

<section class="ftco-section bg-light">

<div class="container">

<div class="row align-items-stretch">

<div class="col-md-3 ftco-animate">

<div class="services-2 text-center p-4 bg-white">

<span class="flaticon-book"></span>

<h2 class="mt-3">06</h2>

<h5>Enrolled Courses</h5>

<p>Courses you have joined.</p>

</div>

</div>


<div class="col-md-3 ftco-animate">

<div class="services-2 text-center p-4 bg-white">

<span class="flaticon-teacher"></span>

<h2 class="mt-3">48</h2>

<h5>Video Lessons</h5>

<p>Available learning videos.</p>

</div>

</div>


<div class="col-md-3 ftco-animate">

<div class="services-2 text-center p-4 bg-white">

<span class="flaticon-graduation-cap"></span>

<h2 class="mt-3">72%</h2>

<h5>Progress</h5>

<p>Your overall learning progress.</p>

</div>

</div>


<div class="col-md-3 ftco-animate">

<div class="services-2 text-center p-4 bg-white">

<span class="flaticon-diploma"></span>

<h2 class="mt-3">02</h2>

<h5>Certificates</h5>

<p>Certificates earned successfully.</p>

</div>

</div>

</div>

</div>

</section>



<!-- ================= CONTINUE LEARNING ================= -->

<section class="ftco-section">

<div class="container">

<div class="row justify-content-center mb-5">

<div class="col-md-8 text-center">

<h2 class="mb-3">
Continue Learning
</h2>

<p>
Resume your enrolled courses and improve your skills.
</p>

</div>

</div>

<div class="row">

<!-- Course 1 -->

<div class="col-md-4 ftco-animate">

<div class="project-wrap">

<img src="images/work-1.jpg" class="img-fluid">

<div class="text p-4">

<h3>HTML & CSS</h3>

<p>Progress : 80%</p>

<div class="progress mb-3">

<div class="progress-bar bg-success"
style="width:80%;">
80%
</div>

</div>

<a href="CourseDetails.aspx?course=html"
class="btn btn-primary btn-block">

Continue Learning

</a>

</div>

</div>

</div>


<!-- Course 2 -->

<div class="col-md-4 ftco-animate">

<div class="project-wrap">

<img src="images/work-2.jpg" class="img-fluid">

<div class="text p-4">

<h3>ASP.NET Web Forms</h3>

<p>Progress : 65%</p>

<div class="progress mb-3">

<div class="progress-bar bg-info"
style="width:65%;">
65%
</div>

</div>

<a href="CourseDetails.aspx?course=aspnet"
class="btn btn-primary btn-block">

Continue Learning

</a>

</div>

</div>

</div>


<!-- Course 3 -->

<div class="col-md-4 ftco-animate">

<div class="project-wrap">

<img src="images/work-3.jpg" class="img-fluid">

<div class="text p-4">

<h3>Python Programming</h3>

<p>Progress : 45%</p>

<div class="progress mb-3">

<div class="progress-bar bg-warning"
style="width:45%;">
45%
</div>

</div>

<a href="CourseDetails.aspx?course=python"
class="btn btn-primary btn-block">

Continue Learning

</a>

</div>

</div>

</div>

</div>

</div>

</section>

    <!-- ================= LEARNING PATH ================= -->

<section class="ftco-section bg-light">

<div class="container">

<div class="row justify-content-center mb-5">
<div class="col-md-8 text-center">
<h2>Your Learning Journey</h2>
<p>Follow these simple steps to complete your course successfully.</p>
</div>
</div>

<div class="row text-center">

<div class="col-md-3 ftco-animate">
<div class="services-2 p-4 bg-white">
<h1>1️⃣</h1>
<h4>Enroll</h4>
<p>Select your favourite course.</p>
</div>
</div>

<div class="col-md-3 ftco-animate">
<div class="services-2 p-4 bg-white">
<h1>2️⃣</h1>
<h4>Watch Videos</h4>
<p>Learn through HD video lectures.</p>
</div>
</div>

<div class="col-md-3 ftco-animate">
<div class="services-2 p-4 bg-white">
<h1>3️⃣</h1>
<h4>Practice</h4>
<p>Complete assignments and projects.</p>
</div>
</div>

<div class="col-md-3 ftco-animate">
<div class="services-2 p-4 bg-white">
<h1>4️⃣</h1>
<h4>Earn Certificate</h4>
<p>Get your completion certificate.</p>
</div>
</div>

</div>

</div>

</section>


<!-- ================= POPULAR CATEGORIES ================= -->

<section class="ftco-section">

<div class="container">

<div class="row justify-content-center mb-5">

<div class="col-md-7 text-center">

<h2>Popular Categories</h2>

<p>Choose your favourite learning category.</p>

</div>

</div>

<div class="row">

<div class="col-md-4 ftco-animate">
<div class="services-2 text-center bg-white p-5">
<h1>🌐</h1>
<h4>Web Development</h4>
<p>HTML, CSS, JavaScript & Bootstrap</p>
</div>
</div>

<div class="col-md-4 ftco-animate">
<div class="services-2 text-center bg-white p-5">
<h1>💻</h1>
<h4>Programming</h4>
<p>Java, Python, C#, C++</p>
</div>
</div>

<div class="col-md-4 ftco-animate">
<div class="services-2 text-center bg-white p-5">
<h1>🗄</h1>
<h4>Database</h4>
<p>SQL, MySQL & Oracle</p>
</div>
</div>

<div class="col-md-4 mt-4 ftco-animate">
<div class="services-2 text-center bg-white p-5">
<h1>🤖</h1>
<h4>Artificial Intelligence</h4>
<p>Machine Learning & AI Basics</p>
</div>
</div>

<div class="col-md-4 mt-4 ftco-animate">
<div class="services-2 text-center bg-white p-5">
<h1>☁</h1>
<h4>Cloud Computing</h4>
<p>AWS, Azure & Google Cloud</p>
</div>
</div>

<div class="col-md-4 mt-4 ftco-animate">
<div class="services-2 text-center bg-white p-5">
<h1>🔐</h1>
<h4>Cyber Security</h4>
<p>Network & Ethical Hacking Basics</p>
</div>
</div>

</div>

</div>

</section>


<!-- ================= FEATURED COURSES ================= -->

<section class="ftco-section bg-light">

<div class="container">

<div class="row justify-content-center mb-5">

<div class="col-md-8 text-center">

<h2>Featured Courses</h2>

<p>Most popular courses among students.</p>

</div>

</div>

<div class="row">

<div class="col-md-4 ftco-animate">

<div class="project-wrap">

<img src="images/work-4.jpg" class="img-fluid">

<div class="text p-4">

<h3>Java Programming</h3>

<p>18 Lessons | Beginner</p>

<a href="CourseDetails.aspx?course=java"
class="btn btn-primary btn-block">
View Course
</a>

</div>

</div>

</div>


<div class="col-md-4 ftco-animate">

<div class="project-wrap">

<img src="images/work-5.jpg" class="img-fluid">

<div class="text p-4">

<h3>JavaScript</h3>

<p>20 Lessons | Intermediate</p>

<a href="CourseDetails.aspx?course=javascript"
class="btn btn-primary btn-block">
View Course
</a>

</div>

</div>

</div>


<div class="col-md-4 ftco-animate">

<div class="project-wrap">

<img src="images/work-6.jpg" class="img-fluid">

<div class="text p-4">

<h3>Database Management</h3>

<p>15 Lessons | Beginner</p>

<a href="CourseDetails.aspx?course=database"
class="btn btn-primary btn-block">
View Course
</a>

</div>

</div>

</div>

</div>

</div>

</section>


<!-- ================= LATEST ANNOUNCEMENTS ================= -->

<section class="ftco-section">

<div class="container">

<div class="row justify-content-center mb-5">

<div class="col-md-8 text-center">

<h2>Latest Announcements</h2>

<p>Stay updated with the latest course news.</p>

</div>

</div>

<div class="row">

<div class="col-md-12">

<div class="bg-white p-5 shadow">

<ul class="list-unstyled">

<li class="mb-3">
📢 New Python Programming course has been launched.
</li>

<li class="mb-3">
🎉 HTML & CSS assignments are now available.
</li>

<li class="mb-3">
🏆 Certificates are ready for completed students.
</li>

<li class="mb-3">
📅 Live Webinar on ASP.NET this Sunday.
</li>

<li>
🔥 50% discount on premium programming courses.
</li>

</ul>

</div>

</div>

</div>

</div>

</section>

    <!-- ================= STUDENT ACHIEVEMENTS ================= -->

<section class="ftco-section bg-light">

<div class="container">

<div class="row justify-content-center mb-5">

<div class="col-md-8 text-center">

<h2>Student Achievements</h2>

<p>Your hard work is reflected in your learning journey.</p>

</div>

</div>

<div class="row">

<div class="col-md-3 text-center ftco-animate">
<div class="services-2 bg-white p-4">
<h1>🏅</h1>
<h3>6</h3>
<p>Courses Enrolled</p>
</div>
</div>

<div class="col-md-3 text-center ftco-animate">
<div class="services-2 bg-white p-4">
<h1>🎓</h1>
<h3>2</h3>
<p>Certificates Earned</p>
</div>
</div>

<div class="col-md-3 text-center ftco-animate">
<div class="services-2 bg-white p-4">
<h1>📚</h1>
<h3>48</h3>
<p>Lessons Completed</p>
</div>
</div>

<div class="col-md-3 text-center ftco-animate">
<div class="services-2 bg-white p-4">
<h1>⭐</h1>
<h3>4.9</h3>
<p>Average Rating</p>
</div>
</div>

</div>

</div>

</section>



<!-- ================= STUDENT TESTIMONIALS ================= -->

<section class="ftco-section">

<div class="container">

<div class="row justify-content-center mb-5">

<div class="col-md-8 text-center">

<h2>What Students Say</h2>

<p>Feedback from our successful learners.</p>

</div>

</div>

<div class="row">

<div class="col-md-4 ftco-animate">

<div class="bg-white p-4 shadow rounded">

<h4>Rahul Patel</h4>

<p>

"The HTML & CSS course was amazing. The videos were easy to understand and helped me build my first website."

</p>

</div>

</div>

<div class="col-md-4 ftco-animate">

<div class="bg-white p-4 shadow rounded">

<h4>Priya Shah</h4>

<p>

"I completed the ASP.NET course and earned my certificate. The learning experience was excellent."

</p>

</div>

</div>

<div class="col-md-4 ftco-animate">

<div class="bg-white p-4 shadow rounded">

<h4>Meet Joshi</h4>

<p>

"The Python Programming course is perfect for beginners. I really enjoyed every lesson."

</p>

</div>

</div>

</div>

</div>

</section>



<!-- ================= WHY LEARNSPHERE ================= -->

<section class="ftco-section bg-light">

<div class="container">

<div class="row justify-content-center mb-5">

<div class="col-md-8 text-center">

<h2>Why LearnSphere?</h2>

<p>Why thousands of students choose our platform.</p>

</div>

</div>

<div class="row">

<div class="col-md-4 text-center ftco-animate">

<div class="services-2 p-4 bg-white">

<h1>🎥</h1>

<h4>HD Video Lectures</h4>

<p>High-quality video content for better learning.</p>

</div>

</div>

<div class="col-md-4 text-center ftco-animate">

<div class="services-2 p-4 bg-white">

<h1>👨‍🏫</h1>

<h4>Expert Instructors</h4>

<p>Learn from experienced industry professionals.</p>

</div>

</div>

<div class="col-md-4 text-center ftco-animate">

<div class="services-2 p-4 bg-white">

<h1>📜</h1>

<h4>Certificate</h4>

<p>Receive a certificate after course completion.</p>

</div>

</div>

</div>

</div>

</section>



<!-- ================= CALL TO ACTION ================= -->

<section class="ftco-section bg-primary">

<div class="container">

<div class="row justify-content-center">

<div class="col-md-10 text-center text-white">

<h2 class="mb-4 text-white">

Ready to Continue Your Learning Journey?

</h2>

<p>

Keep improving your skills by exploring more professional courses on LearnSphere.

</p>

<a href="course.aspx" class="btn btn-light btn-lg mt-3">

Explore More Courses

</a>

</div>

</div>

</div>

</section>
</asp:Content>
