<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="StudentDashboard.aspx.cs" Inherits="OnlineCourse.StudentDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

       <style>

        /* ==============================
           TOP DASHBOARD HERO
           ============================== */

        .student-hero {
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

            position: relative;

            margin: 0;
            padding: 0;
        }


        /* ==============================
           DASHBOARD CONTENT
           ============================== */

        .student-hero-content {
            position: absolute;

            top: 200px;
            left: 0;

            width: 100%;

            text-align: center;

            color: white;
        }


        .student-hero-content .student-tag {
            display: inline-block;

            padding: 8px 18px;

            background: rgba(255,255,255,0.20);

            border-radius: 25px;

            color: white;

            font-size: 13px;

            font-weight: 600;

            margin-bottom: 18px;
        }


        .student-hero-content h1 {
            color: white;

            font-size: 48px;

            font-weight: 700;

            margin: 0 0 18px 0;
        }


        .student-hero-content p {
            color: white;

            font-size: 18px;

            margin: 0;

            line-height: 1.7;
        }


        /* ==============================
           MY LEARNING
           ============================== */

        .my-learning-section {
            background: #f5f3ff;

            padding: 60px 0 80px;
        }


        .my-learning-title {
            text-align: center;

            margin-bottom: 40px;
        }


        .my-learning-title h2 {
            font-size: 32px;

            font-weight: 700;

            color: #333;

            margin-bottom: 10px;
        }


        .my-learning-title p {
            font-size: 16px;

            color: #777;
        }


        /* ==============================
           CARDS
           ============================== */

        .learning-card {
            background: white;

            padding: 30px 20px;

            text-align: center;

            border-radius: 12px;

            margin-bottom: 30px;

            min-height: 240px;

            box-shadow: 0 5px 20px rgba(80,60,150,0.08);

            border: 1px solid #eee7ff;

            transition: 0.3s;
        }


        .learning-card:hover {
            transform: translateY(-5px);

            box-shadow: 0 10px 25px rgba(80,60,150,0.15);
        }


        .learning-icon {
            font-size: 35px;

            margin-bottom: 15px;
        }


        .learning-card h3 {
            font-size: 21px;

            font-weight: 600;

            color: #333;

            margin-bottom: 10px;
        }


        .learning-card p {
            color: #777;

            font-size: 14px;

            line-height: 1.6;

            min-height: 45px;
        }


        .learning-btn {
            display: inline-block;

            background: #367ee8;

            color: white !important;

            padding: 9px 20px;

            border-radius: 5px;

            text-decoration: none !important;

            margin-top: 8px;
        }


        .learning-btn:hover {
            background: #2868c9;
        }

    </style>


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <!-- ==============================
         TOP HERO
         ============================== -->

    <section class="student-hero">

        <div class="student-hero-content">

            <span class="student-tag">
                🎓 STUDENT DASHBOARD
            </span>

            <h1>
    <asp:Label ID="lblName" runat="server"></asp:Label>
</h1>

            <p>
                Manage your courses, track your progress and continue learning with LearnSphere.
            </p>

        </div>

    </section>


    <!-- ==============================
         MY LEARNING
         ============================== -->

    <section class="my-learning-section">

        <div class="container">

            <div class="my-learning-title">

                <h2>
                    My Learning
                </h2>

                <p>
                    Everything you need to manage your learning journey
                </p>

            </div>


            <div class="row">


                <div class="col-md-4">

                    <div class="learning-card">

                        <div class="learning-icon">
                            📚
                        </div>

                        <h3>
                            My Courses
                        </h3>

                        <p>
                            View your enrolled courses and continue your learning journey.
                        </p>

                        <a href="MyCourses.aspx" class="learning-btn">
                            View Courses
                        </a>

                    </div>

                </div>


                <div class="col-md-4">

                    <div class="learning-card">

                        <div class="learning-icon">
                            🔍
                        </div>

                        <h3>
                            Explore Courses
                        </h3>

                        <p>
                            Discover new courses and find the right course for your skills.
                        </p>

                        <a href="CourseList.aspx" class="learning-btn">
                            Explore Now
                        </a>

                    </div>

                </div>


                <div class="col-md-4">

                    <div class="learning-card">

                        <div class="learning-icon">
                            ▶️
                        </div>

                        <h3>
                            Video Lessons
                        </h3>

                        <p>
                            Watch your course lessons and learn at your own pace.
                        </p>

                        <a href="VideoLesson.aspx" class="learning-btn">
                            Start Learning
                        </a>

                    </div>

                </div>


                <div class="col-md-4">

                    <div class="learning-card">

                        <div class="learning-icon">
                            👤
                        </div>

                        <h3>
                            My Profile
                        </h3>

                        <p>
                            Manage your personal information and student profile.
                        </p>

                        <a href="Profile.aspx" class="learning-btn">
                            View Profile
                        </a>

                    </div>

                </div>


                <div class="col-md-4">

                    <div class="learning-card">

                        <div class="learning-icon">
                            ⭐
                        </div>

                        <h3>
                            Feedback
                        </h3>

                        <p>
                            Share your experience and rate the courses you have completed.
                        </p>

                        <a href="Feedback.aspx" class="learning-btn">
                            Give Feedback
                        </a>

                    </div>

                </div>


                <div class="col-md-4">

                    <div class="learning-card">

                        <div class="learning-icon">
                            🏆
                        </div>

                        <h3>
                            Certificates
                        </h3>

                        <p>
                            View your certificates after completing your courses successfully.
                        </p>

                        <a href="#" class="learning-btn">
                            View Certificate
                        </a>

                    </div>

                </div>


            </div>

        </div>

    </section>

</asp:Content>