<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="OnlineCourse.feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>

        /* ================================
           LEARNSPHERE FEEDBACK PAGE
           Scoped CSS - Master Page Safe
        ================================= */

        .feedback-page {
            --fb-purple: #8b5cf6;
            --fb-blue: #38bdf8;
            --fb-cyan: #22d3ee;
            --fb-dark: #090b18;
            --fb-card: rgba(20, 22, 43, 0.88);
            --fb-text: #f8fafc;
            --fb-muted: #a7adc4;

            background:
                radial-gradient(circle at 10% 10%, rgba(139, 92, 246, .13), transparent 28%),
                radial-gradient(circle at 90% 30%, rgba(34, 211, 238, .10), transparent 28%),
                linear-gradient(180deg, #080a17 0%, #0d1021 100%);

            color: var(--fb-text);
            min-height: 100vh;
            overflow: hidden;
        }

        /* HERO */

        .feedback-page .feedback-hero {
            position: relative;
            min-height: 350px;
            display: flex;
            align-items: center;
            justify-content: center;
            overflow: hidden;

            background:
                linear-gradient(135deg,
                rgba(8, 10, 25, .94),
                rgba(41, 23, 76, .88)),
                url('images/bg_2.jpg') center/cover;
        }

        .feedback-page .feedback-hero::before {
            content: "";
            position: absolute;
            width: 350px;
            height: 350px;
            border-radius: 50%;
            background: rgba(139, 92, 246, .16);
            filter: blur(70px);
            top: -150px;
            left: -100px;
        }

        .feedback-page .feedback-hero::after {
            content: "";
            position: absolute;
            width: 300px;
            height: 300px;
            border-radius: 50%;
            background: rgba(34, 211, 238, .12);
            filter: blur(70px);
            right: -100px;
            bottom: -130px;
        }

        .feedback-page .hero-content {
            position: relative;
            z-index: 2;
            text-align: center;
            padding: 80px 20px 70px;
        }

        .feedback-page .hero-badge {
            display: inline-block;
            padding: 8px 18px;
            margin-bottom: 20px;
            border: 1px solid rgba(139, 92, 246, .5);
            border-radius: 50px;
            background: rgba(139, 92, 246, .12);
            color: #c4b5fd;
            font-size: 13px;
            font-weight: 700;
            letter-spacing: 1px;
            text-transform: uppercase;
            box-shadow: 0 0 25px rgba(139, 92, 246, .15);
        }

        .feedback-page .hero-title {
            margin: 0;
            font-size: clamp(38px, 6vw, 62px);
            font-weight: 800;
            line-height: 1.05;

            background: linear-gradient(
                90deg,
                #ffffff,
                #c4b5fd,
                #67e8f9
            );

            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .feedback-page .hero-subtitle {
            margin: 18px 0 0;
            color: #aeb5d0;
            font-size: 17px;
            letter-spacing: .3px;
        }

        /* MAIN */

        .feedback-page .feedback-section {
            padding: 80px 0;
        }

        .feedback-page .feedback-wrapper {
            max-width: 900px;
            margin: auto;
        }

        /* FEEDBACK CARD */

        .feedback-page .feedback-card {
            position: relative;
            padding: 45px;
            border-radius: 28px;

            background:
                linear-gradient(
                    145deg,
                    rgba(31, 34, 63, .92),
                    rgba(13, 15, 32, .94)
                );

            border: 1px solid rgba(139, 92, 246, .28);

            box-shadow:
                0 25px 70px rgba(0, 0, 0, .38),
                inset 0 1px 0 rgba(255,255,255,.05);

            overflow: hidden;
        }

        .feedback-page .feedback-card::before {
            content: "";
            position: absolute;
            width: 180px;
            height: 180px;
            border-radius: 50%;
            background: rgba(139, 92, 246, .10);
            filter: blur(45px);
            top: -90px;
            right: -60px;
        }

        .feedback-page .feedback-card::after {
            content: "";
            position: absolute;
            width: 140px;
            height: 140px;
            border-radius: 50%;
            background: rgba(34, 211, 238, .07);
            filter: blur(45px);
            bottom: -70px;
            left: -50px;
        }

        .feedback-page .card-heading {
            position: relative;
            z-index: 2;
            text-align: center;
            margin-bottom: 38px;
        }

        .feedback-page .feedback-icon {
            width: 70px;
            height: 70px;
            margin: 0 auto 18px;

            display: flex;
            align-items: center;
            justify-content: center;

            border-radius: 22px;

            background: linear-gradient(
                135deg,
                rgba(139, 92, 246, .25),
                rgba(34, 211, 238, .16)
            );

            border: 1px solid rgba(139, 92, 246, .35);

            color: #c4b5fd;
            font-size: 30px;

            box-shadow:
                0 0 30px rgba(139, 92, 246, .16);
        }

        .feedback-page .card-heading h2 {
            margin: 0;
            font-size: 30px;
            font-weight: 800;
            color: #ffffff;
        }

        .feedback-page .card-heading p {
            margin: 10px 0 0;
            color: var(--fb-muted);
            font-size: 15px;
        }

        /* FORM */

        .feedback-page .form-group {
            position: relative;
            z-index: 2;
            margin-bottom: 26px;
        }

        .feedback-page .form-group label {
            display: block;
            margin-bottom: 10px;
            color: #e8eaf5;
            font-size: 14px;
            font-weight: 700;
            letter-spacing: .2px;
        }

        .feedback-page .form-group label i {
            margin-right: 8px;
            color: #a78bfa;
        }

        .feedback-page .form-control {
            width: 100%;
            min-height: 54px;

            border-radius: 14px !important;
            border: 1px solid rgba(148, 163, 184, .18) !important;

            background: rgba(7, 9, 22, .72) !important;
            color: #ffffff !important;

            padding: 13px 17px !important;

            box-shadow:
                inset 0 1px 0 rgba(255,255,255,.025),
                0 8px 25px rgba(0,0,0,.12);

            transition: all .3s ease;
        }

        .feedback-page .form-control:focus {
            outline: none !important;

            border-color: rgba(139, 92, 246, .75) !important;

            box-shadow:
                0 0 0 3px rgba(139, 92, 246, .10),
                0 0 25px rgba(139, 92, 246, .10) !important;
        }

        .feedback-page select.form-control {
            cursor: pointer;
        }

        .feedback-page select.form-control option {
            background: #15172d;
            color: #ffffff;
        }

        .feedback-page textarea.form-control {
            min-height: 150px;
            resize: vertical;
        }

        .feedback-page .submit-area {
            position: relative;
            z-index: 2;
            text-align: center;
            margin-top: 34px;
        }

        .feedback-page .submit-btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 10px;

            min-width: 210px;
            padding: 14px 30px;

            border-radius: 50px;

            color: #ffffff !important;
            text-decoration: none !important;

            font-size: 15px;
            font-weight: 800;
            letter-spacing: .3px;

            background:
                linear-gradient(
                    100deg,
                    #7c3aed,
                    #8b5cf6,
                    #06b6d4
                );

            box-shadow:
                0 12px 35px rgba(124, 58, 237, .28);

            transition: all .3s ease;
        }

        .feedback-page .submit-btn:hover {
            color: #ffffff !important;
            text-decoration: none;

            box-shadow:
                0 15px 45px rgba(139, 92, 246, .42);

            transform: translateY(-3px);
        }

        /* REVIEWS */

        .feedback-page .reviews-section {
            padding: 85px 0;

            background:
                linear-gradient(
                    180deg,
                    rgba(15, 17, 37, .95),
                    rgba(9, 11, 24, .98)
                );

            border-top: 1px solid rgba(255,255,255,.04);
            border-bottom: 1px solid rgba(255,255,255,.04);
        }

        .feedback-page .section-heading {
            text-align: center;
            margin-bottom: 50px;
        }

        .feedback-page .section-heading .small-title {
            display: inline-block;
            margin-bottom: 12px;

            color: #67e8f9;
            font-size: 12px;
            font-weight: 800;
            text-transform: uppercase;
            letter-spacing: 2px;
        }

        .feedback-page .section-heading h2 {
            margin: 0;
            font-size: 36px;
            font-weight: 800;
            color: #ffffff;
        }

        .feedback-page .section-heading p {
            margin: 12px auto 0;
            max-width: 600px;
            color: #969db7;
        }

        .feedback-page .review-card {
            height: 100%;
            padding: 30px;
            border-radius: 23px;

            background:
                linear-gradient(
                    145deg,
                    rgba(28, 31, 57, .90),
                    rgba(15, 17, 35, .96)
                );

            border: 1px solid rgba(139, 92, 246, .20);

            box-shadow: 0 20px 45px rgba(0,0,0,.25);

            transition: all .35s ease;
        }

        .feedback-page .review-card:hover {
            border-color: rgba(139, 92, 246, .55);

            box-shadow:
                0 25px 55px rgba(0,0,0,.35),
                0 0 30px rgba(139,92,246,.08);

            transform: translateY(-7px);
        }

        .feedback-page .review-top {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 15px;
            margin-bottom: 18px;
        }

        .feedback-page .student-info {
            display: flex;
            align-items: center;
            gap: 13px;
        }

        .feedback-page .student-avatar {
            width: 48px;
            height: 48px;
            flex-shrink: 0;

            display: flex;
            align-items: center;
            justify-content: center;

            border-radius: 15px;

            background:
                linear-gradient(
                    135deg,
                    rgba(139,92,246,.30),
                    rgba(34,211,238,.18)
                );

            border: 1px solid rgba(139,92,246,.30);

            color: #c4b5fd;
            font-weight: 800;
            font-size: 17px;
        }

        .feedback-page .student-info h4 {
            margin: 0;
            color: #ffffff;
            font-size: 16px;
            font-weight: 750;
        }

        .feedback-page .rating {
            color: #fbbf24;
            font-size: 15px;
            letter-spacing: 1px;
            white-space: nowrap;
        }

        .feedback-page .review-text {
            margin: 0;
            color: #aeb4c8;
            line-height: 1.8;
            font-size: 14px;
        }

        /* WHY FEEDBACK */

        .feedback-page .why-section {
            padding: 90px 0;
        }

        .feedback-page .why-card {
            position: relative;
            max-width: 900px;
            margin: auto;

            padding: 55px 45px;

            text-align: center;

            border-radius: 28px;

            background:
                linear-gradient(
                    135deg,
                    rgba(76, 29, 149, .22),
                    rgba(8, 47, 73, .20)
                );

            border: 1px solid rgba(139,92,246,.28);

            box-shadow:
                0 25px 70px rgba(0,0,0,.30);

            overflow: hidden;
        }

        .feedback-page .why-card::before {
            content: "";
            position: absolute;
            width: 240px;
            height: 240px;
            border-radius: 50%;
            background: rgba(139,92,246,.10);
            filter: blur(60px);
            left: -100px;
            top: -120px;
        }

        .feedback-page .why-icon {
            position: relative;
            z-index: 2;

            width: 65px;
            height: 65px;

            margin: 0 auto 20px;

            display: flex;
            align-items: center;
            justify-content: center;

            border-radius: 20px;

            background: rgba(34,211,238,.10);
            border: 1px solid rgba(34,211,238,.25);

            color: #67e8f9;
            font-size: 27px;
        }

        .feedback-page .why-card h2 {
            position: relative;
            z-index: 2;

            margin-bottom: 17px;

            color: #ffffff;
            font-size: 32px;
            font-weight: 800;
        }

        .feedback-page .why-card p {
            position: relative;
            z-index: 2;

            max-width: 720px;
            margin: auto;

            color: #aeb4c8;
            line-height: 1.9;
            font-size: 15px;
        }

        /* DECORATIVE DOTS */

        .feedback-page .floating-dot {
            position: absolute;
            width: 6px;
            height: 6px;
            border-radius: 50%;

            background: #a78bfa;

            box-shadow:
                0 0 15px rgba(167,139,250,.9);

            opacity: .7;
        }

        .feedback-page .dot-one {
            top: 30%;
            left: 8%;
        }

        .feedback-page .dot-two {
            top: 65%;
            right: 10%;
            background: #67e8f9;
            box-shadow: 0 0 15px rgba(103,232,249,.9);
        }

        .feedback-page .dot-three {
            top: 18%;
            right: 22%;
        }

        /* RESPONSIVE */

        @media (max-width: 768px) {

            .feedback-page .feedback-hero {
                min-height: 300px;
            }

            .feedback-page .hero-content {
                padding: 65px 18px;
            }

            .feedback-page .feedback-section,
            .feedback-page .reviews-section,
            .feedback-page .why-section {
                padding: 55px 15px;
            }

            .feedback-page .feedback-card {
                padding: 28px 20px;
            }

            .feedback-page .card-heading h2 {
                font-size: 25px;
            }

            .feedback-page .section-heading h2 {
                font-size: 29px;
            }

            .feedback-page .why-card {
                padding: 40px 22px;
            }

            .feedback-page .why-card h2 {
                font-size: 27px;
            }

            .feedback-page .review-card {
                margin-bottom: 20px;
            }
        }

    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="feedback-page">

    <!-- ================= HERO ================= -->

    <section class="feedback-hero">

        <span class="floating-dot dot-one"></span>
        <span class="floating-dot dot-two"></span>
        <span class="floating-dot dot-three"></span>

        <div class="container">

            <div class="hero-content">

                <div class="hero-badge">
                    ✦ Learner Voice
                </div>

                <h1 class="hero-title">
                    Course Feedback
                </h1>

                <p class="hero-subtitle">
                    Share Your Learning Experience
                </p>

            </div>

        </div>

    </section>


    <!-- ================= FEEDBACK FORM ================= -->

    <section class="feedback-section">

        <div class="container">

            <div class="feedback-wrapper">

                <div class="feedback-card">

                    <div class="card-heading">

                        <div class="feedback-icon">
                            <i class="fa fa-comments"></i>
                        </div>

                        <h2>Give Your Feedback</h2>

                        <p>
                            Your experience helps us make LearnSphere better.
                        </p>

                    </div>


                    <!-- COURSE -->

                    <div class="form-group">

                        <label>
                            <i class="fa fa-book"></i>
                            Select Course
                        </label>

                        <select class="form-control">

                            <option>HTML & CSS</option>

                            <option>ASP.NET Web Forms</option>

                            <option>Python Programming</option>

                            <option>Java Programming</option>

                            <option>JavaScript</option>

                            <option>Database Management</option>

                        </select>

                    </div>


                    <!-- RATING -->

                    <div class="form-group">

                        <label>
                            <i class="fa fa-star"></i>
                            Rating
                        </label>

                        <select class="form-control">

                            <option>⭐⭐⭐⭐⭐ Excellent</option>

                            <option>⭐⭐⭐⭐ Very Good</option>

                            <option>⭐⭐⭐ Good</option>

                            <option>⭐⭐ Average</option>

                            <option>⭐ Poor</option>

                        </select>

                    </div>


                    <!-- FEEDBACK -->

                    <div class="form-group">

                        <label>
                            <i class="fa fa-pencil"></i>
                            Your Feedback
                        </label>

                        <textarea
                            class="form-control"
                            rows="6"
                            placeholder="Write your feedback here..."></textarea>

                    </div>


                    <!-- SUBMIT -->

                    <div class="submit-area">

                        <a href="#" class="submit-btn">

                            <i class="fa fa-paper-plane"></i>

                            Submit Feedback

                        </a>

                    </div>

                </div>

            </div>

        </div>

    </section>


    <!-- ================= STUDENT REVIEWS ================= -->

    <section class="reviews-section">

        <div class="container">

            <div class="section-heading">

                <span class="small-title">
                    Student Experiences
                </span>

                <h2>
                    Student Reviews
                </h2>

                <p>
                    Recent feedback from students who are learning with LearnSphere.
                </p>

            </div>


            <div class="row">


                <!-- REVIEW 1 -->

                <div class="col-md-4 mb-4">

                    <div class="review-card">

                        <div class="review-top">

                            <div class="student-info">

                                <div class="student-avatar">
                                    R
                                </div>

                                <h4>
                                    Rahul Patel
                                </h4>

                            </div>

                            <div class="rating">
                                ⭐⭐⭐⭐⭐
                            </div>

                        </div>

                        <p class="review-text">

                            Excellent course with easy explanations.
                            Highly recommended for beginners.

                        </p>

                    </div>

                </div>


                <!-- REVIEW 2 -->

                <div class="col-md-4 mb-4">

                    <div class="review-card">

                        <div class="review-top">

                            <div class="student-info">

                                <div class="student-avatar">
                                    P
                                </div>

                                <h4>
                                    Priya Shah
                                </h4>

                            </div>

                            <div class="rating">
                                ⭐⭐⭐⭐
                            </div>

                        </div>

                        <p class="review-text">

                            The video quality was excellent and
                            assignments were very helpful.

                        </p>

                    </div>

                </div>


                <!-- REVIEW 3 -->

                <div class="col-md-4 mb-4">

                    <div class="review-card">

                        <div class="review-top">

                            <div class="student-info">

                                <div class="student-avatar">
                                    M
                                </div>

                                <h4>
                                    Meet Joshi
                                </h4>

                            </div>

                            <div class="rating">
                                ⭐⭐⭐⭐⭐
                            </div>

                        </div>

                        <p class="review-text">

                            One of the best online learning
                            platforms I have used.

                        </p>

                    </div>

                </div>


            </div>

        </div>

    </section>


    <!-- ================= WHY FEEDBACK MATTERS ================= -->

    <section class="why-section">

        <div class="container">

            <div class="why-card">

                <div class="why-icon">
                    <i class="fa fa-lightbulb-o"></i>
                </div>

                <h2>
                    Why Your Feedback Matters
                </h2>

                <p>

                    Your valuable feedback helps us improve course quality,
                    enhance learning experience, and provide better educational
                    content for future students.

                </p>

            </div>

        </div>

    </section>

</div>

</asp:Content>