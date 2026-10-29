```aspx
<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageFeedback.aspx.cs" Inherits="OnlineCourse.ManageFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .manage-feedback-page {
            min-height: 100vh;
            padding: 100px 25px 80px;
            position: relative;
            overflow: hidden;
            background:
                radial-gradient(circle at 10% 20%, rgba(124,58,237,.22), transparent 30%),
                radial-gradient(circle at 90% 15%, rgba(37,99,235,.20), transparent 30%),
                radial-gradient(circle at 50% 90%, rgba(168,85,247,.15), transparent 35%),
                #080b1c;
            color: #dbe4ff;
        }

        .feedback-orb {
            position: absolute;
            border-radius: 50%;
            filter: blur(80px);
            opacity: .35;
            pointer-events: none;
            animation: floatOrb 9s ease-in-out infinite alternate;
        }

        .feedback-orb.one {
            width: 260px;
            height: 260px;
            background: #7c3aed;
            top: 120px;
            left: -100px;
        }

        .feedback-orb.two {
            width: 300px;
            height: 300px;
            background: #2563eb;
            right: -120px;
            top: 300px;
            animation-delay: 2s;
        }

        .feedback-orb.three {
            width: 220px;
            height: 220px;
            background: #9333ea;
            bottom: 50px;
            left: 40%;
            animation-delay: 4s;
        }

        @keyframes floatOrb {
            from { transform: translate3d(0,0,0) scale(1); }
            to { transform: translate3d(30px,-35px,0) scale(1.12); }
        }

        .feedback-hero,
        .feedback-container {
            position: relative;
            z-index: 2;
            max-width: 1250px;
            margin-left: auto;
            margin-right: auto;
        }

        .feedback-hero {
            margin-bottom: 30px;
            padding: 45px 30px;
            text-align: center;
            border-radius: 28px;
            background: rgba(17,24,50,.78);
            border: 1px solid rgba(139,92,246,.30);
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
            box-shadow: 0 25px 70px rgba(0,0,0,.40),
                        inset 0 1px 0 rgba(255,255,255,.08);
        }

        .feedback-hero h1 {
            margin: 0;
            font-size: 44px;
            font-weight: 800;
            letter-spacing: -.8px;
            background: linear-gradient(90deg,#fff,#c4b5fd,#60a5fa);
            /*-webkit-background-clip: text;*/
            -webkit-text-fill-color: transparent;
        }

        .feedback-hero p {
            margin: 12px 0 0;
            color: #aeb9d6;
            font-size: 16px;
        }

        .feedback-card,
        .feedback-stat,
        .feedback-actions {
            position: relative;
            margin-bottom: 28px;
            padding: 28px;
            border-radius: 24px;
            background: rgba(17,24,50,.78);
            border: 1px solid rgba(139,92,246,.25);
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
            box-shadow: 0 22px 55px rgba(0,0,0,.35),
                        inset 0 1px 0 rgba(255,255,255,.05);
        }

        .feedback-card h3,
        .feedback-stat h3,
        .feedback-actions h3 {
            color: #fff;
            font-size: 24px;
            font-weight: 750;
            margin: 0 0 22px;
        }

        .feedback-form label {
            display: block;
            margin-bottom: 8px;
            color: #cbd5f5;
            font-weight: 600;
        }

        .feedback-form .form-control {
            min-height: 46px;
            margin-bottom: 20px;
            border-radius: 11px;
            color: #f8fafc;
            background: rgba(7,12,30,.75);
            border: 1px solid rgba(148,163,184,.25);
            box-shadow: none;
        }

        .feedback-form .form-control:focus {
            color: #fff;
            background: rgba(7,12,30,.9);
            border-color: #8b5cf6;
            box-shadow: 0 0 0 3px rgba(139,92,246,.15);
        }

        .feedback-form .form-control::placeholder {
            color: #8995b3;
        }

        .feedback-btn {
            display: inline-block;
            margin: 5px 7px 0 0;
            padding: 11px 18px;
            border: 0;
            border-radius: 10px;
            color: #fff !important;
            font-weight: 700;
            transition: .25s ease;
        }

        .feedback-btn:hover {
            transform: translateY(-2px);
            filter: brightness(1.08);
        }

        .save-btn {
            background: linear-gradient(135deg,#059669,#10b981);
        }

        .update-btn {
            background: linear-gradient(135deg,#2563eb,#3b82f6);
        }

        .clear-btn {
            background: linear-gradient(135deg,#475569,#64748b);
        }

        .export-btn {
            background: linear-gradient(135deg,#7c3aed,#2563eb);
        }

        .feedback-top {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 18px;
            margin-bottom: 20px;
        }

        .feedback-top h3 {
            margin: 0;
        }

        .feedback-table-wrapper {
            width: 100%;
            overflow-x: auto;
            border-radius: 15px;
            border: 1px solid rgba(139,92,246,.20);
        }

        .feedback-grid {
            width: 100%;
            min-width: 850px;
            margin: 0;
            border-collapse: separate;
            border-spacing: 0;
            color: #dbe4ff;
            background: rgba(7,12,30,.55);
        }

        .feedback-grid th {
            padding: 16px 14px !important;
            color: #fff !important;
            background: linear-gradient(135deg,rgba(124,58,237,.9),rgba(37,99,235,.9)) !important;
            border: 0 !important;
            font-size: 12px;
            text-transform: uppercase;
            letter-spacing: .5px;
            white-space: nowrap;
        }

        .feedback-grid td {
            padding: 15px 14px !important;
            vertical-align: middle !important;
            color: #cbd5f5 !important;
            background: rgba(15,23,42,.72) !important;
            border-top: 1px solid rgba(148,163,184,.12) !important;
            border-left: 0 !important;
            border-right: 0 !important;
        }

        .feedback-grid tr:hover td {
            background: rgba(30,41,70,.9) !important;
            color: #fff !important;
        }

        .feedback-grid .btn {
            margin: 2px;
            border-radius: 8px;
            font-weight: 600;
        }

        .rating {
            white-space: nowrap;
            color: #fbbf24;
        }

        .feedback-message {
            display: block;
            margin-top: 15px;
            color: #c4b5fd;
            font-weight: 600;
        }

        .feedback-stat p {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 12px;
            padding: 12px 0;
            margin: 0;
            color: #aeb9d6;
            border-bottom: 1px solid rgba(148,163,184,.12);
        }

        .feedback-stat p:last-child {
            border-bottom: 0;
        }

        .feedback-stat strong {
            color: #fff;
        }

        .feedback-stat span {
            color: #c4b5fd;
            font-weight: 700;
        }

        .feedback-actions .btn {
            display: block;
            width: 100%;
            margin-bottom: 12px;
            padding: 12px 14px;
            border: 0;
            border-radius: 10px;
            color: #fff;
            font-weight: 700;
            transition: .25s ease;
        }

        .feedback-actions .btn:hover {
            transform: translateY(-2px);
            filter: brightness(1.08);
        }

        .quick-users {
            background: linear-gradient(135deg,#059669,#10b981);
        }

        .quick-courses {
            background: linear-gradient(135deg,#0284c7,#06b6d4);
        }

        .quick-enrollments {
            background: linear-gradient(135deg,#d97706,#f59e0b);
        }

        .quick-dashboard {
            background: linear-gradient(135deg,#475569,#64748b);
        }

        @media (max-width: 991px) {
            .feedback-hero h1 {
                font-size: 38px;
            }
        }

        @media (max-width: 767px) {
            .manage-feedback-page {
                padding: 80px 15px 50px;
            }

            .feedback-hero {
                padding: 32px 18px;
                border-radius: 20px;
            }

            .feedback-hero h1 {
                font-size: 31px;
            }

            .feedback-card,
            .feedback-stat,
            .feedback-actions {
                padding: 20px;
                border-radius: 19px;
            }

            .feedback-card h3,
            .feedback-stat h3,
            .feedback-actions h3 {
                font-size: 21px;
            }

            .feedback-top {
                align-items: stretch;
                flex-direction: column;
            }

            .export-btn,
            .feedback-btn {
                width: 100%;
            }

            .feedback-btn {
                margin-right: 0;
            }
        }

        @media (prefers-reduced-motion: reduce) {
            .feedback-orb,
            .feedback-btn,
            .feedback-grid tr,
            .feedback-actions .btn {
                animation: none !important;
                transition: none !important;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="manage-feedback-page">

        <!-- Background Orbs -->
        <div class="feedback-orb one"></div>
        <div class="feedback-orb two"></div>
        <div class="feedback-orb three"></div>

        <!-- Hero -->
        <div class="feedback-hero">
            <h1>Manage Feedback</h1>
            <p>Admin Panel / Manage Feedback</p>
        </div>

        <div class="feedback-container">

            <!-- Add Student Feedback -->
            <div class="feedback-card feedback-form">
                <h3>Add Student Feedback</h3>

                <div class="row">
                    <div class="col-md-6">
                        <label>Student Name</label>
                        <asp:TextBox ID="txtStudentName" runat="server"
                            CssClass="form-control"
                            placeholder="Enter student name"></asp:TextBox>
                    </div>

                    <div class="col-md-6">
                        <label>Course Name</label>
                        <asp:TextBox ID="txtCourseName" runat="server"
                            CssClass="form-control"
                            placeholder="Enter course name"></asp:TextBox>
                    </div>

                    <div class="col-md-6">
                        <label>Rating (1 to 5)</label>
                        <asp:TextBox ID="txtRating" runat="server"
                            TextMode="Number"
                            CssClass="form-control"
                            placeholder="Enter rating"></asp:TextBox>
                    </div>

                    <div class="col-md-6">
                        <label>Feedback</label>
                        <asp:TextBox ID="txtFeedback" runat="server"
                            CssClass="form-control"
                            placeholder="Enter feedback"></asp:TextBox>
                    </div>
                </div>

                <asp:Button ID="btnSave" runat="server"
                    Text="Save Feedback"
                    CssClass="feedback-btn save-btn"
                    OnClick="btnSave_Click" />

                <asp:Button ID="btnUpdate" runat="server"
                    Text="Update Feedback"
                    CssClass="feedback-btn update-btn"
                    OnClick="btnUpdate_Click" />

                <asp:Button ID="btnClear" runat="server"
                    Text="Clear"
                    CssClass="feedback-btn clear-btn"
                    CausesValidation="false"
                    OnClick="btnClear_Click" />
            </div>

            <!-- Feedback Grid -->
            <div class="feedback-card">
                <div class="feedback-top">
                    <h3>Student Feedback</h3>

                    <asp:Button ID="btnExport" runat="server"
                        Text="Export Feedback"
                        CssClass="feedback-btn export-btn"
                        CausesValidation="false"
                        OnClick="btnExport_Click" />
                </div>

                <div class="feedback-table-wrapper">
                    <asp:GridView ID="gvFeedback" runat="server"
                        AutoGenerateColumns="False"
                        CssClass="table table-bordered table-hover feedback-grid"
                        GridLines="None"
                        OnRowCommand="gvFeedback_RowCommand"
                        EmptyDataText="No feedback found.">

                        <Columns>
                            <asp:TemplateField HeaderText="ID">
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

                            <asp:TemplateField HeaderText="Course">
                                <ItemTemplate>
                                    <asp:Label ID="lblCourseName" runat="server"
                                        Text='<%# Eval("CourseName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Rating">
                                <ItemTemplate>
                                    <asp:Label ID="lblRating" runat="server"
                                        CssClass="rating"
                                        Text='<%# Eval("Rating") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Feedback">
                                <ItemTemplate>
                                    <asp:Label ID="lblFeedback" runat="server"
                                        Text='<%# Eval("Feedback") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Action">
                                <ItemTemplate>
                                    <asp:LinkButton ID="btnView" runat="server"
                                        Text="View"
                                        CommandName="cmd_view"
                                        CommandArgument='<%# Eval("ID") %>'
                                        CausesValidation="false"
                                        CssClass="btn btn-primary btn-sm"></asp:LinkButton>

                                    <asp:LinkButton ID="btnDelete" runat="server"
                                        Text="Delete"
                                        CommandName="cmd_delete"
                                        CommandArgument='<%# Eval("ID") %>'
                                        CausesValidation="false"
                                        CssClass="btn btn-danger btn-sm"
                                        OnClientClick="return confirm('Are you sure you want to delete this feedback?');"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>

                <asp:Label ID="lblMessage" runat="server"
                    CssClass="feedback-message"></asp:Label>
            </div>

            <!-- Feedback Statistics and Quick Actions -->
            <div class="row">
                <div class="col-md-6">
                    <div class="feedback-stat">
                        <h3>Feedback Statistics</h3>

                        <p>
                            <strong>Total Feedback:</strong>
                            <asp:Label ID="lblTotalFeedback" runat="server" Text="0"></asp:Label>
                        </p>

                        <p>
                            <strong>Average Rating:</strong>
                            <asp:Label ID="lblAverageRating" runat="server" Text="0"></asp:Label>
                            / 5
                        </p>

                        <p>
                            <strong>5 Star Reviews:</strong>
                            <asp:Label ID="lblFiveStar" runat="server" Text="0"></asp:Label>
                        </p>

                        <p>
                            <strong>4 Star Reviews:</strong>
                            <asp:Label ID="lblFourStar" runat="server" Text="0"></asp:Label>
                        </p>

                        <p>
                            <strong>3 Star Reviews:</strong>
                            <asp:Label ID="lblThreeStar" runat="server" Text="0"></asp:Label>
                        </p>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="feedback-actions">
                        <h3>Quick Actions</h3>

                        <asp:Button ID="btnManageUsers" runat="server"
                            Text="Manage Users"
                            CssClass="btn quick-users"
                            CausesValidation="false"
                            PostBackUrl="~/ManageUsers.aspx" />

                        <asp:Button ID="btnManageCourses" runat="server"
                            Text="Manage Courses"
                            CssClass="btn quick-courses"
                            CausesValidation="false"
                            PostBackUrl="~/ManageCourses.aspx" />

                        <asp:Button ID="btnManageEnrollments" runat="server"
                            Text="Manage Enrollments"
                            CssClass="btn quick-enrollments"
                            CausesValidation="false"
                            PostBackUrl="~/ManageEnrollments.aspx" />

                        <asp:Button ID="btnDashboard" runat="server"
                            Text="Go to Dashboard"
                            CssClass="btn quick-dashboard"
                            CausesValidation="false"
                            PostBackUrl="~/Dashboard.aspx" />
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
