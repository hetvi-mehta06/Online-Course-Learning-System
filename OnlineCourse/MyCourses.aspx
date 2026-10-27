
<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="MyCourses.aspx.cs" Inherits="OnlineCourse.MyCourses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
    .my-courses-page {
        min-height: 100vh;
        padding: 105px 25px 70px;
        position: relative;
        overflow: hidden;
        background:
            radial-gradient(circle at 10% 20%, rgba(125,55,255,.20), transparent 30%),
            radial-gradient(circle at 90% 30%, rgba(0,210,255,.14), transparent 30%),
            radial-gradient(circle at 50% 100%, rgba(220,50,180,.12), transparent 35%),
            #090718;
    }

    .my-courses-page::before {
        content: "";
        position: absolute;
        width: 450px;
        height: 450px;
        border-radius: 50%;
        background: rgba(130,50,255,.16);
        filter: blur(100px);
        top: 50px;
        left: -180px;
        animation: glowMove 8s ease-in-out infinite alternate;
        pointer-events: none;
    }

    .my-courses-page::after {
        content: "";
        position: absolute;
        width: 500px;
        height: 500px;
        border-radius: 50%;
        background: rgba(0,210,255,.12);
        filter: blur(110px);
        bottom: -200px;
        right: -180px;
        animation: glowMove2 9s ease-in-out infinite alternate;
        pointer-events: none;
    }

    @keyframes glowMove {
        from { transform: translate(0,0) scale(1); }
        to { transform: translate(100px,70px) scale(1.15); }
    }

    @keyframes glowMove2 {
        from { transform: translate(0,0) scale(1); }
        to { transform: translate(-80px,-60px) scale(1.2); }
    }

    .my-courses-container {
        position: relative;
        z-index: 2;
        max-width: 1250px;
        margin: 0 auto;
    }

    .courses-header {
        position: relative;
        padding: 34px 38px;
        margin-bottom: 38px;
        border-radius: 28px;
        background: rgba(20,15,48,.82);
        border: 1px solid rgba(255,255,255,.10);
        box-shadow: 0 25px 70px rgba(0,0,0,.35),
                    inset 0 1px 0 rgba(255,255,255,.06);
        backdrop-filter: blur(18px);
        -webkit-backdrop-filter: blur(18px);
        overflow: hidden;
    }

    .courses-header::before {
        content: "";
        position: absolute;
        width: 300px;
        height: 300px;
        border-radius: 50%;
        background: rgba(135,70,255,.18);
        filter: blur(80px);
        top: -180px;
        left: -80px;
    }

    .header-content {
        position: relative;
        z-index: 2;
        display: flex;
        align-items: center;
        justify-content: space-between;
        gap: 25px;
    }

    .header-left {
        display: flex;
        align-items: center;
        gap: 22px;
    }

    .header-icon {
        width: 74px;
        height: 74px;
        flex-shrink: 0;
        border-radius: 22px;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 30px;
        color: white;
        background: linear-gradient(135deg,#7b3cff,#168de2);
        box-shadow: 0 15px 35px rgba(104,55,255,.35),
                    inset 0 1px 0 rgba(255,255,255,.25);
    }

    .header-title {
        margin: 0;
        color: white;
        font-size: 40px;
        font-weight: 800;
        letter-spacing: -.8px;
    }

    .header-subtitle {
        margin: 8px 0 0;
        color: #aaa7c9;
        font-size: 16px;
    }

    .learning-badge {
        padding: 13px 21px;
        border-radius: 30px;
        color: #dffaff;
        font-weight: 700;
        font-size: 14px;
        white-space: nowrap;
        background: rgba(0,180,255,.08);
        border: 1px solid rgba(0,200,255,.30);
        box-shadow: 0 0 25px rgba(0,200,255,.08);
    }

    /* MY COURSES CARD */

    .mycourses-card {
        position: relative;
        padding: 30px;
        border-radius: 26px;
        background: rgba(20,15,48,.82);
        border: 1px solid rgba(139,92,246,.25);
        backdrop-filter: blur(18px);
        -webkit-backdrop-filter: blur(18px);
        box-shadow: 0 25px 65px rgba(0,0,0,.40),
                    inset 0 1px 0 rgba(255,255,255,.06);
        color: #dbe4ff;
    }

    .mycourses-card h3 {
        margin: 0 0 14px;
        color: #fff;
        font-size: 27px;
        font-weight: 800;
    }

    .mycourses-description {
        margin-bottom: 22px;
        color: #aaa7c9;
        font-size: 15px;
        line-height: 1.8;
    }

    .mycourses-message {
        display: block;
        margin-bottom: 15px;
        color: #c4b5fd;
        font-weight: 600;
    }

    .mycourses-table-wrap {
        width: 100%;
        overflow-x: auto;
        border: 1px solid rgba(139,92,246,.25);
        border-radius: 16px;
    }

    .mycourses-grid {
        width: 100%;
        min-width: 800px;
        margin: 0;
        border-collapse: separate;
        border-spacing: 0;
        background: rgba(7,8,28,.75);
        color: #dbe4ff;
    }

    .mycourses-grid th {
        padding: 17px 15px !important;
        color: #fff !important;
        font-size: 13px;
        font-weight: 800;
        text-transform: uppercase;
        letter-spacing: .5px;
        white-space: nowrap;
        background: linear-gradient(135deg,rgba(123,60,255,.90),rgba(22,141,226,.90)) !important;
        border: none !important;
    }

    .mycourses-grid td {
        padding: 17px 15px !important;
        vertical-align: middle !important;
        color: #d2d8f2 !important;
        background: rgba(20,15,48,.82) !important;
        border-top: 1px solid rgba(255,255,255,.08) !important;
        border-left: none !important;
        border-right: none !important;
    }

    .mycourses-grid tr:hover td {
        color: #fff !important;
        background: rgba(61,42,105,.75) !important;
    }

    .continue-btn {
        display: inline-flex;
        align-items: center;
        justify-content: center;
        gap: 9px;
        min-width: 155px;
        padding: 12px 16px;
        border-radius: 12px;
        color: white !important;
        text-decoration: none !important;
        white-space: nowrap;
        font-size: 13px;
        font-weight: 800;
        background: linear-gradient(135deg,#743cff,#158fe8);
        border: 1px solid rgba(255,255,255,.14);
        box-shadow: 0 10px 25px rgba(100,50,255,.22);
        transition: all .3s ease;
    }

    .continue-btn:hover {
        transform: translateY(-2px);
        box-shadow: 0 15px 35px rgba(100,50,255,.38);
        color: white !important;
    }

    .mycourses-note {
        margin-top: 25px;
        padding: 20px 22px;
        border-radius: 16px;
        color: #aaa7c9;
        line-height: 1.8;
        background: rgba(0,180,255,.06);
        border: 1px solid rgba(0,200,255,.18);
    }

    .mycourses-note strong {
        color: #c4b5fd;
        font-size: 16px;
    }

    @media (max-width: 991px) {
        .header-title {
            font-size: 34px;
        }

        .header-content {
            align-items: flex-start;
        }

        .learning-badge {
            white-space: normal;
            text-align: center;
        }
    }

    @media (max-width: 767px) {
        .my-courses-page {
            padding: 85px 15px 50px;
        }

        .courses-header {
            padding: 25px 20px;
            border-radius: 22px;
        }

        .header-content {
            flex-direction: column;
            align-items: flex-start;
        }

        .header-left {
            align-items: flex-start;
            gap: 15px;
        }

        .header-title {
            font-size: 30px;
        }

        .header-subtitle {
            font-size: 14px;
        }

        .header-icon {
            width: 60px;
            height: 60px;
            font-size: 24px;
            border-radius: 18px;
        }

        .learning-badge {
            align-self: flex-start;
        }

        .mycourses-card {
            padding: 20px;
            border-radius: 20px;
        }

        .mycourses-card h3 {
            font-size: 23px;
        }
    }

    @media (prefers-reduced-motion: reduce) {
        .my-courses-page::before,
        .my-courses-page::after,
        .continue-btn {
            animation: none !important;
            transition: none !important;
        }
    }
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<section class="my-courses-page">
    <div class="my-courses-container">

        <!-- HEADER -->
        <div class="courses-header">
            <div class="header-content">
                <div class="header-left">
                    <div class="header-icon">
                        <i class="fa fa-graduation-cap"></i>
                    </div>

                    <div>
                        <h1 class="header-title">My Courses</h1>
                        <p class="header-subtitle">
                            Continue your learning journey and track your progress
                        </p>
                    </div>
                </div>

                <div class="learning-badge">
                    <i class="fa fa-user"></i>
                    Student Learning Hub
                </div>
            </div>
        </div>

        <!-- ENROLLED COURSES -->
        <div class="mycourses-card">
            <h3>My Enrolled Courses</h3>

            <p class="mycourses-description">
                Below are the courses associated with your enrollment.
                Select Continue Learning to open the learning page
                for your chosen course.
            </p>

            <asp:Label ID="lblmsg" runat="server"
                CssClass="mycourses-message"></asp:Label>

            <div class="mycourses-table-wrap">
                <asp:GridView ID="GridView1" runat="server"
                    AutoGenerateColumns="False"
                    CssClass="mycourses-grid"
                    EmptyDataText="You have not enrolled in any courses yet."
                    GridLines="None">

                    <Columns>
                        <asp:TemplateField HeaderText="Course ID">
                            <ItemTemplate>
                                <asp:Label ID="lblCourseID" runat="server"
                                    Text='<%# Eval("ID") %>'>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Course Name">
                            <ItemTemplate>
                                <asp:Label ID="lblCourseName" runat="server"
                                    Text='<%# Eval("CourseName") %>'>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Category">
                            <ItemTemplate>
                                <asp:Label ID="lblCategory" runat="server"
                                    Text='<%# Eval("CategoryID") %>'>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Price">
                            <ItemTemplate>
                                <asp:Label ID="lblPrice" runat="server"
                                    Text='<%# Eval("Price") %>'>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Status">
                            <ItemTemplate>
                                <asp:Label ID="lblStatus" runat="server"
                                    Text='<%# Eval("Status") %>'>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Action">
                            <ItemTemplate>
                                <asp:HyperLink ID="lnkContinue" runat="server"
                                    Text="Continue Learning"
                                    CssClass="continue-btn"
                                    NavigateUrl='<%# "CourseDetails.aspx?course=" + Eval("ID") %>'>
                                </asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>

            <div class="mycourses-note">
                <strong>Keep Learning, Keep Growing!</strong>
                <br />
                Every lesson brings you closer to your goals.
                Continue exploring your courses and make the most
                of your LearnSphere learning experience.
            </div>
        </div>

    </div>
</section>

</asp:Content>
