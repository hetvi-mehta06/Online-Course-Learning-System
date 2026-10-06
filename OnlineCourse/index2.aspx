<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="index2.aspx.cs" Inherits="OnlineCourse.index2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>

/* =========================================================
   LEARNSPHERE STUDENT DASHBOARD - PREMIUM DESIGN
   ========================================================= */

.student-dashboard-page {
    min-height: 100vh;
    background:
        radial-gradient(circle at 8% 8%, rgba(118,87,255,.16), transparent 28%),
        radial-gradient(circle at 92% 12%, rgba(0,207,255,.10), transparent 25%),
        #0b0918;
    color: #fff;
    overflow: hidden;
}

.student-dashboard-page .dashboard-section {
    padding: 85px 0;
    position: relative;
}

.student-dashboard-page .section-light {
    background:
        linear-gradient(135deg, #100d22, #15102c);
}

.student-dashboard-page .section-dark {
    background:
        radial-gradient(circle at 80% 20%, rgba(0,207,255,.07), transparent 25%),
        #0b0918;
}

/* ================= HERO ================= */

.student-dashboard-page .student-hero {
    position: relative;
    min-height: 560px;
    display: flex;
    align-items: center;
    background:
        linear-gradient(120deg, rgba(9,7,25,.94), rgba(25,15,55,.72)),
        url('images/bg_1.jpg') center/cover no-repeat;
    overflow: hidden;
}

.student-dashboard-page .student-hero::before {
    content: "";
    position: absolute;
    width: 430px;
    height: 430px;
    border-radius: 50%;
    background: rgba(118,87,255,.18);
    filter: blur(90px);
    top: -170px;
    right: -120px;
}

.student-dashboard-page .student-hero::after {
    content: "";
    position: absolute;
    width: 320px;
    height: 320px;
    border-radius: 50%;
    background: rgba(0,207,255,.12);
    filter: blur(80px);
    bottom: -150px;
    left: -100px;
}

.student-dashboard-page .hero-content {
    position: relative;
    z-index: 2;
    max-width: 850px;
    margin: auto;
    text-align: center;
}

.student-dashboard-page .student-badge {
    display: inline-flex;
    align-items: center;
    padding: 9px 20px;
    border-radius: 50px;
    background: rgba(255,255,255,.08);
    border: 1px solid rgba(255,255,255,.15);
    color: #bcaeff;
    font-size: 13px;
    font-weight: 600;
    backdrop-filter: blur(12px);
}

.student-dashboard-page .hero-title {
    margin: 22px 0 15px;
    font-size: 52px;
    font-weight: 800;
    line-height: 1.15;
    background: linear-gradient(
        90deg,
        #ffffff,
        #bdafff,
        #6deaff
    );
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}

.student-dashboard-page .hero-text {
    max-width: 720px;
    margin: auto;
    color: rgba(255,255,255,.68);
    font-size: 16px;
    line-height: 1.8;
}

.student-dashboard-page .hero-buttons {
    margin-top: 30px;
}

.student-dashboard-page .primary-btn,
.student-dashboard-page .secondary-btn {
    display: inline-block;
    padding: 13px 28px;
    border-radius: 50px;
    font-size: 14px;
    font-weight: 700;
    text-decoration: none !important;
    transition: .3s ease;
}

.student-dashboard-page .primary-btn {
    color: #fff;
    background: linear-gradient(135deg,#7657ff,#00cfff);
    box-shadow: 0 12px 30px rgba(96,80,255,.35);
}

.student-dashboard-page .secondary-btn {
    color: #fff;
    background: rgba(255,255,255,.07);
    border: 1px solid rgba(255,255,255,.18);
}

.student-dashboard-page .primary-btn:hover,
.student-dashboard-page .secondary-btn:hover {
    color: #fff;
    transform: translateY(-3px);
}

/* ================= SECTION TITLE ================= */

.student-dashboard-page .section-heading {
    text-align: center;
    margin-bottom: 50px;
}

.student-dashboard-page .section-heading h2 {
    color: #fff;
    font-size: 34px;
    font-weight: 800;
    margin-bottom: 12px;
}

.student-dashboard-page .section-heading p {
    color: rgba(255,255,255,.55);
    margin: 0;
}

/* ================= STAT CARDS ================= */

.student-dashboard-page .stat-card {
    height: 100%;
    padding: 28px 22px;
    text-align: center;
    border-radius: 20px;
    background: rgba(255,255,255,.055);
    border: 1px solid rgba(255,255,255,.10);
    box-shadow: 0 15px 40px rgba(0,0,0,.20);
    backdrop-filter: blur(15px);
    transition: .35s ease;
}

.student-dashboard-page .stat-card:hover {
    transform: translateY(-8px);
    border-color: rgba(118,87,255,.55);
    box-shadow:
        0 20px 45px rgba(0,0,0,.28),
        0 0 25px rgba(118,87,255,.12);
}

.student-dashboard-page .stat-icon {
    width: 62px;
    height: 62px;
    margin: auto;
    border-radius: 18px;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 25px;
    color: #fff;
    background: linear-gradient(135deg,#7657ff,#00cfff);
    box-shadow: 0 10px 25px rgba(96,80,255,.28);
}

.student-dashboard-page .stat-number {
    color: #fff;
    font-size: 30px;
    font-weight: 800;
    margin: 17px 0 4px;
}

.student-dashboard-page .stat-card h5 {
    color: #ddd8ff;
    font-weight: 650;
}

.student-dashboard-page .stat-card p {
    color: rgba(255,255,255,.48);
    font-size: 13px;
    margin: 0;
}

/* ================= COURSE CARD ================= */

.student-dashboard-page .course-card {
    height: 100%;
    display: flex;
    flex-direction: column;
    overflow: hidden;
    border-radius: 22px;
    background: rgba(255,255,255,.055);
    border: 1px solid rgba(255,255,255,.10);
    box-shadow: 0 18px 45px rgba(0,0,0,.22);
    transition: .35s ease;
}

.student-dashboard-page .course-card:hover {
    transform: translateY(-8px);
    border-color: rgba(0,207,255,.40);
    box-shadow:
        0 25px 55px rgba(0,0,0,.30),
        0 0 30px rgba(0,207,255,.08);
}

.student-dashboard-page .course-image {
    position: relative;
    height: 230px;
    overflow: hidden;
}

.student-dashboard-page .course-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: .5s ease;
}

.student-dashboard-page .course-card:hover .course-image img {
    transform: scale(1.07);
}

.student-dashboard-page .course-image::after {
    content: "";
    position: absolute;
    inset: 0;
    background: linear-gradient(
        to top,
        rgba(9,7,25,.65),
        transparent 55%
    );
}

.student-dashboard-page .course-content {
    flex: 1;
    display: flex;
    flex-direction: column;
    padding: 25px;
}

.student-dashboard-page .course-content h3 {
    color: #fff;
    font-size: 20px;
    font-weight: 700;
    margin-bottom: 10px;
}

.student-dashboard-page .course-content p {
    color: rgba(255,255,255,.52);
    font-size: 13px;
}

.student-dashboard-page .progress {
    height: 10px;
    margin: 10px 0 8px;
    background: rgba(255,255,255,.08);
    border-radius: 50px;
    overflow: hidden;
}

.student-dashboard-page .progress-bar {
    border-radius: 50px;
    background: linear-gradient(90deg,#7657ff,#00cfff);
}

.student-dashboard-page .progress-text {
    display: flex;
    justify-content: space-between;
    color: rgba(255,255,255,.45);
    font-size: 12px;
}

.student-dashboard-page .course-btn {
    margin-top: auto;
    padding-top: 20px;
}

.student-dashboard-page .course-btn a {
    display: block;
    padding: 12px;
    border-radius: 12px;
    text-align: center;
    color: #fff;
    background: linear-gradient(135deg,#7657ff,#00cfff);
    text-decoration: none;
    font-weight: 700;
    font-size: 13px;
    transition: .3s;
}

.student-dashboard-page .course-btn a:hover {
    color: #fff;
    box-shadow: 0 10px 25px rgba(96,80,255,.30);
}

/* ================= LEARNING JOURNEY ================= */

.student-dashboard-page .journey-card {
    height: 100%;
    text-align: center;
    padding: 30px 20px;
    border-radius: 20px;
    background: rgba(255,255,255,.05);
    border: 1px solid rgba(255,255,255,.10);
    transition: .3s;
}

.student-dashboard-page .journey-card:hover {
    transform: translateY(-7px);
    border-color: rgba(118,87,255,.45);
}

.student-dashboard-page .journey-number {
    font-size: 35px;
    margin-bottom: 12px;
}

.student-dashboard-page .journey-card h4 {
    color: #fff;
    font-weight: 700;
}

.student-dashboard-page .journey-card p {
    color: rgba(255,255,255,.48);
    font-size: 13px;
    margin-bottom: 0;
}

/* ================= CATEGORY ================= */

.student-dashboard-page .category-card {
    height: 100%;
    text-align: center;
    padding: 38px 20px;
    border-radius: 22px;
    background: rgba(255,255,255,.045);
    border: 1px solid rgba(255,255,255,.09);
    transition: .35s;
}

.student-dashboard-page .category-card:hover {
    transform: translateY(-8px);
    background: rgba(118,87,255,.08);
    border-color: rgba(118,87,255,.45);
}

.student-dashboard-page .category-icon {
    font-size: 42px;
    margin-bottom: 18px;
}

.student-dashboard-page .category-card h4 {
    color: #fff;
    font-weight: 700;
}

.student-dashboard-page .category-card p {
    color: rgba(255,255,255,.48);
    font-size: 13px;
}

/* ================= ANNOUNCEMENTS ================= */

.student-dashboard-page .announcement-box {
    padding: 30px;
    border-radius: 22px;
    background: rgba(255,255,255,.055);
    border: 1px solid rgba(255,255,255,.10);
    box-shadow: 0 18px 45px rgba(0,0,0,.20);
}

.student-dashboard-page .announcement-item {
    display: flex;
    align-items: center;
    gap: 15px;
    padding: 17px 0;
    color: rgba(255,255,255,.72);
    border-bottom: 1px solid rgba(255,255,255,.07);
}

.student-dashboard-page .announcement-item:last-child {
    border-bottom: none;
}

.student-dashboard-page .announcement-dot {
    min-width: 9px;
    height: 9px;
    border-radius: 50%;
    background: linear-gradient(135deg,#7657ff,#00cfff);
    box-shadow: 0 0 12px rgba(0,207,255,.55);
}

/* ================= ACHIEVEMENT ================= */

.student-dashboard-page .achievement-card {
    height: 100%;
    text-align: center;
    padding: 30px 15px;
    border-radius: 20px;
    background: rgba(255,255,255,.05);
    border: 1px solid rgba(255,255,255,.09);
}

.student-dashboard-page .achievement-icon {
    font-size: 38px;
}

.student-dashboard-page .achievement-card h3 {
    color: #fff;
    font-size: 29px;
    font-weight: 800;
    margin: 10px 0 4px;
}

.student-dashboard-page .achievement-card p {
    color: rgba(255,255,255,.48);
    margin: 0;
}

/* ================= TESTIMONIAL ================= */

.student-dashboard-page .testimonial-card {
    height: 100%;
    padding: 30px;
    border-radius: 22px;
    background: rgba(255,255,255,.055);
    border: 1px solid rgba(255,255,255,.10);
    transition: .3s;
}

.student-dashboard-page .testimonial-card:hover {
    transform: translateY(-7px);
    border-color: rgba(0,207,255,.35);
}

.student-dashboard-page .testimonial-stars {
    color: #ffd45a;
    letter-spacing: 3px;
    margin-bottom: 17px;
}

.student-dashboard-page .testimonial-card h4 {
    color: #fff;
    font-weight: 700;
}

.student-dashboard-page .testimonial-card p {
    color: rgba(255,255,255,.58);
    line-height: 1.8;
    font-size: 14px;
}

/* ================= WHY LEARNSPHERE ================= */

.student-dashboard-page .why-card {
    height: 100%;
    padding: 32px 22px;
    text-align: center;
    border-radius: 22px;
    background: rgba(255,255,255,.05);
    border: 1px solid rgba(255,255,255,.10);
    transition: .35s;
}

.student-dashboard-page .why-card:hover {
    transform: translateY(-8px);
    border-color: rgba(118,87,255,.45);
}

.student-dashboard-page .why-icon {
    font-size: 42px;
    margin-bottom: 17px;
}

.student-dashboard-page .why-card h4 {
    color: #fff;
    font-weight: 700;
}

.student-dashboard-page .why-card p {
    color: rgba(255,255,255,.48);
    font-size: 13px;
}

/* ================= CTA ================= */

.student-dashboard-page .dashboard-cta {
    padding: 85px 20px;
    text-align: center;
    background:
        radial-gradient(circle at 20% 50%, rgba(118,87,255,.22), transparent 30%),
        radial-gradient(circle at 80% 50%, rgba(0,207,255,.16), transparent 30%),
        linear-gradient(135deg,#17102f,#0c1428);
}

.student-dashboard-page .dashboard-cta h2 {
    color: #fff;
    font-size: 35px;
    font-weight: 800;
}

.student-dashboard-page .dashboard-cta p {
    color: rgba(255,255,255,.58);
}

/* ================= RESPONSIVE ================= */

@media(max-width:991px) {

    .student-dashboard-page .hero-title {
        font-size: 42px;
    }

    .student-dashboard-page .student-hero {
        min-height: 500px;
    }

}

@media(max-width:767px) {

    .student-dashboard-page .dashboard-section {
        padding: 60px 0;
    }

    .student-dashboard-page .hero-title {
        font-size: 32px;
    }

    .student-dashboard-page .hero-text {
        font-size: 14px;
    }

    .student-dashboard-page .hero-buttons a {
        display: block;
        margin: 10px 0 !important;
    }

    .student-dashboard-page .section-heading h2 {
        font-size: 27px;
    }

    .student-dashboard-page .course-image {
        height: 210px;
    }

}

</style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="student-dashboard-page">


<!-- =====================================================
     HERO
===================================================== -->

<section class="student-hero">

    <div class="container">

        <div class="hero-content ftco-animate">

            <span class="student-badge">
                👨‍🎓 Student Dashboard
            </span>

            <h1 class="hero-title">
                Welcome Back to LearnSphere
            </h1>

            <p class="hero-text">
                Continue your learning journey with expert instructors,
                interactive video lessons, quizzes and real-world projects.
                Track your learning progress and earn certificates after
                successfully completing your courses.
            </p>

            <div class="hero-buttons">

                <a href="MyCourses.aspx"
                   class="primary-btn mr-2">
                    Continue Learning
                </a>

                <a href="course.aspx"
                   class="secondary-btn">
                    Browse Courses
                </a>

            </div>

        </div>

    </div>

</section>


<!-- =====================================================
     DASHBOARD STATISTICS
===================================================== -->

<section class="dashboard-section section-light">

<div class="container">

<div class="row">

    <div class="col-md-3 mb-4 ftco-animate">

        <div class="stat-card">

            <div class="stat-icon">
                <span class="flaticon-book"></span>
            </div>

            <div class="stat-number">06</div>

            <h5>Enrolled Courses</h5>

            <p>Courses you have joined.</p>

        </div>

    </div>


    <div class="col-md-3 mb-4 ftco-animate">

        <div class="stat-card">

            <div class="stat-icon">
                <span class="flaticon-teacher"></span>
            </div>

            <div class="stat-number">48</div>

            <h5>Video Lessons</h5>

            <p>Available learning videos.</p>

        </div>

    </div>


    <div class="col-md-3 mb-4 ftco-animate">

        <div class="stat-card">

            <div class="stat-icon">
                <span class="flaticon-graduation-cap"></span>
            </div>

            <div class="stat-number">72%</div>

            <h5>Progress</h5>

            <p>Your overall learning progress.</p>

        </div>

    </div>


    <div class="col-md-3 mb-4 ftco-animate">

        <div class="stat-card">

            <div class="stat-icon">
                <span class="flaticon-diploma"></span>
            </div>

            <div class="stat-number">02</div>

            <h5>Certificates</h5>

            <p>Certificates earned successfully.</p>

        </div>

    </div>

</div>

</div>

</section>


<!-- =====================================================
     CONTINUE LEARNING
===================================================== -->

<section class="dashboard-section section-dark">

<div class="container">

<div class="section-heading">

    <h2>Continue Learning</h2>

    <p>
        Resume your enrolled courses and improve your skills.
    </p>

</div>


<div class="row">


<!-- HTML CSS -->

<div class="col-md-4 mb-4 ftco-animate">

<div class="course-card">

    <div class="course-image">

        <img src="images/work-1.jpg"
             alt="HTML CSS"
             class="img-fluid" />

    </div>

    <div class="course-content">

        <h3>HTML &amp; CSS</h3>

        <p>Progress : 80%</p>

        <div class="progress">

            <div class="progress-bar"
                 style="width:80%;">
            </div>

        </div>

        <div class="progress-text">
            <span>Learning Progress</span>
            <span>80%</span>
        </div>

        <div class="course-btn">

            <a href="CourseDetails.aspx?course=html">
                Continue Learning
            </a>

        </div>

    </div>

</div>

</div>


<!-- ASP.NET -->

<div class="col-md-4 mb-4 ftco-animate">

<div class="course-card">

    <div class="course-image">

        <img src="images/work-2.jpg"
             alt="ASP.NET Web Forms"
             class="img-fluid" />

    </div>

    <div class="course-content">

        <h3>ASP.NET Web Forms</h3>

        <p>Progress : 65%</p>

        <div class="progress">

            <div class="progress-bar"
                 style="width:65%;">
            </div>

        </div>

        <div class="progress-text">
            <span>Learning Progress</span>
            <span>65%</span>
        </div>

        <div class="course-btn">

            <a href="CourseDetails.aspx?course=aspnet">
                Continue Learning
            </a>

        </div>

    </div>

</div>

</div>


<!-- PYTHON -->

<div class="col-md-4 mb-4 ftco-animate">

<div class="course-card">

    <div class="course-image">

        <img src="images/work-3.jpg"
             alt="Python Programming"
             class="img-fluid" />

    </div>

    <div class="course-content">

        <h3>Python Programming</h3>

        <p>Progress : 45%</p>

        <div class="progress">

            <div class="progress-bar"
                 style="width:45%;">
            </div>

        </div>

        <div class="progress-text">
            <span>Learning Progress</span>
            <span>45%</span>
        </div>

        <div class="course-btn">

            <a href="CourseDetails.aspx?course=python">
                Continue Learning
            </a>

        </div>

    </div>

</div>

</div>

</div>

</div>

</section>


<!-- =====================================================
     LEARNING JOURNEY
===================================================== -->

<section class="dashboard-section section-light">

<div class="container">

<div class="section-heading">

    <h2>Your Learning Journey</h2>

    <p>
        Follow these simple steps to complete your course successfully.
    </p>

</div>

<div class="row">


<div class="col-md-3 mb-4 ftco-animate">

<div class="journey-card">

    <div class="journey-number">1️⃣</div>

    <h4>Enroll</h4>

    <p>Select your favourite course.</p>

</div>

</div>


<div class="col-md-3 mb-4 ftco-animate">

<div class="journey-card">

    <div class="journey-number">2️⃣</div>

    <h4>Watch Videos</h4>

    <p>Learn through HD video lectures.</p>

</div>

</div>


<div class="col-md-3 mb-4 ftco-animate">

<div class="journey-card">

    <div class="journey-number">3️⃣</div>

    <h4>Practice</h4>

    <p>Complete assignments and projects.</p>

</div>

</div>


<div class="col-md-3 mb-4 ftco-animate">

<div class="journey-card">

    <div class="journey-number">4️⃣</div>

    <h4>Earn Certificate</h4>

    <p>Get your completion certificate.</p>

</div>

</div>

</div>

</div>

</section>


<!-- =====================================================
     POPULAR CATEGORIES
===================================================== -->

<section class="dashboard-section section-dark">

<div class="container">

<div class="section-heading">

    <h2>Popular Categories</h2>

    <p>Choose your favourite learning category.</p>

</div>

<div class="row">


<div class="col-md-4 mb-4 ftco-animate">

<div class="category-card">

    <div class="category-icon">🌐</div>

    <h4>Web Development</h4>

    <p>HTML, CSS, JavaScript &amp; Bootstrap</p>

</div>

</div>


<div class="col-md-4 mb-4 ftco-animate">

<div class="category-card">

    <div class="category-icon">💻</div>

    <h4>Programming</h4>

    <p>Java, Python, C#, C++</p>

</div>

</div>


<div class="col-md-4 mb-4 ftco-animate">

<div class="category-card">

    <div class="category-icon">🗄</div>

    <h4>Database</h4>

    <p>SQL, MySQL &amp; Oracle</p>

</div>

</div>


<div class="col-md-4 mb-4 ftco-animate">

<div class="category-card">

    <div class="category-icon">🤖</div>

    <h4>Artificial Intelligence</h4>

    <p>Machine Learning &amp; AI Basics</p>

</div>

</div>


<div class="col-md-4 mb-4 ftco-animate">

<div class="category-card">

    <div class="category-icon">☁</div>

    <h4>Cloud Computing</h4>

    <p>AWS, Azure &amp; Google Cloud</p>

</div>

</div>


<div class="col-md-4 mb-4 ftco-animate">

<div class="category-card">

    <div class="category-icon">🔐</div>

    <h4>Cyber Security</h4>

    <p>Network &amp; Ethical Hacking Basics</p>

</div>

</div>

</div>

</div>

</section>


<!-- =====================================================
     FEATURED COURSES
===================================================== -->

<section class="dashboard-section section-light">

<div class="container">

<div class="section-heading">

    <h2>Featured Courses</h2>

    <p>Most popular courses among students.</p>

</div>

<div class="row">


<div class="col-md-4 mb-4 ftco-animate">

<div class="course-card">

    <div class="course-image">

        <img src="images/work-4.jpg"
             alt="Java Programming" />

    </div>

    <div class="course-content">

        <h3>Java Programming</h3>

        <p>18 Lessons | Beginner</p>

        <div class="course-btn">

            <a href="CourseDetails.aspx?course=java">
                View Course
            </a>

        </div>

    </div>

</div>

</div>


<div class="col-md-4 mb-4 ftco-animate">

<div class="course-card">

    <div class="course-image">

        <img src="images/work-5.jpg"
             alt="JavaScript" />

    </div>

    <div class="course-content">

        <h3>JavaScript</h3>

        <p>20 Lessons | Intermediate</p>

        <div class="course-btn">

            <a href="CourseDetails.aspx?course=javascript">
                View Course
            </a>

        </div>

    </div>

</div>

</div>


<div class="col-md-4 mb-4 ftco-animate">

<div class="course-card">

    <div class="course-image">

        <img src="images/work-6.jpg"
             alt="Database Management" />

    </div>

    <div class="course-content">

        <h3>Database Management</h3>

        <p>15 Lessons | Beginner</p>

        <div class="course-btn">

            <a href="CourseDetails.aspx?course=database">
                View Course
            </a>

        </div>

    </div>

</div>

</div>

</div>

</div>

</section>


<!-- =====================================================
     ANNOUNCEMENTS
===================================================== -->

<section class="dashboard-section section-dark">

<div class="container">

<div class="section-heading">

    <h2>Latest Announcements</h2>

    <p>Stay updated with the latest course news.</p>

</div>

<div class="announcement-box">

    <div class="announcement-item">
        <span class="announcement-dot"></span>
        <span>📢 New Python Programming course has been launched.</span>
    </div>

    <div class="announcement-item">
        <span class="announcement-dot"></span>
        <span>🎉 HTML &amp; CSS assignments are now available.</span>
    </div>

    <div class="announcement-item">
        <span class="announcement-dot"></span>
        <span>🏆 Certificates are ready for completed students.</span>
    </div>

    <div class="announcement-item">
        <span class="announcement-dot"></span>
        <span>📅 Live Webinar on ASP.NET this Sunday.</span>
    </div>

    <div class="announcement-item">
        <span class="announcement-dot"></span>
        <span>🔥 50% discount on premium programming courses.</span>
    </div>

</div>

</div>

</section>


<!-- =====================================================
     STUDENT ACHIEVEMENTS
===================================================== -->

<section class="dashboard-section section-light">

<div class="container">

<div class="section-heading">

    <h2>Student Achievements</h2>

    <p>Your hard work is reflected in your learning journey.</p>

</div>

<div class="row">


<div class="col-md-3 mb-4 ftco-animate">

<div class="achievement-card">

    <div class="achievement-icon">🏅</div>

    <h3>6</h3>

    <p>Courses Enrolled</p>

</div>

</div>


<div class="col-md-3 mb-4 ftco-animate">

<div class="achievement-card">

    <div class="achievement-icon">🎓</div>

    <h3>2</h3>

    <p>Certificates Earned</p>

</div>

</div>


<div class="col-md-3 mb-4 ftco-animate">

<div class="achievement-card">

    <div class="achievement-icon">📚</div>

    <h3>48</h3>

    <p>Lessons Completed</p>

</div>

</div>


<div class="col-md-3 mb-4 ftco-animate">

<div class="achievement-card">

    <div class="achievement-icon">⭐</div>

    <h3>4.9</h3>

    <p>Average Rating</p>

</div>

</div>

</div>

</div>

</section>


<!-- =====================================================
     TESTIMONIALS
===================================================== -->

<section class="dashboard-section section-dark">

<div class="container">

<div class="section-heading">

    <h2>What Students Say</h2>

    <p>Feedback from our successful learners.</p>

</div>

<div class="row">


<div class="col-md-4 mb-4 ftco-animate">

<div class="testimonial-card">

    <div class="testimonial-stars">
        ★★★★★
    </div>

    <h4>Rahul Patel</h4>

    <p>
        "The HTML &amp; CSS course was amazing. The videos were easy
        to understand and helped me build my first website."
    </p>

</div>

</div>


<div class="col-md-4 mb-4 ftco-animate">

<div class="testimonial-card">

    <div class="testimonial-stars">
        ★★★★★
    </div>

    <h4>Priya Shah</h4>

    <p>
        "I completed the ASP.NET course and earned my certificate.
        The learning experience was excellent."
    </p>

</div>

</div>


<div class="col-md-4 mb-4 ftco-animate">

<div class="testimonial-card">

    <div class="testimonial-stars">
        ★★★★★
    </div>

    <h4>Meet Joshi</h4>

    <p>
        "The Python Programming course is perfect for beginners.
        I really enjoyed every lesson."
    </p>

</div>

</div>

</div>

</div>

</section>


<!-- =====================================================
     WHY LEARNSPHERE
===================================================== -->

<section class="dashboard-section section-light">

<div class="container">

<div class="section-heading">

    <h2>Why LearnSphere?</h2>

    <p>Why thousands of students choose our platform.</p>

</div>

<div class="row">


<div class="col-md-4 mb-4 ftco-animate">

<div class="why-card">

    <div class="why-icon">🎥</div>

    <h4>HD Video Lectures</h4>

    <p>
        High-quality video content for better learning.
    </p>

</div>

</div>


<div class="col-md-4 mb-4 ftco-animate">

<div class="why-card">

    <div class="why-icon">👨‍🏫</div>

    <h4>Expert Instructors</h4>

    <p>
        Learn from experienced industry professionals.
    </p>

</div>

</div>


<div class="col-md-4 mb-4 ftco-animate">

<div class="why-card">

    <div class="why-icon">📜</div>

    <h4>Certificate</h4>

    <p>
        Receive a certificate after course completion.
    </p>

</div>

</div>

</div>

</div>

</section>


<!-- =====================================================
     CALL TO ACTION
===================================================== -->

<section class="dashboard-cta">

<div class="container">

    <h2>
        Ready to Continue Your Learning Journey?
    </h2>

    <p>
        Keep improving your skills by exploring more
        professional courses on LearnSphere.
    </p>

    <a href="course.aspx"
       class="primary-btn">

        Explore More Courses

    </a>

</div>

</section>


</div>

</asp:Content>