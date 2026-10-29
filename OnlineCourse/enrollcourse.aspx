<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="enrollcourse.aspx.cs" Inherits="OnlineCourse.enrollcourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
/* =========================================================
   LEARNSPHERE - ENROLL COURSE
   STUDENT MASTER SAFE
========================================================= */
.enroll-page {
    position: relative;
    display: block;
    clear: both;
    width: 100%;
    min-height: 100vh;
    margin: 0 !important;
    padding: 0 0 60px !important;
    overflow: hidden;
    color: #e8e4f0;
    font-family: 'Poppins', sans-serif;
    background:
        radial-gradient(circle at 5% 20%, rgba(119,73,255,.15), transparent 28%),
        radial-gradient(circle at 95% 65%, rgba(0,210,255,.10), transparent 30%),
        linear-gradient(135deg, #080419 0%, #100827 48%, #080419 100%);
}

/* HERO SECTION */
.enroll-page .enroll-hero,
.enroll-hero {
    position: relative;
    display: flex;
    align-items: center;
    justify-content: center;
    width: 100%;
    min-height: 330px;
    padding: 70px 20px 60px;
    overflow: hidden;
    background: linear-gradient(135deg, rgba(12,6,34,.97), rgba(48,27,100,.91), rgba(10,35,66,.90));
    border-bottom: 1px solid rgba(255,255,255,.07);
}
.enroll-page .enroll-hero::before,
.enroll-hero::before {
    content: "";
    position: absolute;
    width: 500px;
    height: 500px;
    left: -250px;
    top: -250px;
    border-radius: 50%;
    border: 1px solid rgba(143,98,255,.20);
    box-shadow: 0 0 100px rgba(116,74,255,.13);
    pointer-events: none;
}
.enroll-page .enroll-hero::after,
.enroll-hero::after {
    content: "";
    position: absolute;
    width: 430px;
    height: 430px;
    right: -220px;
    bottom: -240px;
    border-radius: 50%;
    border: 1px solid rgba(0,220,255,.16);
    box-shadow: 0 0 100px rgba(0,210,255,.09);
    pointer-events: none;
}
.enroll-page .enroll-hero .container,
.enroll-hero .container {
    position: relative;
    z-index: 5;
    width: 100%;
    max-width: 1150px;
    margin: 0 auto;
}
.enroll-page .enroll-hero-content,
.enroll-hero-content { text-align: center; }
.enroll-page .enroll-badge,
.enroll-badge {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    padding: 8px 17px;
    margin-bottom: 17px;
    border-radius: 25px;
    color: #bfaeff;
    background: rgba(123,82,255,.10);
    border: 1px solid rgba(145,110,255,.25);
    font-size: 10px;
    font-weight: 600;
    letter-spacing: 1px;
    text-transform: uppercase;
}
.enroll-page .enroll-badge i,
.enroll-badge i { margin-right: 8px; color: #68eaff; }
.enroll-page .enroll-title,
.enroll-title {
    margin: 0 !important;
    color: #fff !important;
    font-size: clamp(34px, 5vw, 52px) !important;
    font-weight: 800 !important;
    line-height: 1.2 !important;
    background: linear-gradient(90deg, #fff, #cbbaff, #65eaff);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
}
.enroll-page .enroll-subtitle,
.enroll-subtitle {
    margin: 13px 0 0 !important;
    color: #aaa4bd !important;
    font-size: 13px !important;
    line-height: 1.8 !important;
}

/* MAIN COURSE SECTION */
.enroll-page .enroll-content,
.enroll-content {
    position: relative;
    width: 100%;
    padding: 70px 20px 20px;
}
.enroll-page .enroll-content .container,
.enroll-content .container,
.enroll-page .benefits-section .container,
.benefits-section .container {
    position: relative;
    z-index: 5;
    width: 100%;
    max-width: 1150px;
    margin-left: auto;
    margin-right: auto;
}
.enroll-page .enroll-content .row { align-items: flex-start; }
.enroll-page .course-main-title,
.course-main-title {
    margin: 0 0 18px !important;
    color: #fff !important;
    font-size: 29px !important;
    font-weight: 800 !important;
    line-height: 1.35 !important;
}
.enroll-page .course-description,
.course-description {
    margin: 0 0 25px !important;
    color: #aaa3bd !important;
    font-size: 12px !important;
    line-height: 1.9 !important;
}
.enroll-page .course-divider,
.course-divider {
    width: 100%;
    height: 1px;
    margin: 25px 0;
    border: 0;
    background: linear-gradient(90deg, rgba(126,91,255,.35), rgba(0,210,255,.12), transparent);
}
.enroll-page .feature-heading,
.feature-heading {
    margin: 0 0 17px !important;
    color: #fff !important;
    font-size: 18px !important;
    font-weight: 650 !important;
}
.enroll-page .feature-list,
.feature-list { margin: 0; padding: 0; list-style: none; }
.enroll-page .feature-list li,
.feature-list li {
    position: relative;
    display: flex;
    align-items: center;
    min-height: 39px;
    margin-bottom: 7px;
    padding: 7px 13px;
    border-radius: 10px;
    color: #aaa3b7;
    background: rgba(255,255,255,.035);
    border: 1px solid rgba(255,255,255,.05);
    font-size: 11px;
    line-height: 1.7;
    transition: .25s ease;
}
.enroll-page .feature-list li:hover,
.feature-list li:hover {
    color: #fff;
    background: rgba(112,76,255,.08);
    border-color: rgba(128,91,255,.20);
    transform: translateX(4px);
}

/* COURSE INFORMATION CARD */
.enroll-page .course-info-card,
.course-info-card {
    position: relative;
    width: 100%;
    padding: 28px;
    border-radius: 23px;
    background: linear-gradient(145deg, rgba(34,27,61,.96), rgba(17,13,39,.97));
    border: 1px solid rgba(157,119,255,.20);
    box-shadow: 0 22px 50px rgba(0,0,0,.42), inset 0 1px 0 rgba(255,255,255,.08);
    overflow: hidden;
}
.enroll-page .course-info-title,
.course-info-title {
    margin: 0 0 23px !important;
    color: #fff !important;
    font-size: 20px !important;
    font-weight: 800 !important;
    line-height: 1.5 !important;
}
.enroll-page .course-info-title::before,
.course-info-title::before {
    content: "";
    display: inline-block;
    width: 4px;
    height: 20px;
    margin-right: 10px;
    vertical-align: -4px;
    border-radius: 10px;
    background: linear-gradient(180deg, #8052f7, #08c8e8);
    box-shadow: 0 0 12px rgba(128,82,247,.45);
}

/* FORM FIELDS */
.enroll-page .form-group { position: relative; margin-bottom: 22px; }
.enroll-page .info-label,
.info-label { display: block; margin-bottom: 10px; color: #d4cde5; font-size: 13px; font-weight: 650; line-height: 1.6; }
.enroll-page .form-control {
    display: block;
    width: 100%;
    min-height: 50px;
    padding: 12px 15px;
    border: 1px solid rgba(184,169,224,.19) !important;
    border-radius: 12px !important;
    background: #0d0820 !important;
    color: #fff !important;
    font-family: 'Poppins', sans-serif;
    font-size: 13px;
    box-shadow: none !important;
    outline: none;
    transition: border-color .25s ease, box-shadow .25s ease;
}
.enroll-page .form-control::placeholder { color: #9289a8 !important; opacity: 1; }
.enroll-page .form-control:focus { border-color: rgba(151,113,255,.85) !important; background: #0d0820 !important; color: #fff !important; box-shadow: 0 0 0 3px rgba(128,82,247,.13) !important; outline: none; }
.enroll-page select.form-control { cursor: pointer; }
.enroll-page select.form-control option { background: #17102e; color: #fff; }
.enroll-page input[type="date"].form-control { color-scheme: dark; }

/* BUTTONS */
.enroll-page .enroll-btn,
.enroll-btn {
    display: flex;
    align-items: center;
    justify-content: center;
    width: 100%;
    min-height: 49px;
    margin: 23px 0 11px;
    padding: 13px 20px;
    border: 0 !important;
    border-radius: 13px !important;
    background: linear-gradient(100deg, #7548f7, #9855f5, #08c8e8) !important;
    color: #fff !important;
    font-family: 'Poppins', sans-serif;
    font-size: 14px !important;
    font-weight: 750 !important;
    cursor: pointer;
    box-shadow: 0 12px 30px rgba(117,72,247,.24);
    transition: all .3s ease;
}
.enroll-page .enroll-btn:hover,
.enroll-btn:hover { color: #fff !important; transform: translateY(-3px); background: linear-gradient(135deg, #704cff, #985bff, #00c9eb) !important; box-shadow: 0 17px 36px rgba(117,72,247,.38); text-decoration: none !important; }
.enroll-page .enroll-btn:active { transform: translateY(0); }
.enroll-page .back-btn,
.back-btn {
    display: flex;
    align-items: center;
    justify-content: center;
    width: 100%;
    min-height: 47px;
    margin-top: 12px;
    padding: 12px 18px;
    border-radius: 13px;
    color: #aaa3b7 !important;
    background: rgba(255,255,255,.035);
    border: 1px solid rgba(255,255,255,.10);
    text-decoration: none !important;
    font-size: 12px;
    font-weight: 550;
    transition: .3s ease;
}
.enroll-page .back-btn:hover,
.back-btn:hover { color: #fff !important; background: rgba(112,76,255,.10); border-color: rgba(128,91,255,.30); transform: translateY(-2px); }
.enroll-page .enroll-message { display: block; position: relative; margin: 12px 0; color: #67e8f9; font-size: 13px; line-height: 1.7; }
.info-row { display: flex; align-items: center; justify-content: space-between; min-height: 42px; padding: 9px 0; border-bottom: 1px solid rgba(255,255,255,.055); font-size: 11px; }
.info-row:last-of-type { border-bottom: 0; }
.info-value { color: #e8e4f0; font-weight: 550; text-align: right; }
.info-price { color: #6eeaff !important; font-size: 19px; font-weight: 700; }

/* WHY ENROLL / BENEFITS */
.enroll-page .benefits-section,
.benefits-section {
    position: relative;
    width: 100%;
    margin-top: 0;
    padding: 70px 20px 80px;
    background: linear-gradient(180deg, rgba(18,14,42,.96), rgba(9,5,27,.98));
    border-top: 1px solid rgba(255,255,255,.07);
}
.enroll-page .benefits-heading,
.benefits-heading { margin: 0 0 13px !important; color: #fff !important; font-size: 30px !important; font-weight: 800 !important; line-height: 1.3 !important; }
.enroll-page .benefits-subtitle,
.benefits-subtitle { margin: 0 0 40px !important; color: #a7a0bc !important; font-size: 12px !important; line-height: 1.8 !important; }
.enroll-page .benefit-card,
.benefit-card {
    position: relative;
    height: 100%;
    padding: 30px 22px;
    text-align: center;
    border-radius: 21px;
    background: linear-gradient(145deg, rgba(34,27,61,.88), rgba(16,13,37,.95));
    border: 1px solid rgba(157,119,255,.16);
    box-shadow: 0 18px 42px rgba(0,0,0,.32);
    transition: all .3s ease;
}
.enroll-page .benefit-card:hover,
.benefit-card:hover { transform: translateY(-8px); border-color: rgba(132,95,255,.30); box-shadow: 0 28px 55px rgba(0,0,0,.44), 0 0 30px rgba(112,75,255,.10); }
.enroll-page .benefit-icon,
.benefit-icon {
    display: flex;
    align-items: center;
    justify-content: center;
    width: 66px;
    height: 66px;
    margin: 0 auto 20px;
    border: 1px solid rgba(157,119,255,.24);
    border-radius: 19px;
    background: linear-gradient(135deg, rgba(128,82,247,.20), rgba(8,200,232,.10));
    font-size: 29px;
}
.enroll-page .benefit-title,
.benefit-title { margin: 0 0 12px !important; color: #fff !important; font-size: 18px !important; font-weight: 750 !important; }
.enroll-page .benefit-text,
.benefit-text { margin: 0 !important; color: #a7a0bc !important; font-size: 13px !important; line-height: 1.8 !important; }

/* ENROLLMENT TABLE */
.enroll-page .enroll-table-wrap { width: 100%; margin-top: 20px; overflow-x: auto; border: 1px solid rgba(157,119,255,.16); border-radius: 15px; background: rgba(9,5,27,.72); }
.enroll-page .enroll-table { width: 100%; min-width: 720px; margin: 0; border-collapse: collapse; border-spacing: 0; background: transparent; color: #e8e4f0; font-family: 'Poppins', sans-serif; font-size: 13px; }
.enroll-page .enroll-table th { padding: 16px 15px; text-align: left; white-space: nowrap; color: #fff; background: linear-gradient(135deg, rgba(87,54,151,.78), rgba(26,68,105,.80)); border: 1px solid rgba(255,255,255,.10); font-weight: 750; }
.enroll-page .enroll-table td { padding: 15px; text-align: left; vertical-align: middle; color: #c8c1d9; border: 1px solid rgba(255,255,255,.075); line-height: 1.7; }
.enroll-page .enroll-table tr:nth-child(even) td { background: rgba(255,255,255,.025); }
.enroll-page .enroll-table tr:hover td { background: rgba(128,82,247,.10); color: #fff; }

/* DECORATIVE ELEMENTS */
.enroll-page .enroll-content::before { content: "✦"; position: absolute; left: 3%; top: 90px; color: #9879ff; font-size: 23px; text-shadow: 0 0 18px rgba(152,121,255,.8); pointer-events: none; animation: enrollFloat 3s ease-in-out infinite; }
.enroll-page .benefits-section::after { content: "✧"; position: absolute; right: 4%; bottom: 50px; color: #67e8f9; font-size: 28px; text-shadow: 0 0 18px rgba(103,232,249,.7); pointer-events: none; animation: enrollFloat 4s ease-in-out infinite; }
@keyframes enrollFloat {
    0%, 100% { transform: translateY(0); opacity: .5; }
    50% { transform: translateY(-12px); opacity: 1; }
}

/* RESPONSIVE TABLET */
@media (max-width: 991px) {
    .enroll-page .enroll-content { padding: 50px 22px; }
    .enroll-page .course-info-card { margin-top: 28px; }
    .enroll-page .benefit-card { margin-bottom: 18px; }
    .enroll-page .course-main-title { font-size: 29px !important; }
}
/* RESPONSIVE MOBILE */
@media (max-width: 767px) {
    .enroll-page .enroll-hero { min-height: 245px; padding: 45px 16px; }
    .enroll-page .enroll-title { font-size: 34px !important; }
    .enroll-page .enroll-subtitle { font-size: 13px !important; }
    .enroll-page .enroll-content { padding: 40px 15px; }
    .enroll-page .course-main-title { font-size: 27px !important; }
    .enroll-page .course-info-card { padding: 25px 19px; border-radius: 20px; }
    .enroll-page .course-info-title { font-size: 20px !important; }
    .enroll-page .benefits-section { padding: 55px 15px 65px; }
    .enroll-page .benefits-heading { font-size: 29px !important; }
    .enroll-page .benefits-subtitle { margin-bottom: 30px !important; }
    .enroll-page .benefit-card { padding: 27px 20px; }
    .enroll-page .enroll-content::before { display: none; }
}
/* SMALL MOBILE */
@media (max-width: 480px) {
    .enroll-page .enroll-title { font-size: 29px !important; }
    .enroll-page .enroll-badge { font-size: 10px; padding: 8px 14px; }
    .enroll-page .course-info-card { padding: 22px 16px; }
    .enroll-page .form-control { min-height: 47px; font-size: 12px; }
    .enroll-page .enroll-btn { min-height: 48px; font-size: 13px !important; }
    .enroll-page .benefits-heading { font-size: 26px !important; }
}
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <div class="enroll-page">


    
        <!-- COURSE FORM SECTION -->
        <section class="enroll-content">
            <div class="container">
                <div class="row align-items-start">

                    <div class="col-lg-7">
                        <h2 class="course-main-title">Start Learning Today</h2>

                        <p class="course-description">
                            Join LearnSphere and start your learning journey.
                            Choose your course and complete the enrollment form.
                        </p>

                        <hr class="course-divider" />

                        <h3 class="feature-heading">What You Will Get</h3>

                        <ul class="feature-list">
                            <li>🎥 Video lessons to learn at your own pace</li>
                            <li>📚 Structured course learning</li>
                            <li>📜 Certificate after course completion</li>
                            <li>💼 Practical learning experience</li>
                        </ul>
                    </div>

                    <div class="col-lg-5">
                        <div class="course-info-card">

                            <h3 class="course-info-title">Course Information</h3>

                            <p class="course-description">
                                Complete the form below to enroll in a course.
                            </p>

                            <div class="form-group">
                                <asp:Label ID="lblStudentName" runat="server"
                                    CssClass="info-label"
                                    Text="Student Name"></asp:Label>

                                <asp:TextBox ID="txtStudentName" runat="server"
                                    CssClass="form-control"
                                    placeholder="Enter student name"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="lblCourse" runat="server"
                                    CssClass="info-label"
                                    Text="Select Course"></asp:Label>

                                <asp:DropDownList ID="ddlCourse" runat="server"
                                    CssClass="form-control">
                                </asp:DropDownList>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="lblEnrollDate" runat="server"
                                    CssClass="info-label"
                                    Text="Enrollment Date"></asp:Label>

                                <asp:TextBox ID="txtEnrollDate" runat="server"
                                    CssClass="form-control"
                                    TextMode="Date"></asp:TextBox>
                            </div>

                            <asp:Button ID="btnEnroll" runat="server"
                                Text="Enroll Now"
                                CssClass="enroll-btn"
                                OnClick="btnEnroll_Click" />

                            <asp:Label ID="lblmsg" runat="server"
                                CssClass="enroll-message"></asp:Label>

                            <a href="course.aspx" class="back-btn">
                                Back to Courses
                            </a>

                        </div>
                    </div>

                </div>
            </div>
        </section>

        <!-- WHY ENROLL SECTION -->
        <section class="benefits-section">
            <div class="container">

                <div class="text-center">
                    <h2 class="benefits-heading">Why Enroll?</h2>
                    <p class="benefits-subtitle">
                        Benefits of joining LearnSphere.
                    </p>
                </div>

                <div class="row">

                    <div class="col-md-4 mb-3">
                        <div class="benefit-card">
                            <div class="benefit-icon">🎥</div>
                            <h4 class="benefit-title">HD Videos</h4>
                            <p class="benefit-text">
                                Watch video lessons and learn at your own pace.
                            </p>
                        </div>
                    </div>

                    <div class="col-md-4 mb-3">
                        <div class="benefit-card">
                            <div class="benefit-icon">📜</div>
                            <h4 class="benefit-title">Certificate</h4>
                            <p class="benefit-text">
                                Receive a certificate after completing your course.
                            </p>
                        </div>
                    </div>

                    <div class="col-md-4 mb-3">
                        <div class="benefit-card">
                            <div class="benefit-icon">💼</div>
                            <h4 class="benefit-title">Real Projects</h4>
                            <p class="benefit-text">
                                Build practical projects and develop your skills.
                            </p>
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <!-- MY ENROLLMENTS SECTION -->
        <section class="enroll-content">
            <div class="container">

                <div class="course-info-card">
                    <h3 class="course-info-title">My Enrollments</h3>

                    <div class="enroll-table-wrap">

                        <asp:GridView ID="GridView1" runat="server"
                            AutoGenerateColumns="False"
                            CssClass="enroll-table"
                            GridLines="None"
                            EmptyDataText="No enrollments found.">

                            <Columns>

                                <asp:TemplateField HeaderText="Enrollment ID">
                                    <ItemTemplate>
                                        <asp:Label ID="lblID" runat="server"
                                            Text='<%# Eval("ID") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Student Name">
                                    <ItemTemplate>
                                        <asp:Label ID="lblStudentName" runat="server"
                                            Text='<%# Eval("StudentName") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Course Name">
                                    <ItemTemplate>
                                        <asp:Label ID="lblCourseName" runat="server"
                                            Text='<%# Eval("CourseName") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Enroll Date">
                                    <ItemTemplate>
                                        <asp:Label ID="lblDate" runat="server"
                                            Text='<%# Eval("EnrollDate") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Progress">
                                    <ItemTemplate>
                                        <asp:Label ID="lblProgress" runat="server"
                                            Text='<%# Eval("Progress") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Certificate Status">
                                    <ItemTemplate>
                                        <asp:Label ID="lblCertificateStatus" runat="server"
                                            Text='<%# Eval("CertificateStatus") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                            </Columns>

                        </asp:GridView>

                    </div>
                </div>

            </div>
        </section>

    


</asp:Content>
