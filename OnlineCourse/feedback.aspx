
<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="feedback.aspx.cs" Inherits="OnlineCourse.feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .feedback-page {
            background:
                radial-gradient(circle at 10% 10%, rgba(139,92,246,.13), transparent 28%),
                radial-gradient(circle at 90% 30%, rgba(34,211,238,.10), transparent 28%),
                linear-gradient(180deg,#080a17 0%,#0d1021 100%);
            color: #f8fafc;
            min-height: 100vh;
            padding-bottom: 60px;
        }

        .feedback-page .feedback-hero {
            min-height: 320px;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            background:
                linear-gradient(135deg,rgba(8,10,25,.94),rgba(41,23,76,.88)),
                url('images/bg_2.jpg') center/cover;
            padding: 60px 20px;
        }

        .feedback-page .hero-badge {
            display: inline-block;
            padding: 8px 18px;
            margin-bottom: 20px;
            border: 1px solid rgba(139,92,246,.5);
            border-radius: 50px;
            background: rgba(139,92,246,.12);
            color: #c4b5fd;
            font-size: 13px;
            font-weight: 700;
            letter-spacing: 1px;
        }

        .feedback-page .hero-title {
            margin: 0;
            font-size: clamp(38px,6vw,62px);
            font-weight: 800;
            color: #ffffff;
        }

        .feedback-page .hero-subtitle {
            margin-top: 18px;
            color: #aeb5d0;
            font-size: 17px;
        }

        .feedback-page .feedback-section {
            padding: 65px 15px;
        }

        .feedback-page .feedback-wrapper {
            max-width: 900px;
            margin: auto;
        }

        .feedback-page .feedback-card {
            position: relative;
            padding: 40px;
            margin-bottom: 35px;
            border-radius: 25px;
            background: linear-gradient(145deg,rgba(31,34,63,.92),rgba(13,15,32,.96));
            border: 1px solid rgba(139,92,246,.28);
            box-shadow: 0 25px 70px rgba(0,0,0,.35);
            overflow: hidden;
        }

        .feedback-page .card-heading {
            text-align: center;
            margin-bottom: 35px;
        }

        .feedback-page .feedback-icon {
            width: 65px;
            height: 65px;
            margin: 0 auto 18px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 20px;
            background: linear-gradient(135deg,rgba(139,92,246,.25),rgba(34,211,238,.16));
            border: 1px solid rgba(139,92,246,.35);
            color: #c4b5fd;
            font-size: 30px;
        }

        .feedback-page .card-heading h2 {
            color: #ffffff;
            font-size: 29px;
            font-weight: 800;
            margin: 0;
        }

        .feedback-page .card-heading p {
            color: #a7adc4;
            margin-top: 10px;
        }

        .feedback-page .form-group {
            margin-bottom: 24px;
        }

        .feedback-page .form-group label {
            display: block;
            margin-bottom: 10px;
            color: #e8eaf5;
            font-size: 14px;
            font-weight: 700;
        }

        .feedback-page .form-control {
            width: 100%;
            min-height: 52px;
            border-radius: 12px !important;
            border: 1px solid rgba(148,163,184,.25) !important;
            background: rgba(7,9,22,.85) !important;
            color: #ffffff !important;
            padding: 12px 16px !important;
            box-sizing: border-box;
        }

        .feedback-page .form-control:focus {
            outline: none;
            border-color: #8b5cf6 !important;
            box-shadow: 0 0 0 3px rgba(139,92,246,.15) !important;
        }

        .feedback-page select.form-control option {
            background: #15172d;
            color: #ffffff;
        }

        .feedback-page textarea.form-control {
            min-height: 140px;
            resize: vertical;
        }

        .feedback-page .submit-area {
            text-align: center;
            margin-top: 30px;
        }

        .feedback-page .submit-btn {
            display: inline-block;
            min-width: 175px;
            padding: 13px 25px;
            margin: 5px;
            border: none;
            border-radius: 50px;
            color: #ffffff !important;
            font-size: 15px;
            font-weight: 800;
            cursor: pointer;
            background: linear-gradient(100deg,#7c3aed,#8b5cf6,#06b6d4);
            box-shadow: 0 12px 30px rgba(124,58,237,.25);
            transition: .3s ease;
        }

        .feedback-page .submit-btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 15px 40px rgba(139,92,246,.4);
        }

        .feedback-page .feedback-message {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #67e8f9;
            font-weight: 600;
        }

        .feedback-page .feedback-grid-wrapper {
            width: 100%;
            overflow-x: auto;
            margin-top: 25px;
            border-radius: 14px;
        }

        .feedback-page .feedback-grid {
            width: 100%;
            min-width: 600px;
            border-collapse: collapse;
            background: rgba(7,9,22,.65);
            color: #e2e8f0;
            font-size: 14px;
        }

        .feedback-page .feedback-grid th {
            padding: 15px;
            text-align: left;
            white-space: nowrap;
            color: #ffffff;
            background: linear-gradient(135deg,#35235f,#163d5b);
            border: 1px solid rgba(255,255,255,.12);
        }

        .feedback-page .feedback-grid td {
            padding: 15px;
            color: #cbd5e1;
            line-height: 1.7;
            border: 1px solid rgba(255,255,255,.10);
        }

        .feedback-page .feedback-grid tr:nth-child(even) td {
            background: rgba(255,255,255,.035);
        }

        .feedback-page .feedback-grid tr:hover td {
            background: rgba(139,92,246,.12);
            color: #ffffff;
        }

        @media (max-width:768px) {
            .feedback-page .feedback-card {
                padding: 25px 18px;
            }

            .feedback-page .card-heading h2 {
                font-size: 24px;
            }

            .feedback-page .feedback-section {
                padding: 40px 12px;
            }

            .feedback-page .submit-btn {
                width: 100%;
                max-width: 250px;
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
                            CssClass="submit-btn"
                            OnClick="btnClear_Click"
                            CausesValidation="false" />
                    </div>

                    <asp:Label ID="lblmsg" runat="server"
                        CssClass="feedback-message"></asp:Label>

                </div>

                <div class="feedback-card">

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
