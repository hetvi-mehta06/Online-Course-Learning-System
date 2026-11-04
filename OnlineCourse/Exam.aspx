
<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="Exam.aspx.cs" Inherits="OnlineCourse.Exam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

 <style>

/* =====================================================
   LEARNSPHERE EXAM PAGE
   DARK PURPLE + CYAN THEME
===================================================== */

.exam-page {
    --exam-purple: #8b5cf6;
    --exam-purple-light: #c4b5fd;
    --exam-cyan: #22d3ee;
    --exam-cyan-light: #67e8f9;
    --exam-bg: #080a17;
    --exam-card: rgba(24, 27, 52, 0.90);
    --exam-text: #f8fafc;
    --exam-muted: #a8aec5;

    width: 100%;
    min-height: 100vh;

    background:
        radial-gradient(circle at 10% 10%, rgba(139, 92, 246, .13), transparent 28%),
        radial-gradient(circle at 90% 30%, rgba(34, 211, 238, .09), transparent 28%),
        linear-gradient(180deg, #080a17 0%, #0d1021 100%);

    color: var(--exam-text);
    overflow: hidden;
}

/* =====================================================
   HERO SECTION
===================================================== */

.exam-page .exam-hero {
    position: relative;

    width: 100%;
    min-height: 570px;

    display: flex;
    align-items: center;
    justify-content: center;

    background:
        linear-gradient(
            135deg,
            rgba(8, 10, 25, .86),
            rgba(61, 34, 103, .68),
            rgba(8, 47, 73, .55)
        ),
        url('images/bg_1.jpg');

    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;

    overflow: hidden;
}

/* Purple Glow */

.exam-page .exam-hero::before {
    content: "";

    position: absolute;

    width: 420px;
    height: 420px;

    border-radius: 50%;

    background: rgba(139, 92, 246, .20);

    filter: blur(90px);

    top: -180px;
    left: -120px;
}

/* Cyan Glow */

.exam-page .exam-hero::after {
    content: "";

    position: absolute;

    width: 380px;
    height: 380px;

    border-radius: 50%;

    background: rgba(34, 211, 238, .13);

    filter: blur(90px);

    right: -120px;
    bottom: -160px;
}

/* Hero Content */

.exam-page .exam-hero-content {
    position: relative;
    z-index: 3;

    width: 100%;
    max-width: 900px;

    padding: 80px 25px;

    margin: 0 auto;

    text-align: center;
}

.exam-page .exam-tag {
    display: inline-block;

    padding: 9px 20px;

    border-radius: 50px;

    background: rgba(139, 92, 246, .15);

    border: 1px solid rgba(139, 92, 246, .45);

    color: var(--exam-purple-light);

    font-size: 12px;
    font-weight: 800;
    letter-spacing: 2px;

    box-shadow: 0 0 25px rgba(139, 92, 246, .12);
}

.exam-page .exam-hero-content h1 {
    margin: 24px 0 16px;

    font-size: clamp(42px, 6vw, 68px);

    line-height: 1.05;

    font-weight: 850;

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

.exam-page .exam-hero-content p {
    max-width: 650px;

    margin: 0 auto 32px;

    color: #c0c5d8;

    font-size: 17px;
    line-height: 1.7;
}

/* =====================================================
   COMMON BUTTON
===================================================== */

.exam-page .exam-btn {
    display: inline-flex;

    align-items: center;
    justify-content: center;

    min-width: 155px;

    padding: 13px 28px;

    border-radius: 50px;

    background: linear-gradient(
        100deg,
        #7c3aed,
        #8b5cf6,
        #06b6d4
    );

    border: 1px solid rgba(255,255,255,.10);

    color: #ffffff !important;

    font-size: 14px;
    font-weight: 800;

    letter-spacing: .3px;

    text-decoration: none !important;

    box-shadow: 0 12px 35px rgba(124, 58, 237, .28);

    transition: all .3s ease;
}

.exam-page .exam-btn:hover {
    color: #ffffff !important;

    text-decoration: none !important;

    transform: translateY(-3px);

    box-shadow: 0 17px 45px rgba(139, 92, 246, .42);

    filter: brightness(1.08);
}

/* =====================================================
   EXAM CONTENT
===================================================== */

.exam-page .exam-content {
    width: 100%;

    padding: 85px 0;

    background: linear-gradient(
        180deg,
        #0b0d1c,
        #0f1226
    );
}

.exam-page .exam-container {
    width: 100%;
    max-width: 1120px;

    margin: 0 auto;

    padding-left: 15px;
    padding-right: 15px;

    box-sizing: border-box;
}

/* =====================================================
   MAIN EXAM BOX
===================================================== */

.exam-page .exam-box {
    position: relative;

    width: 100%;

    padding: 45px;

    border-radius: 30px;

    background: linear-gradient(
        145deg,
        rgba(30, 33, 62, .92),
        rgba(13, 15, 32, .96)
    );

    border: 1px solid rgba(139, 92, 246, .25);

    box-shadow:
        0 30px 75px rgba(0,0,0,.38),
        inset 0 1px 0 rgba(255,255,255,.04);

    box-sizing: border-box;

    overflow: hidden;
}

.exam-page .exam-box::before {
    content: "";

    position: absolute;

    width: 240px;
    height: 240px;

    border-radius: 50%;

    background: rgba(139, 92, 246, .10);

    filter: blur(60px);

    top: -120px;
    right: -80px;
}

.exam-page .exam-box::after {
    content: "";

    position: absolute;

    width: 180px;
    height: 180px;

    border-radius: 50%;

    background: rgba(34, 211, 238, .07);

    filter: blur(55px);

    bottom: -100px;
    left: -70px;
}

/* =====================================================
   HEADING
===================================================== */

.exam-page .exam-heading {
    position: relative;
    z-index: 2;

    text-align: center;

    margin-bottom: 45px;
}

.exam-page .exam-heading-icon {
    width: 70px;
    height: 70px;

    margin: 0 auto 20px;

    display: flex;

    align-items: center;
    justify-content: center;

    border-radius: 22px;

    background: linear-gradient(
        135deg,
        rgba(139,92,246,.25),
        rgba(34,211,238,.13)
    );

    border: 1px solid rgba(139,92,246,.35);

    color: #c4b5fd;

    font-size: 29px;

    box-shadow: 0 0 30px rgba(139,92,246,.15);
}

.exam-page .exam-title {
    margin: 0 0 12px;

    color: #ffffff;

    font-size: 34px;

    font-weight: 800;
}

.exam-page .exam-subtitle {
    margin: 0;

    color: var(--exam-muted);

    font-size: 15px;

    line-height: 1.6;
}

/* =====================================================
   COURSE GRID
   (flex - jetla course atla baju ma)
===================================================== */

.exam-page .course-grid {
    position: relative;
    z-index: 2;

    display: flex !important;
    flex-direction: row !important;
    flex-wrap: wrap;
    justify-content: center;
    align-items: stretch;

    gap: 25px;

    width: 100%;

    margin: 30px 0 0;

    padding: 0;

    box-sizing: border-box;
}

/* Jo koi extra wrapper (span/div/table) aave to e ignore thase,
   etle cards sidha flex items bane */

.exam-page .course-grid > span,
.exam-page .course-grid > table,
.exam-page .course-grid > table > tbody,
.exam-page .course-grid > table > tbody > tr,
.exam-page .course-grid > table > tbody > tr > td,
.exam-page .course-grid > div:not(.subject-card) {
    display: contents !important;
}

.exam-page .course-grid .course-grid {
    margin: 0;
}

.exam-page .course-grid br {
    display: none !important;
}

/* Card size: min 300px, max 340px, space hoy to vadhse */

.exam-page .course-grid .subject-card {
    flex: 1 1 300px;
    width: auto;
    max-width: 340px;
}

/* =====================================================
   SUBJECT CARDS
===================================================== */

.exam-page .subject-card {
    position: relative;

    width: 100%;
    min-width: 0;

    min-height: 370px;

    padding: 40px 28px;

    display: flex;

    flex-direction: column;

    align-items: center;
    justify-content: center;

    text-align: center;

    box-sizing: border-box;

    border-radius: 23px;

    background: linear-gradient(
        145deg,
        rgba(29, 32, 59, .94),
        rgba(15, 17, 35, .98)
    );

    border: 1px solid rgba(139, 92, 246, .18);

    box-shadow: 0 18px 40px rgba(0,0,0,.24);

    overflow: hidden;

    transition: all .35s ease;
}

.exam-page .subject-card::before {
    content: "";

    position: absolute;

    width: 130px;
    height: 130px;

    border-radius: 50%;

    background: rgba(139,92,246,.09);

    filter: blur(35px);

    top: -70px;
    right: -50px;
}

.exam-page .subject-card:hover {
    transform: translateY(-8px);

    border-color: rgba(139,92,246,.55);

    box-shadow:
        0 25px 55px rgba(0,0,0,.34),
        0 0 30px rgba(139,92,246,.08);
}

/* Subject Icon */

.exam-page .subject-icon {
    position: relative;
    z-index: 2;

    width: 74px;
    height: 74px;

    flex-shrink: 0;

    margin-bottom: 18px;

    display: flex;

    align-items: center;
    justify-content: center;

    border-radius: 19px;

    background: linear-gradient(
        135deg,
        rgba(139,92,246,.22),
        rgba(34,211,238,.11)
    );

    border: 1px solid rgba(139,92,246,.28);

    color: #a78bfa;

    font-size: 30px;

    transition: all .3s ease;
}

.exam-page .subject-card:hover .subject-icon {
    color: #67e8f9;

    border-color: rgba(34,211,238,.40);

    box-shadow: 0 0 25px rgba(34,211,238,.10);
}

/* Course Name */

.exam-page .subject-card h4 {
    position: relative;
    z-index: 2;

    display: block;

    width: 100%;

    margin: 0 0 12px;

    color: #ffffff;

    font-size: 24px;

    font-weight: 750;

    line-height: 1.4;

    white-space: normal;

    word-break: normal;

    overflow-wrap: break-word;
}

/* Course Description */

.exam-page .subject-card p {
    position: relative;
    z-index: 2;

    display: block;

    width: 100%;

    min-height: 48px;

    margin: 0 0 23px;

    color: #9da4bb;

    font-size: 14.5px;

    line-height: 1.7;
}

/* Start Exam Button */

.exam-page .subject-card .exam-btn {
    position: relative;
    z-index: 2;

    min-width: 160px;

    padding: 13px 26px;

    font-size: 14px;

    white-space: nowrap;

    align-self: center;
}

/* =====================================================
   DECORATIVE DOTS
===================================================== */

.exam-page .exam-dot {
    position: absolute;

    width: 6px;
    height: 6px;

    border-radius: 50%;

    background: #a78bfa;

    box-shadow: 0 0 15px rgba(167,139,250,.9);

    opacity: .75;

    z-index: 2;
}

.exam-page .exam-dot-one {
    top: 25%;
    left: 8%;
}

.exam-page .exam-dot-two {
    top: 65%;
    right: 10%;

    background: #67e8f9;

    box-shadow: 0 0 15px rgba(103,232,249,.9);
}

.exam-page .exam-dot-three {
    top: 18%;
    right: 20%;
}

/* =====================================================
   TABLET RESPONSIVE
===================================================== */

@media (max-width: 992px) {

    .exam-page .course-grid {
        gap: 22px;
    }

    .exam-page .exam-box {
        padding: 35px 25px;
    }

}

/* =====================================================
   MOBILE RESPONSIVE
===================================================== */

@media (max-width: 576px) {

    .exam-page .course-grid {
        gap: 20px;
    }

    .exam-page .subject-card {
        min-height: 300px;

        padding: 30px 22px;
    }

    .exam-page .exam-hero {
        min-height: 470px;
    }

    .exam-page .exam-hero-content {
        padding: 70px 20px;
    }

    .exam-page .exam-hero-content h1 {
        font-size: 36px;
    }

    .exam-page .exam-hero-content p {
        font-size: 15px;
    }

    .exam-page .exam-content {
        padding: 55px 15px;
    }

    .exam-page .exam-box {
        padding: 28px 18px;
    }

    .exam-page .exam-title {
        font-size: 27px;
    }

}

/* =====================================================
   SMALL MOBILE
===================================================== */

@media (max-width: 380px) {

    .exam-page .subject-card {
        min-height: 280px;

        padding: 25px 18px;
    }

    .exam-page .subject-card h4 {
        font-size: 19px;
    }

    .exam-page .subject-card .exam-btn {
        min-width: 135px;
    }

}
</style>
   

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="exam-page">

    <!-- HERO -->

    <section class="exam-hero">

        <span class="exam-dot exam-dot-one"></span>
        <span class="exam-dot exam-dot-two"></span>
        <span class="exam-dot exam-dot-three"></span>

        <div class="exam-hero-content">

            <span class="exam-tag">
                ✦ ONLINE EXAM
            </span>

            <h1>
                Test Your Knowledge
            </h1>

            <p>
                Complete your course exam and check your understanding.
            </p>

            <a href="#exam" class="exam-btn">
                Start Exam
            </a>

        </div>

    </section>

    <!-- SUBJECT SELECTION -->

    <section class="exam-content" id="exam">

        <div class="exam-container">

            <div class="exam-box">

                <div class="exam-heading">

                    <div class="exam-heading-icon">
                        <i class="fa fa-graduation-cap"></i>
                    </div>

                    <h2 class="exam-title">
                        Choose Your Subject
                    </h2>

                    <p class="exam-subtitle">
                        Select a course to start your exam.
                    </p>

                </div>

                <!-- DYNAMIC COURSE LIST -->

                <div class="course-grid">

                 <asp:DataList ID="dlCourses" runat="server"

    RepeatDirection="Horizontal"
    RepeatLayout="Flow"
    CssClass="course-grid"
    Width="100%"
    OnItemCommand="dlCourses_ItemCommand">

                        <ItemTemplate>

                            <div class="subject-card">

                                <div class="subject-icon">
                                    <i class="fa fa-book"></i>
                                </div>

                                <h4>
                                    <%# Eval("CourseName") %>
                                </h4>

                                <p>
                                    Test your knowledge of this subject.
                                </p>

                                <asp:LinkButton ID="btnStartExam" runat="server"
    Text="Start Exam"
    CssClass="exam-btn"
    CommandName="StartExam"
    CommandArgument='<%# Eval("ID") %>'>
</asp:LinkButton>

                            </div>

                        </ItemTemplate>

                    </asp:DataList>

                </div>

            </div>

        </div>

    </section>

</div>

</asp:Content>
