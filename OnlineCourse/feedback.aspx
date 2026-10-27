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

        .feedback-page .feedback-grid-wrapper {
    width: 100%;
    overflow-x: auto;
    margin-top: 25px;
    border-radius: 14px;
}

.feedback-page .feedback-grid {
    width: 100%;
    border-collapse: collapse;
    table-layout: auto;
    background: rgba(7, 9, 22, 0.65);
    color: #e2e8f0;
    font-size: 14px;
}

.feedback-page .feedback-grid th {
    padding: 16px 14px;
    text-align: left;
    white-space: nowrap;
    color: #ffffff;
    font-weight: 700;
    background: linear-gradient(
        135deg,
        #35235f,
        #163d5b
    );
    border: 1px solid rgba(255, 255, 255, 0.12);
}

.feedback-page .feedback-grid td {
    padding: 16px 14px;
    text-align: left;
    vertical-align: middle;
    color: #cbd5e1;
    line-height: 1.7;
    border: 1px solid rgba(255, 255, 255, 0.10);
}

.feedback-page .feedback-grid tr:nth-child(even) td {
    background: rgba(255, 255, 255, 0.035);
}

.feedback-page .feedback-grid tr:hover td {
    background: rgba(139, 92, 246, 0.12);
    color: #ffffff;
}

@media (max-width: 700px) {
    .feedback-page .feedback-grid {
        min-width: 650px;
    }
}

    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="feedback-page">

        <section class="feedback-hero">
            <div class="hero-content">
                <div class="hero-badge">STUDENT FEEDBACK</div>
                <h1 class="hero-title">Student Feedback</h1>
                <p class="hero-subtitle">
                    Share your learning experience with LearnSphere.
                </p>
            </div>
        </section>

        <section class="feedback-section">
            <div class="container feedback-wrapper">

                <div class="feedback-card">

                    <div class="card-heading">
                        <div class="feedback-icon">✦</div>
                        <h2>Submit Your Feedback</h2>
                        <p>Tell us about your learning experience.</p>
                    </div>

                    <div class="feedback-form">

                        <div class="form-group">
                            <label>Student Name</label>
                            <asp:TextBox ID="txtStudentName" runat="server"
                                CssClass="form-control"
                                placeholder="Enter student name"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label>Course Name</label>
                            <asp:DropDownList ID="ddlCourse" runat="server"
                                CssClass="form-control">
                            </asp:DropDownList>
                        </div>

                        <div class="form-group">
                            <label>Rating (1 to 5)</label>
                            <asp:DropDownList ID="ddlRating" runat="server"
                                CssClass="form-control">
                                <asp:ListItem Text="Select Rating" Value=""></asp:ListItem>
                                <asp:ListItem Text="1 - Poor" Value="1"></asp:ListItem>
                                <asp:ListItem Text="2 - Fair" Value="2"></asp:ListItem>
                                <asp:ListItem Text="3 - Good" Value="3"></asp:ListItem>
                                <asp:ListItem Text="4 - Very Good" Value="4"></asp:ListItem>
                                <asp:ListItem Text="5 - Excellent" Value="5"></asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <div class="form-group">
                            <label>Feedback</label>
                            <asp:TextBox ID="txtFeedback" runat="server"
                                CssClass="form-control"
                                TextMode="MultiLine" Rows="3"
                                placeholder="Write your feedback"></asp:TextBox>
                        </div>

                    </div>

                    <div class="submit-area">
                        <asp:Button ID="btnSubmit" runat="server"
                            Text="Submit Feedback"
                            CssClass="submit-btn"
                            OnClick="btnSubmit_Click" />

                        <asp:Button ID="btnClear" runat="server"
                            Text="Clear"
                            CssClass="submit-btn back-course-btn"
                            OnClick="btnClear_Click"
                            CausesValidation="false" />
                    </div>

                    <asp:Label ID="lblmsg" runat="server"
                        CssClass="feedback-message"></asp:Label>

                </div>

                <div class="feedback-card feedback-list-card">

                    <div class="card-heading">
                        <h2>My Feedback</h2>
                        <p>View your submitted feedback below.</p>
                    </div>

                    <div class="feedback-grid-wrapper">

                        <asp:GridView ID="GridView1" runat="server"
                            AutoGenerateColumns="False"
                            CssClass="feedback-grid"
                            GridLines="None"
                            EmptyDataText="No feedback submitted yet.">

                            <Columns>

                                <asp:TemplateField HeaderText="ID">
                                    <ItemTemplate>
                                        <%# Eval("ID") %>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Student Name">
                                    <ItemTemplate>
                                        <%# Eval("StudentName") %>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Course">
                                    <ItemTemplate>
                                        <%# Eval("CourseName") %>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Rating">
                                    <ItemTemplate>
                                        <%# Eval("Rating") %> / 5
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Feedback">
                                    <ItemTemplate>
                                        <%# Eval("Feedback") %>
                                    </ItemTemplate>
                                </asp:TemplateField>

                            </Columns>

                        </asp:GridView>

                    </div>

                </div>

            </div>
        </section>

    </div>

</asp:Content>