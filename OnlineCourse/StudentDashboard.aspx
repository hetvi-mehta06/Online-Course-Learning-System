<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="StudentDashboard.aspx.cs" Inherits="OnlineCourse.StudentDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>

        /* =========================================
           STUDENT DASHBOARD
           ========================================= */

        .dashboard-page {
            position: relative;
            min-height: 100vh;
            padding: 55px 0 90px;

            background:
                radial-gradient(
                    circle at 10% 10%,
                    rgba(124, 58, 237, 0.20),
                    transparent 30%
                ),
                radial-gradient(
                    circle at 90% 15%,
                    rgba(6, 182, 212, 0.14),
                    transparent 28%
                ),
                linear-gradient(
                    135deg,
                    #070b1d,
                    #0d1230 50%,
                    #071526
                );

            overflow: hidden;
        }


        /* =========================================
           DECORATIVE GLOW
           ========================================= */

        .dashboard-page:before {
            content: "";

            position: absolute;

            width: 300px;
            height: 300px;

            top: 80px;
            left: -150px;

            border-radius: 50%;

            background: rgba(124, 58, 237, 0.14);

            filter: blur(80px);

            pointer-events: none;
        }


        .dashboard-page:after {
            content: "";

            position: absolute;

            width: 320px;
            height: 320px;

            right: -160px;
            bottom: 100px;

            border-radius: 50%;

            background: rgba(6, 182, 212, 0.10);

            filter: blur(80px);

            pointer-events: none;
        }


        .dashboard-container {
            position: relative;

            width: 92%;
            max-width: 1350px;

            margin: auto;

            z-index: 2;
        }


        /* =========================================
           WELCOME HERO
           ========================================= */

        .dashboard-welcome {
            position: relative;

            padding: 55px 50px;

            margin-bottom: 45px;

            border-radius: 28px;

            background:
                linear-gradient(
                    135deg,
                    rgba(124, 58, 237, 0.25),
                    rgba(6, 182, 212, 0.10)
                );

            border: 1px solid rgba(255, 255, 255, 0.12);

            box-shadow:
                0 25px 70px rgba(0, 0, 0, 0.35),
                inset 0 1px 0 rgba(255, 255, 255, 0.08);

            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);

            overflow: hidden;
        }


        .dashboard-welcome:after {
            content: "✦";

            position: absolute;

            right: 50px;
            top: 25px;

            font-size: 90px;

            color: rgba(255, 255, 255, 0.05);

            pointer-events: none;
        }


        .dashboard-tag {
            display: inline-flex;

            align-items: center;

            padding: 9px 18px;

            margin-bottom: 18px;

            border-radius: 30px;

            background:
                rgba(255, 255, 255, 0.08);

            border: 1px solid rgba(255, 255, 255, 0.12);

            color: #a5f3fc;

            font-size: 12px;

            font-weight: 700;

            letter-spacing: 1px;
        }


        .dashboard-welcome h1 {
            margin: 0 0 14px;

            color: #ffffff;

            font-size: 44px;

            line-height: 1.2;

            font-weight: 800;

            letter-spacing: -1px;
        }


        .dashboard-welcome h1 span {
            background:
                linear-gradient(
                    90deg,
                    #a78bfa,
                    #22d3ee
                );

            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }


        .dashboard-welcome p {
            max-width: 720px;

            margin: 0;

            color: #aebbd0;

            font-size: 16px;

            line-height: 1.8;
        }


        /* =========================================
           SECTION TITLE
           ========================================= */

        .learning-heading {
            margin-bottom: 28px;
        }


        .learning-heading h2 {
            margin: 0 0 8px;

            color: #ffffff;

            font-size: 30px;

            font-weight: 750;
        }


        .learning-heading p {
            margin: 0;

            color: #8492aa;

            font-size: 14px;
        }


        /* =========================================
           CARDS GRID
           ========================================= */

        .learning-grid {
            display: grid;

            grid-template-columns:
                repeat(3, 1fr);

            gap: 24px;
        }


        /* =========================================
           LEARNING CARD
           ========================================= */

        .learning-card {
            position: relative;

            min-height: 265px;

            padding: 30px;

            border-radius: 23px;

            background:
                linear-gradient(
                    145deg,
                    rgba(255, 255, 255, 0.075),
                    rgba(255, 255, 255, 0.025)
                );

            border: 1px solid rgba(255, 255, 255, 0.10);

            box-shadow:
                0 18px 45px rgba(0, 0, 0, 0.25);

            backdrop-filter: blur(16px);
            -webkit-backdrop-filter: blur(16px);

            transition:
                transform 0.35s ease,
                border-color 0.35s ease,
                box-shadow 0.35s ease;

            overflow: hidden;
        }


        .learning-card:before {
            content: "";

            position: absolute;

            width: 120px;
            height: 120px;

            right: -55px;
            top: -55px;

            border-radius: 50%;

            background:
                rgba(124, 58, 237, 0.12);

            filter: blur(20px);
        }


        .learning-card:hover {
            transform: translateY(-8px);

            border-color:
                rgba(139, 92, 246, 0.45);

            box-shadow:
                0 25px 55px rgba(0, 0, 0, 0.38),
                0 0 30px rgba(124, 58, 237, 0.10);
        }


        /* =========================================
           ICON
           ========================================= */

        .learning-icon {
            display: flex;

            align-items: center;
            justify-content: center;

            width: 62px;
            height: 62px;

            margin-bottom: 22px;

            border-radius: 18px;

            background:
                linear-gradient(
                    135deg,
                    rgba(124, 58, 237, 0.90),
                    rgba(6, 182, 212, 0.85)
                );

            box-shadow:
                0 10px 25px rgba(124, 58, 237, 0.25);

            font-size: 28px;

            transition: 0.3s ease;
        }


        .learning-card:hover .learning-icon {
            transform: scale(1.08) rotate(-3deg);

            box-shadow:
                0 12px 30px rgba(6, 182, 212, 0.25);
        }


        /* =========================================
           CARD TEXT
           ========================================= */

        .learning-card h3 {
            margin: 0 0 10px;

            color: #ffffff;

            font-size: 20px;

            font-weight: 700;
        }


        .learning-card p {
            min-height: 48px;

            margin: 0 0 20px;

            color: #8f9db5;

            font-size: 13px;

            line-height: 1.7;
        }


        /* =========================================
           BUTTON
           ========================================= */

        .learning-btn {
            display: inline-flex;

            align-items: center;
            justify-content: center;

            padding: 10px 18px;

            border-radius: 11px;

            background:
                linear-gradient(
                    135deg,
                    #7c3aed,
                    #2563eb
                );

            border: 1px solid rgba(255, 255, 255, 0.10);

            color: #ffffff !important;

            font-size: 12px;

            font-weight: 700;

            text-decoration: none !important;

            box-shadow:
                0 8px 20px rgba(37, 99, 235, 0.20);

            transition: 0.3s ease;
        }


        .learning-btn:hover {
            color: #ffffff !important;

            transform: translateY(-2px);

            background:
                linear-gradient(
                    135deg,
                    #8b5cf6,
                    #06b6d4
                );

            box-shadow:
                0 12px 28px rgba(6, 182, 212, 0.22);
        }


        /* =========================================
           RESPONSIVE
           ========================================= */

        @media (max-width: 1000px) {

            .learning-grid {
                grid-template-columns:
                    repeat(2, 1fr);
            }

            .dashboard-welcome h1 {
                font-size: 38px;
            }

        }


        @media (max-width: 700px) {

            .dashboard-page {
                padding: 35px 0 60px;
            }

            .dashboard-container {
                width: 90%;
            }

            .dashboard-welcome {
                padding: 38px 28px;
                border-radius: 22px;
            }

            .dashboard-welcome h1 {
                font-size: 32px;
            }

            .dashboard-welcome p {
                font-size: 14px;
            }

            .learning-grid {
                grid-template-columns: 1fr;
            }

            .learning-card {
                min-height: auto;
            }

        }


        @media (max-width: 450px) {

            .dashboard-welcome {
                padding: 30px 22px;
            }

            .dashboard-welcome h1 {
                font-size: 28px;
            }

            .learning-heading h2 {
                font-size: 25px;
            }

        }

    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="dashboard-page">

        <div class="dashboard-container">


            <!-- ================================
                 WELCOME SECTION
                 ================================ -->

            <div class="dashboard-welcome">

                <div class="dashboard-tag">
                    🎓 &nbsp; STUDENT DASHBOARD
                </div>

                <h1>
                    Welcome,
                    <span>
                        <asp:Label
                            ID="lblName"
                            runat="server">
                        </asp:Label>
                    </span>
                    👋
                </h1>

                <p>
                    Manage your courses, track your progress and continue
                    learning with LearnSphere. Your learning journey starts here.
                </p>

            </div>


            <!-- ================================
                 MY LEARNING
                 ================================ -->

            <div class="learning-heading">

                <h2>
                    My Learning
                </h2>

                <p>
                    Everything you need to manage your learning journey
                </p>

            </div>


            <!-- ================================
                 CARDS
                 ================================ -->

            <div class="learning-grid">


                <!-- MY COURSES -->

                <div class="learning-card">

                    <div class="learning-icon">
                        📚
                    </div>

                    <h3>
                        My Courses
                    </h3>

                    <p>
                        View your enrolled courses and continue
                        your learning journey.
                    </p>

                    <a
                        href="MyCourses.aspx"
                        class="learning-btn">

                        View Courses

                    </a>

                </div>


                <!-- EXPLORE COURSES -->

                <div class="learning-card">

                    <div class="learning-icon">
                        🔍
                    </div>

                    <h3>
                        Explore Courses
                    </h3>

                    <p>
                        Discover new courses and find the right
                        course for your skills.
                    </p>

                    <a
                        href="CourseList.aspx"
                        class="learning-btn">

                        Explore Now

                    </a>

                </div>


                <!-- VIDEO LESSONS -->

                <div class="learning-card">

                    <div class="learning-icon">
                        ▶️
                    </div>

                    <h3>
                        Video Lessons
                    </h3>

                    <p>
                        Watch your course lessons and learn
                        at your own pace.
                    </p>

                    <a
                        href="VideoLesson.aspx"
                        class="learning-btn">

                        Start Learning

                    </a>

                </div>


                <!-- PROFILE -->

                <div class="learning-card">

                    <div class="learning-icon">
                        👤
                    </div>

                    <h3>
                        My Profile
                    </h3>

                    <p>
                        Manage your personal information
                        and student profile.
                    </p>

                    <a
                        href="Profile.aspx"
                        class="learning-btn">

                        View Profile

                    </a>

                </div>


                <!-- FEEDBACK -->

                <div class="learning-card">

                    <div class="learning-icon">
                        ⭐
                    </div>

                    <h3>
                        Feedback
                    </h3>

                    <p>
                        Share your experience and rate the
                        courses you have completed.
                    </p>

                    <a
                        href="Feedback.aspx"
                        class="learning-btn">

                        Give Feedback

                    </a>

                </div>


                <!-- CERTIFICATE -->

                <div class="learning-card">

                    <div class="learning-icon">
                        🏆
                    </div>

                    <h3>
                        Certificates
                    </h3>

                    <p>
                        View your certificates after completing
                        your courses successfully.
                    </p>

                    <a
                        href="#"
                        class="learning-btn">

                        View Certificate

                    </a>

                </div>


            </div>

        </div>

    </section>

</asp:Content>