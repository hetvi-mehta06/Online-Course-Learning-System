<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageEnrollments.aspx.cs" Inherits="OnlineCourse.ManageEnrollments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>
    .manage-enrollment-page {
        width: 100%; min-height: 100vh; padding: 100px 0 80px;
        background: radial-gradient(circle at 8% 15%, rgba(124,58,237,.22), transparent 30%),
                    radial-gradient(circle at 92% 20%, rgba(6,182,212,.16), transparent 28%),
                    linear-gradient(135deg,#09051a 0%,#12082b 48%,#080b20 100%);
        position: relative; overflow: hidden; box-sizing: border-box;
    }

    .manage-enrollment-page *, .manage-enrollment-page *::before, .manage-enrollment-page *::after { box-sizing: border-box; }
    .manage-enrollment-page::before, .manage-enrollment-page::after {
        content: ""; position: absolute; border-radius: 50%; filter: blur(75px); pointer-events: none; z-index: 0;
    }
    .manage-enrollment-page::before { width: 280px; height: 280px; background: #7c3aed; top: 90px; left: -120px; opacity: .28; }
    .manage-enrollment-page::after { width: 260px; height: 260px; background: #06b6d4; right: -110px; bottom: 100px; opacity: .24; }
    .enrollment-inner { width: 100%; max-width: 1140px; margin: 0 auto; padding: 0 15px; position: relative; z-index: 2; }
    .enrollment-hero, .enrollment-card {
        width: 100%; margin-bottom: 30px; padding: 30px; border-radius: 25px;
        background: rgba(255,255,255,.065); border: 1px solid rgba(255,255,255,.13);
        backdrop-filter: blur(20px); -webkit-backdrop-filter: blur(20px);
        box-shadow: 0 25px 70px rgba(0,0,0,.35), inset 0 1px 0 rgba(255,255,255,.07);
    }
    .enrollment-hero { padding: 32px 35px; background: rgba(255,255,255,.07); border-color: rgba(255,255,255,.14); }
    .enrollment-hero-content { display: flex; align-items: center; justify-content: space-between; gap: 25px; width: 100%; }
    .enrollment-hero-left { display: flex; align-items: center; gap: 20px; min-width: 0; }
    .enrollment-hero-icon { width: 70px; height: 70px; flex-shrink: 0; border-radius: 20px; display: flex; align-items: center; justify-content: center; color: #fff; font-size: 30px; background: linear-gradient(135deg,#7c3aed,#06b6d4); box-shadow: 0 12px 30px rgba(124,58,237,.4),0 0 25px rgba(6,182,212,.18); }
    .enrollment-hero-text h1 { margin: 0 0 7px; color: #fff; font-size: 34px; line-height: 1.2; font-weight: 800; }
    .enrollment-hero-text p { margin: 0; color: #aeb7d4; font-size: 14px; line-height: 1.6; }
    .enrollment-admin-badge { flex-shrink: 0; padding: 10px 17px; border-radius: 30px; color: #67e8f9; background: rgba(6,182,212,.09); border: 1px solid rgba(103,232,249,.25); font-size: 13px; font-weight: 700; letter-spacing: .4px; white-space: nowrap; }
    .enrollment-title, .section-heading { margin: 0 0 22px; color: #fff; font-size: 23px; line-height: 1.4; font-weight: 750; }
    .enrollment-card > .row { row-gap: 8px; }
    .enrollment-card label { display: block; margin-bottom: 8px; color: #cbd5e1; font-weight: 600; }
    .form-control-custom { display: block; width: 100%; min-height: 45px; margin-bottom: 20px; padding: 10px 13px; color: #fff; background: rgba(8,11,32,.75); border: 1px solid rgba(255,255,255,.15); border-radius: 10px; outline: none; }
    .form-control-custom:focus { color: #fff; background: rgba(8,11,32,.9); border-color: #8b5cf6; box-shadow: 0 0 0 3px rgba(124,58,237,.15); }
    .form-control-custom option { color: #111827; background: #fff; }
    .enrollment-card > .btn, .enrollment-card .btn { margin: 5px 5px 5px 0; border-radius: 10px; padding: 10px 16px; font-weight: 700; }
    .message-label { display: block; margin-top: 15px; color: #67e8f9; }
    .table-responsive-custom { width: 100%; overflow-x: auto; }
    .enrollment-grid { width: 100%; min-width: 950px; margin-bottom: 0; border-collapse: separate !important; border-spacing: 0 10px !important; color: #e7eaff; border: none !important; }
    .enrollment-grid th { padding: 16px 13px !important; color: #c4b5fd !important; background: rgba(124,58,237,.18) !important; border: none !important; font-size: 12px; text-transform: uppercase; letter-spacing: .6px; font-weight: 750; white-space: nowrap; }
    .enrollment-grid th:first-child { border-radius: 12px 0 0 12px; }
    .enrollment-grid th:last-child { border-radius: 0 12px 12px 0; }
    .enrollment-grid td { padding: 16px 13px !important; color: #d9def1 !important; background: rgba(255,255,255,.045) !important; border-top: 1px solid rgba(255,255,255,.05) !important; border-bottom: 1px solid rgba(255,255,255,.05) !important; vertical-align: middle !important; font-size: 13px; }
    .enrollment-grid td:first-child { border-left: 1px solid rgba(255,255,255,.05) !important; border-radius: 12px 0 0 12px; color: #67e8f9 !important; font-weight: 800; }
    .enrollment-grid td:last-child { border-right: 1px solid rgba(255,255,255,.05) !important; border-radius: 0 12px 12px 0; }
    .enrollment-grid tr:hover td { background: rgba(124,58,237,.10) !important; border-color: rgba(124,58,237,.18) !important; }
    .action-btn { margin: 2px !important; padding: 7px 12px !important; border-radius: 8px !important; font-size: 11px !important; font-weight: 750 !important; white-space: nowrap; }
    .stat-box { padding: 15px; margin-bottom: 12px; border-radius: 12px; color: #aeb7d4; background: rgba(255,255,255,.045); border: 1px solid rgba(255,255,255,.06); }
    .stat-box strong { display: block; margin-bottom: 5px; color: #c4b5fd; }
    .stat-box p { color: #aeb7d4; }
    .btn-block { display: block; width: 100%; }
    .enrollment-card .btn-info { color: #67e8f9; background: rgba(6,182,212,.12); border-color: rgba(6,182,212,.25); }
    .enrollment-card .btn-warning { color: #fcd34d; background: rgba(245,158,11,.11); border-color: rgba(245,158,11,.24); }
    .enrollment-card .btn-danger { color: #fda4af; background: rgba(244,63,94,.10); border-color: rgba(244,63,94,.23); }
    .enrollment-card .btn-primary { background: linear-gradient(135deg,#7c3aed,#2563eb); border: none; }
    .enrollment-card .btn-success { background: linear-gradient(135deg,#059669,#10b981); border: none; }
    .enrollment-card .btn:hover { transform: translateY(-2px); }
    @media (max-width: 992px) { .manage-enrollment-page { padding-top: 90px; } .enrollment-hero-text h1 { font-size: 30px; } .enrollment-card { padding: 24px; } }
    @media (max-width: 768px) {
        .manage-enrollment-page { padding-top: 80px; padding-bottom: 50px; }
        .enrollment-inner { padding: 0 12px; }
        .enrollment-hero { padding: 25px 20px; }
        .enrollment-hero-content { align-items: flex-start; flex-direction: column; }
        .enrollment-hero-left { width: 100%; }
        .enrollment-hero-text h1 { font-size: 27px; }
        .enrollment-hero-icon { width: 58px; height: 58px; font-size: 25px; }
        .enrollment-admin-badge { align-self: flex-start; }
        .enrollment-card { padding: 18px; }
        .enrollment-grid { min-width: 950px; }
    }
    @media (max-width: 480px) {
        .manage-enrollment-page { padding-top: 70px; }
        .enrollment-hero-text h1 { font-size: 23px; }
        .enrollment-hero-text p { font-size: 12px; }
        .enrollment-admin-badge { font-size: 11px; padding: 8px 13px; }
        .enrollment-card { padding: 14px; }
    }
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="manage-enrollment-page">
        <div class="enrollment-inner">

            <!-- Hero -->
            <div class="enrollment-hero">
                <div class="enrollment-hero-content">
                    <div class="enrollment-hero-left">
                        <div class="enrollment-hero-icon"><i class="fa fa-users"></i></div>
                        <div class="enrollment-hero-text">
                            <h1>Manage Enrollments</h1>
                            <p>Monitor students, course progress and certificates from one place</p>
                        </div>
                    </div>
                    <div class="enrollment-admin-badge"><i class="fa fa-shield"></i>&nbsp; ADMIN PANEL</div>
                </div>
            </div>

            <section class="enrollment-section">
                <div class="container">

                    <!-- Enrollment Form -->
                    <div class="enrollment-card">
                        <h3 class="enrollment-title">Add Enrollment</h3>
                        <div class="row">
                            <div class="col-md-6">
                                <asp:Label ID="lblStudentName" runat="server" Text="Student Name"></asp:Label>
                                <asp:TextBox ID="txtStudentName" runat="server" CssClass="form-control-custom" placeholder="Enter student name"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <asp:Label ID="lblCourseName" runat="server" Text="Course Name"></asp:Label>
                                <asp:TextBox ID="txtCourseName" runat="server" CssClass="form-control-custom" placeholder="Enter course name"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <asp:Label ID="lblEnrollDate" runat="server" Text="Enrollment Date"></asp:Label>
                                <asp:TextBox ID="txtEnrollDate" runat="server" TextMode="Date" CssClass="form-control-custom"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <asp:Label ID="lblProgress" runat="server" Text="Progress (%)"></asp:Label>
                                <asp:TextBox ID="txtProgress" runat="server" TextMode="Number" CssClass="form-control-custom" placeholder="Enter progress"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <asp:Label ID="lblCertificate" runat="server" Text="Certificate Status"></asp:Label>
                                <asp:DropDownList ID="ddlCertificate" runat="server" CssClass="form-control-custom">
                                    <asp:ListItem Text="Pending" Value="Pending"></asp:ListItem>
                                    <asp:ListItem Text="Generated" Value="Generated"></asp:ListItem>
                                    <asp:ListItem Text="Not Eligible" Value="Not Eligible"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>

                        <asp:Button ID="btnSave" runat="server" Text="Save Enrollment" CssClass="btn btn-success" CausesValidation="false" OnClick="btnSave_Click" />
                        <asp:Button ID="btnUpdate" runat="server" Text="Update Enrollment" CssClass="btn btn-primary" CausesValidation="false" OnClick="btnUpdate_Click" />
                        <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-secondary" CausesValidation="false" OnClick="btnClear_Click" />
                        <asp:Label ID="lblMessage" runat="server" CssClass="message-label"></asp:Label>
                    </div>

                    <!-- Enrollment GridView -->
                    <div class="enrollment-card">
                        <div class="d-flex justify-content-between align-items-center mb-4">
                            <h3 class="enrollment-title mb-0">Student Enrollments</h3>
                            <asp:Button ID="btnViewAll" runat="server" Text="Refresh Enrollments" CssClass="btn btn-primary" CausesValidation="false" OnClick="btnViewAll_Click" />
                        </div>
                        <div class="table-responsive-custom">
                            <asp:GridView ID="gvEnrollments" runat="server" AutoGenerateColumns="False" CssClass="enrollment-grid" GridLines="None" OnRowCommand="gvEnrollments_RowCommand" EmptyDataText="No enrollments found.">
                                <Columns>
                                    <asp:TemplateField HeaderText="ID"><ItemTemplate><%# Eval("ID") %></ItemTemplate></asp:TemplateField>
                                    <asp:TemplateField HeaderText="Student Name"><ItemTemplate><%# Eval("StudentName") %></ItemTemplate></asp:TemplateField>
                                    <asp:TemplateField HeaderText="Course"><ItemTemplate><%# Eval("CourseName") %></ItemTemplate></asp:TemplateField>
                                    <asp:TemplateField HeaderText="Enroll Date"><ItemTemplate><%# Eval("EnrollDate", "{0:dd-MMM-yyyy}") %></ItemTemplate></asp:TemplateField>
                                    <asp:TemplateField HeaderText="Progress"><ItemTemplate><%# Eval("Progress") %>%</ItemTemplate></asp:TemplateField>
                                    <asp:TemplateField HeaderText="Certificate">
                                        <ItemTemplate>
                                            <asp:Label ID="lblCertificateStatus" runat="server" Text='<%# Eval("CertificateStatus") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Action">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="btnEdit" runat="server" Text="Edit" CommandName="cmd_edit" CommandArgument='<%# Eval("ID") %>' CssClass="btn btn-primary btn-sm action-btn" CausesValidation="false"></asp:LinkButton>
                                            <asp:LinkButton ID="btnView" runat="server" Text="View" CommandName="cmd_view" CommandArgument='<%# Eval("ID") %>' CssClass="btn btn-info btn-sm action-btn" CausesValidation="false"></asp:LinkButton>
                                            <asp:LinkButton ID="btnDelete" runat="server" Text="Delete" CommandName="cmd_delete" CommandArgument='<%# Eval("ID") %>' CssClass="btn btn-danger btn-sm action-btn" CausesValidation="false"></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>

                    <!-- Enrollment Statistics and Quick Actions -->
                    <div class="row">
                        <div class="col-md-6">
                            <div class="enrollment-card">
                                <h3 class="section-heading">Enrollment Statistics</h3>
                                <div class="stat-box"><strong>Total Enrollments</strong><p class="mb-0">View all registered enrollments.</p></div>
                                <div class="stat-box"><strong>Completed Courses</strong><p class="mb-0">Students who completed their courses.</p></div>
                                <div class="stat-box"><strong>In Progress</strong><p class="mb-0">Students currently learning.</p></div>
                                <div class="stat-box"><strong>Certificates Generated</strong><p class="mb-0">Eligible students with certificates.</p></div>
                                <asp:Button ID="btnStatistics" runat="server" Text="View All Enrollments" CssClass="btn btn-primary btn-block" CausesValidation="false" OnClick="btnViewAll_Click" />
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="enrollment-card">
                                <h3 class="section-heading">Quick Actions</h3>
                                <asp:HyperLink ID="lnkManageUsers" runat="server" NavigateUrl="~/ManageUsers.aspx" Text="Manage Users" CssClass="btn btn-info btn-block mb-3"></asp:HyperLink>
                                <asp:HyperLink ID="lnkManageCourses" runat="server" NavigateUrl="~/ManageCourses.aspx" Text="Manage Courses" CssClass="btn btn-warning btn-block mb-3"></asp:HyperLink>
                                <asp:HyperLink ID="lnkManageFeedback" runat="server" NavigateUrl="~/ManageFeedback.aspx" Text="View Feedback" CssClass="btn btn-danger btn-block mb-3"></asp:HyperLink>
                            </div>
                        </div>
                    </div>

                </div>
            </section>
        </div>
    </div>
</asp:Content>


<style>

    /* =========================================================
       MANAGE ENROLLMENTS PAGE
       ========================================================= */

    .manage-enrollment-page {
        width: 100%;
        min-height: 100vh;

        /*
           Extra top spacing added so content does not
           overlap with Admin Master navbar.
        */
        padding-top: 100px;
        padding-bottom: 80px;

        background:
            radial-gradient(circle at 8% 15%, rgba(124,58,237,.22), transparent 30%),
            radial-gradient(circle at 92% 20%, rgba(6,182,212,.16), transparent 28%),
            linear-gradient(135deg,#09051a 0%,#12082b 48%,#080b20 100%);

        position: relative;
        overflow: hidden;

        box-sizing: border-box;
    }

    .manage-enrollment-page *,
    .manage-enrollment-page *::before,
    .manage-enrollment-page *::after {
        box-sizing: border-box;
    }


    /* =========================================================
       BACKGROUND GLOW
       ========================================================= */

    .manage-enrollment-page::before,
    .manage-enrollment-page::after {
        content: "";
        position: absolute;
        border-radius: 50%;
        filter: blur(75px);
        pointer-events: none;
        z-index: 0;
    }

    .manage-enrollment-page::before {
        width: 280px;
        height: 280px;
        background: #7c3aed;
        top: 90px;
        left: -120px;
        opacity: .28;
    }

    .manage-enrollment-page::after {
        width: 260px;
        height: 260px;
        background: #06b6d4;
        right: -110px;
        bottom: 100px;
        opacity: .24;
    }


    /* =========================================================
       INNER CONTAINER
       ========================================================= */

    .enrollment-inner {
        width: 100%;
        max-width: 1140px;

        margin-left: auto;
        margin-right: auto;

        padding-left: 15px;
        padding-right: 15px;

        position: relative;
        z-index: 2;
    }


    /* =========================================================
       HERO
       ========================================================= */

    .enrollment-hero {
        width: 100%;

        margin-top: 0;
        margin-bottom: 30px;

        padding: 32px 35px;

        border-radius: 25px;

        background: rgba(255,255,255,.07);

        border: 1px solid rgba(255,255,255,.14);

        backdrop-filter: blur(18px);
        -webkit-backdrop-filter: blur(18px);

        box-shadow:
            0 25px 60px rgba(0,0,0,.35),
            inset 0 1px 0 rgba(255,255,255,.08);
    }

    .enrollment-hero-content {
        width: 100%;

        display: flex;
        align-items: center;
        justify-content: space-between;

        gap: 25px;
    }

    .enrollment-hero-left {
        display: flex;
        align-items: center;

        gap: 20px;

        min-width: 0;
    }

    .enrollment-hero-icon {
        width: 70px;
        height: 70px;

        flex-shrink: 0;

        border-radius: 20px;

        display: flex;
        align-items: center;
        justify-content: center;

        color: #fff;

        font-size: 30px;

        background:
            linear-gradient(135deg,#7c3aed,#06b6d4);

        box-shadow:
            0 12px 30px rgba(124,58,237,.4),
            0 0 25px rgba(6,182,212,.18);
    }

    .enrollment-hero-text h1 {
        margin: 0 0 7px;

        color: #fff;

        font-size: 34px;
        line-height: 1.2;
        font-weight: 800;
    }

    .enrollment-hero-text p {
        margin: 0;

        color: #aeb7d4;

        font-size: 14px;
        line-height: 1.6;
    }

    .enrollment-admin-badge {
        flex-shrink: 0;

        padding: 10px 17px;

        border-radius: 30px;

        color: #67e8f9;

        background: rgba(6,182,212,.09);

        border: 1px solid rgba(103,232,249,.25);

        font-size: 13px;
        font-weight: 700;

        letter-spacing: .4px;

        white-space: nowrap;
    }


    /* =========================================================
       MAIN CARD
       ========================================================= */

    .enrollment-main-card {
        width: 100%;

        padding: 30px;

        border-radius: 25px;

        background: rgba(255,255,255,.065);

        border: 1px solid rgba(255,255,255,.13);

        backdrop-filter: blur(20px);
        -webkit-backdrop-filter: blur(20px);

        box-shadow:
            0 25px 70px rgba(0,0,0,.35),
            inset 0 1px 0 rgba(255,255,255,.07);
    }


    /* =========================================================
       SECTION HEADING
       ========================================================= */

    .enrollment-section-heading {
        width: 100%;

        display: flex;
        align-items: center;
        justify-content: space-between;

        gap: 20px;

        margin-bottom: 25px;
    }

    .enrollment-section-heading h3 {
        margin: 0;

        color: #fff;

        font-size: 23px;
        line-height: 1.3;

        font-weight: 750;
    }

    .enrollment-section-heading p {
        margin: 6px 0 0;

        color: #8993b3;

        font-size: 13px;
    }


    /* =========================================================
       ADD ENROLLMENT BUTTON
       ========================================================= */

    .btn-add-enrollment {
        display: inline-block;

        border-radius: 12px !important;

        padding: 11px 20px !important;

        color: #fff !important;

        font-weight: 700 !important;

        text-decoration: none !important;

        background:
            linear-gradient(135deg,#7c3aed,#06b6d4) !important;

        border: none !important;

        box-shadow:
            0 10px 25px rgba(124,58,237,.28);

        transition: all .3s ease;

        white-space: nowrap;
    }

    .btn-add-enrollment:hover {
        color: #fff !important;

        transform: translateY(-2px);

        box-shadow:
            0 15px 35px rgba(124,58,237,.4),
            0 0 20px rgba(6,182,212,.15);
    }


    /* =========================================================
       ENROLLMENT TABLE
       ========================================================= */

    .enrollment-table {
        width: 100%;

        border-collapse: separate;
        border-spacing: 0 10px;

        color: #e7eaff;

        margin-bottom: 0;
    }

    .enrollment-table thead th {
        background:
            rgba(124,58,237,.18);

        color: #c4b5fd;

        border: none;

        padding: 16px 13px;

        font-size: 12px;

        text-transform: uppercase;

        letter-spacing: .6px;

        font-weight: 750;

        white-space: nowrap;
    }

    .enrollment-table thead th:first-child {
        border-radius: 12px 0 0 12px;
    }

    .enrollment-table thead th:last-child {
        border-radius: 0 12px 12px 0;
    }

    .enrollment-table tbody td {
        background:
            rgba(255,255,255,.045);

        color: #d9def1;

        border-top:
            1px solid rgba(255,255,255,.05);

        border-bottom:
            1px solid rgba(255,255,255,.05);

        padding: 16px 13px;

        vertical-align: middle;

        font-size: 13px;
    }

    .enrollment-table tbody td:first-child {
        border-left:
            1px solid rgba(255,255,255,.05);

        border-radius: 12px 0 0 12px;

        color: #67e8f9;

        font-weight: 800;
    }

    .enrollment-table tbody td:last-child {
        border-right:
            1px solid rgba(255,255,255,.05);

        border-radius: 0 12px 12px 0;
    }

    .enrollment-table tbody tr {
        transition: all .25s ease;
    }

    .enrollment-table tbody tr:hover td {
        background:
            rgba(124,58,237,.10);

        border-color:
            rgba(124,58,237,.18);
    }


    /* =========================================================
       PROGRESS
       ========================================================= */

    .progress-wrap {
        min-width: 105px;
    }

    .progress-text {
        display: flex;
        align-items: center;
        justify-content: space-between;

        margin-bottom: 6px;

        color: #67e8f9;

        font-size: 12px;
        font-weight: 800;
    }

    .progress-bar-custom {
        width: 100%;
        height: 7px;

        overflow: hidden;

        border-radius: 20px;

        background:
            rgba(255,255,255,.09);
    }

    .progress-fill-100,
    .progress-fill-90,
    .progress-fill-80,
    .progress-fill-75,
    .progress-fill-65,
    .progress-fill-55,
    .progress-fill-40 {
        height: 100%;
        border-radius: 20px;
    }

    .progress-fill-100 {
        width: 100%;
        background:
            linear-gradient(90deg,#06b6d4,#22c55e);
    }

    .progress-fill-90 {
        width: 90%;
        background:
            linear-gradient(90deg,#06b6d4,#22c55e);
    }

    .progress-fill-80 {
        width: 80%;
        background:
            linear-gradient(90deg,#7c3aed,#06b6d4);
    }

    .progress-fill-75 {
        width: 75%;
        background:
            linear-gradient(90deg,#7c3aed,#06b6d4);
    }

    .progress-fill-65 {
        width: 65%;
        background:
            linear-gradient(90deg,#7c3aed,#06b6d4);
    }

    .progress-fill-55 {
        width: 55%;
        background:
            linear-gradient(90deg,#f59e0b,#fbbf24);
    }

    .progress-fill-40 {
        width: 40%;
        background:
            linear-gradient(90deg,#f43f5e,#f97316);
    }


    /* =========================================================
       CERTIFICATE BADGES
       ========================================================= */

    .certificate-badge {
        display: inline-block;

        padding: 7px 11px;

        border-radius: 20px;

        font-size: 11px;
        font-weight: 750;

        white-space: nowrap;
    }

    .certificate-generated {
        color: #67e8a5;

        background:
            rgba(34,197,94,.11);

        border:
            1px solid rgba(34,197,94,.22);
    }

    .certificate-pending {
        color: #fcd34d;

        background:
            rgba(245,158,11,.11);

        border:
            1px solid rgba(245,158,11,.22);
    }

    .certificate-noteligible {
        color: #cbd5e1;

        background:
            rgba(148,163,184,.10);

        border:
            1px solid rgba(148,163,184,.22);
    }


    /* =========================================================
       ACTION BUTTONS
       ========================================================= */

    .enrollment-view-btn,
    .enrollment-generate-btn {
        display: inline-block;

        border-radius: 8px;

        padding: 7px 12px;

        font-size: 11px;
        font-weight: 750;

        text-decoration: none;

        transition: all .25s ease;

        margin-right: 4px;
    }

    .enrollment-view-btn {
        color: #67e8f9;

        background:
            rgba(6,182,212,.12);

        border:
            1px solid rgba(6,182,212,.24);
    }

    .enrollment-view-btn:hover {
        color: #fff;

        background:
            rgba(6,182,212,.25);

        box-shadow:
            0 0 14px rgba(6,182,212,.15);
    }

    .enrollment-generate-btn {
        color: #67e8a5;

        background:
            rgba(34,197,94,.11);

        border:
            1px solid rgba(34,197,94,.22);
    }

    .enrollment-generate-btn:hover {
        color: #fff;

        background:
            rgba(34,197,94,.23);

        box-shadow:
            0 0 14px rgba(34,197,94,.15);
    }


    /* =========================================================
       BOTTOM CARDS
       ========================================================= */

    .enrollment-bottom-card {
        height: 100%;

        padding: 28px;

        border-radius: 22px;

        background:
            rgba(255,255,255,.06);

        border:
            1px solid rgba(255,255,255,.12);

        backdrop-filter: blur(18px);
        -webkit-backdrop-filter: blur(18px);

        box-shadow:
            0 20px 50px rgba(0,0,0,.25),
            inset 0 1px 0 rgba(255,255,255,.06);
    }

    .enrollment-bottom-card h3 {
        margin: 0 0 22px;

        color: #fff;

        font-size: 20px;
        line-height: 1.4;

        font-weight: 750;
    }


    /* =========================================================
       STATISTICS
       ========================================================= */

    .enrollment-stat {
        display: flex;
        align-items: center;
        justify-content: space-between;

        padding: 13px 15px;

        margin-bottom: 10px;

        border-radius: 12px;

        background:
            rgba(255,255,255,.045);

        border:
            1px solid rgba(255,255,255,.06);
    }

    .enrollment-stat-label {
        color: #aeb7d4;

        font-size: 14px;
    }

    .enrollment-stat-value {
        color: #fff;

        font-size: 15px;

        font-weight: 800;
    }

    .stat-purple {
        color: #c4b5fd;
    }

    .stat-green {
        color: #67e8a5;
    }

    .stat-cyan {
        color: #67e8f9;
    }

    .stat-yellow {
        color: #fcd34d;
    }

    .enrollment-divider {
        height: 1px;

        border: 0;

        margin: 22px 0;

        background:
            linear-gradient(
                90deg,
                transparent,
                rgba(255,255,255,.15),
                transparent
            );
    }


    /* =========================================================
       VIEW ALL BUTTON
       ========================================================= */

    .btn-view-enrollments {
        width: 100%;

        display: block;

        border: none !important;

        border-radius: 12px !important;

        padding: 12px !important;

        color: #fff !important;

        font-weight: 700 !important;

        text-align: center;

        text-decoration: none !important;

        background:
            linear-gradient(135deg,#06b6d4,#2563eb) !important;

        box-shadow:
            0 10px 25px rgba(6,182,212,.18);

        transition: all .3s ease;
    }

    .btn-view-enrollments:hover {
        color: #fff !important;

        transform: translateY(-2px);

        box-shadow:
            0 14px 30px rgba(6,182,212,.28);
    }


    /* =========================================================
       QUICK ACTIONS
       ========================================================= */

    .enrollment-quick-btn {
        width: 100%;

        display: block;

        border-radius: 12px !important;

        padding: 12px 16px !important;

        margin-bottom: 12px;

        border:
            1px solid rgba(255,255,255,.12) !important;

        color: #fff !important;

        font-weight: 700 !important;

        text-align: center;

        text-decoration: none !important;

        transition: all .3s ease;
    }

    .enrollment-quick-btn:hover {
        color: #fff !important;

        transform: translateY(-2px);
    }

    .quick-add-enrollment {
        background:
            linear-gradient(
                135deg,
                rgba(124,58,237,.85),
                rgba(91,33,182,.85)
            ) !important;

        box-shadow:
            0 8px 22px rgba(124,58,237,.2);
    }

    .quick-users {
        background:
            rgba(6,182,212,.12) !important;

        border-color:
            rgba(6,182,212,.25) !important;

        color: #67e8f9 !important;
    }

    .quick-courses {
        background:
            rgba(245,158,11,.11) !important;

        border-color:
            rgba(245,158,11,.24) !important;

        color: #fcd34d !important;
    }

    .quick-certificate {
        background:
            rgba(124,58,237,.11) !important;

        border-color:
            rgba(124,58,237,.24) !important;

        color: #c4b5fd !important;
    }

    .quick-feedback {
        background:
            rgba(244,63,94,.10) !important;

        border-color:
            rgba(244,63,94,.23) !important;

        color: #fda4af !important;

        margin-bottom: 0 !important;
    }

    .quick-users:hover {
        background:
            rgba(6,182,212,.22) !important;
    }

    .quick-courses:hover {
        background:
            rgba(245,158,11,.20) !important;
    }

    .quick-certificate:hover {
        background:
            rgba(124,58,237,.22) !important;
    }

    .quick-feedback:hover {
        background:
            rgba(244,63,94,.19) !important;
    }


    /* =========================================================
       RESPONSIVE
       ========================================================= */

    @media (max-width: 992px) {

        .manage-enrollment-page {
            padding-top: 90px;
        }

        .enrollment-hero-text h1 {
            font-size: 30px;
        }

        .enrollment-main-card {
            padding: 24px;
        }
    }


    @media (max-width: 768px) {

        .manage-enrollment-page {
            padding-top: 80px;
            padding-bottom: 50px;
        }

        .enrollment-inner {
            padding-left: 12px;
            padding-right: 12px;
        }

        .enrollment-hero {
            padding: 25px 20px;
        }

        .enrollment-hero-content {
            align-items: flex-start;
            flex-direction: column;
        }

        .enrollment-hero-left {
            width: 100%;
        }

        .enrollment-hero-text h1 {
            font-size: 27px;
        }

        .enrollment-hero-icon {
            width: 58px;
            height: 58px;

            font-size: 25px;
        }

        .enrollment-admin-badge {
            align-self: flex-start;
        }

        .enrollment-main-card {
            padding: 18px;

            overflow-x: auto;
        }

        .enrollment-section-heading {
            align-items: flex-start;

            flex-direction: column;
        }

        .enrollment-table {
            min-width: 1050px;
        }

        .enrollment-bottom-card {
            margin-bottom: 20px;
        }
    }


    @media (max-width: 480px) {

        .manage-enrollment-page {
            padding-top: 70px;
        }

        .enrollment-hero-left {
            align-items: flex-start;
        }

        .enrollment-hero-text h1 {
            font-size: 23px;
        }

        .enrollment-hero-text p {
            font-size: 12px;
        }

        .enrollment-admin-badge {
            font-size: 11px;
            padding: 8px 13px;
        }

        .enrollment-main-card {
            padding: 14px;
        }

        .enrollment-bottom-card {
            padding: 20px;
        }
    }

</style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="manage-enrollment-page">

    <div class="enrollment-inner">


        <!-- =====================================================
             PREMIUM HERO
             ===================================================== -->

        <div class="enrollment-hero">

            <div class="enrollment-hero-content">

                <div class="enrollment-hero-left">

                    <div class="enrollment-hero-icon">

                        <i class="fa fa-users"></i>

                    </div>


                    <div class="enrollment-hero-text">

                        <h1>Manage Enrollments</h1>

                        <p>
                            Monitor students, course progress and certificates
                            from one place
                        </p>

                    </div>

                </div>


                <div class="enrollment-admin-badge">

                    <i class="fa fa-shield"></i>

                    &nbsp; ADMIN PANEL

                </div>

            </div>

        </div>


        <!-- =====================================================
             ENROLLMENT TABLE
             ===================================================== -->

        <div class="enrollment-main-card">

            <div class="enrollment-section-heading">

                <div>

                    <h3>

                        <i class="fa fa-graduation-cap"
                           style="color:#67e8f9;"></i>

                        &nbsp;Student Enrollments

                    </h3>

                    <p>
                        Track student enrollment, progress and certificates
                    </p>

                </div>


                <a href="#"
                   class="btn-add-enrollment">

                    ＋ Add Enrollment

                </a>

            </div>


            <div style="width:100%; overflow-x:auto;">

                <table class="enrollment-table">

                    <thead>

                        <tr>

                            <th>ID</th>

                            <th>Student Name</th>

                            <th>Course</th>

                            <th>Enroll Date</th>

                            <th>Progress</th>

                            <th>Certificate</th>

                            <th>Action</th>

                        </tr>

                    </thead>


                    <tbody>


                        <!-- ROW 1 -->

                        <tr>

                            <td>1</td>

                            <td>Rahul Patel</td>

                            <td>HTML &amp; CSS</td>

                            <td>10-Jul-2026</td>

                            <td>

                                <div class="progress-wrap">

                                    <div class="progress-text">

                                        <span>100%</span>

                                    </div>

                                    <div class="progress-bar-custom">

                                        <div class="progress-fill-100"></div>

                                    </div>

                                </div>

                            </td>

                            <td>

                                <span class="certificate-badge certificate-generated">

                                    Generated

                                </span>

                            </td>

                            <td>

                                <a href="#"
                                   class="enrollment-view-btn">

                                    View

                                </a>

                                <a href="#"
                                   class="enrollment-generate-btn">

                                    Generate

                                </a>

                            </td>

                        </tr>


                        <!-- ROW 2 -->

                        <tr>

                            <td>2</td>

                            <td>Priya Shah</td>

                            <td>ASP.NET Web Forms</td>

                            <td>12-Jul-2026</td>

                            <td>

                                <div class="progress-wrap">

                                    <div class="progress-text">

                                        <span>80%</span>

                                    </div>

                                    <div class="progress-bar-custom">

                                        <div class="progress-fill-80"></div>

                                    </div>

                                </div>

                            </td>

                            <td>

                                <span class="certificate-badge certificate-pending">

                                    Pending

                                </span>

                            </td>

                            <td>

                                <a href="#"
                                   class="enrollment-view-btn">

                                    View

                                </a>

                                <a href="#"
                                   class="enrollment-generate-btn">

                                    Generate

                                </a>

                            </td>

                        </tr>


                        <!-- ROW 3 -->

                        <tr>

                            <td>3</td>

                            <td>Meet Joshi</td>

                            <td>Python Programming</td>

                            <td>15-Jul-2026</td>

                            <td>

                                <div class="progress-wrap">

                                    <div class="progress-text">

                                        <span>65%</span>

                                    </div>

                                    <div class="progress-bar-custom">

                                        <div class="progress-fill-65"></div>

                                    </div>

                                </div>

                            </td>

                            <td>

                                <span class="certificate-badge certificate-pending">

                                    Pending

                                </span>

                            </td>

                            <td>

                                <a href="#"
                                   class="enrollment-view-btn">

                                    View

                                </a>

                                <a href="#"
                                   class="enrollment-generate-btn">

                                    Generate

                                </a>

                            </td>

                        </tr>


                        <!-- ROW 4 -->

                        <tr>

                            <td>4</td>

                            <td>Riya Mehta</td>

                            <td>Java Programming</td>

                            <td>18-Jul-2026</td>

                            <td>

                                <div class="progress-wrap">

                                    <div class="progress-text">

                                        <span>90%</span>

                                    </div>

                                    <div class="progress-bar-custom">

                                        <div class="progress-fill-90"></div>

                                    </div>

                                </div>

                            </td>

                            <td>

                                <span class="certificate-badge certificate-pending">

                                    Pending

                                </span>

                            </td>

                            <td>

                                <a href="#"
                                   class="enrollment-view-btn">

                                    View

                                </a>

                                <a href="#"
                                   class="enrollment-generate-btn">

                                    Generate

                                </a>

                            </td>

                        </tr>


                        <!-- ROW 5 -->

                        <tr>

                            <td>5</td>

                            <td>Dhruv Patel</td>

                            <td>JavaScript</td>

                            <td>20-Jul-2026</td>

                            <td>

                                <div class="progress-wrap">

                                    <div class="progress-text">

                                        <span>100%</span>

                                    </div>

                                    <div class="progress-bar-custom">

                                        <div class="progress-fill-100"></div>

                                    </div>

                                </div>

                            </td>

                            <td>

                                <span class="certificate-badge certificate-generated">

                                    Generated

                                </span>

                            </td>

                            <td>

                                <a href="#"
                                   class="enrollment-view-btn">

                                    View

                                </a>

                                <a href="#"
                                   class="enrollment-generate-btn">

                                    Generate

                                </a>

                            </td>

                        </tr>


                        <!-- ROW 6 -->

                        <tr>

                            <td>6</td>

                            <td>Neha Shah</td>

                            <td>Database Management</td>

                            <td>21-Jul-2026</td>

                            <td>

                                <div class="progress-wrap">

                                    <div class="progress-text">

                                        <span>75%</span>

                                    </div>

                                    <div class="progress-bar-custom">

                                        <div class="progress-fill-75"></div>

                                    </div>

                                </div>

                            </td>

                            <td>

                                <span class="certificate-badge certificate-pending">

                                    Pending

                                </span>

                            </td>

                            <td>

                                <a href="#"
                                   class="enrollment-view-btn">

                                    View

                                </a>

                                <a href="#"
                                   class="enrollment-generate-btn">

                                    Generate

                                </a>

                            </td>

                        </tr>


                        <!-- ROW 7 -->

                        <tr>

                            <td>7</td>

                            <td>Amit Patel</td>

                            <td>Cyber Security</td>

                            <td>22-Jul-2026</td>

                            <td>

                                <div class="progress-wrap">

                                    <div class="progress-text">

                                        <span>40%</span>

                                    </div>

                                    <div class="progress-bar-custom">

                                        <div class="progress-fill-40"></div>

                                    </div>

                                </div>

                            </td>

                            <td>

                                <span class="certificate-badge certificate-noteligible">

                                    Not Eligible

                                </span>

                            </td>

                            <td>

                                <a href="#"
                                   class="enrollment-view-btn">

                                    View

                                </a>

                                <a href="#"
                                   class="enrollment-generate-btn">

                                    Generate

                                </a>

                            </td>

                        </tr>


                        <!-- ROW 8 -->

                        <tr>

                            <td>8</td>

                            <td>Krishna Joshi</td>

                            <td>Artificial Intelligence</td>

                            <td>24-Jul-2026</td>

                            <td>

                                <div class="progress-wrap">

                                    <div class="progress-text">

                                        <span>100%</span>

                                    </div>

                                    <div class="progress-bar-custom">

                                        <div class="progress-fill-100"></div>

                                    </div>

                                </div>

                            </td>

                            <td>

                                <span class="certificate-badge certificate-generated">

                                    Generated

                                </span>

                            </td>

                            <td>

                                <a href="#"
                                   class="enrollment-view-btn">

                                    View

                                </a>

                                <a href="#"
                                   class="enrollment-generate-btn">

                                    Generate

                                </a>

                            </td>

                        </tr>


                        <!-- ROW 9 -->

                        <tr>

                            <td>9</td>

                            <td>Pooja Patel</td>

                            <td>Data Science</td>

                            <td>25-Jul-2026</td>

                            <td>

                                <div class="progress-wrap">

                                    <div class="progress-text">

                                        <span>55%</span>

                                    </div>

                                    <div class="progress-bar-custom">

                                        <div class="progress-fill-55"></div>

                                    </div>

                                </div>

                            </td>

                            <td>

                                <span class="certificate-badge certificate-pending">

                                    Pending

                                </span>

                            </td>

                            <td>

                                <a href="#"
                                   class="enrollment-view-btn">

                                    View

                                </a>

                                <a href="#"
                                   class="enrollment-generate-btn">

                                    Generate

                                </a>

                            </td>

                        </tr>


                    </tbody>

                </table>

            </div>

        </div>


        <!-- =====================================================
             BOTTOM SECTION
             ===================================================== -->

        <div class="row mt-4">


            <!-- ENROLLMENT STATISTICS -->

            <div class="col-md-6 mb-4">

                <div class="enrollment-bottom-card">

                    <h3>

                        <i class="fa fa-bar-chart"
                           style="color:#67e8f9;"></i>

                        &nbsp;Enrollment Statistics

                    </h3>


                    <div class="enrollment-stat">

                        <span class="enrollment-stat-label">

                            Total Enrollments

                        </span>

                        <span class="enrollment-stat-value stat-purple">

                            250

                        </span>

                    </div>


                    <div class="enrollment-stat">

                        <span class="enrollment-stat-label">

                            Completed Courses

                        </span>

                        <span class="enrollment-stat-value stat-green">

                            120

                        </span>

                    </div>


                    <div class="enrollment-stat">

                        <span class="enrollment-stat-label">

                            In Progress

                        </span>

                        <span class="enrollment-stat-value stat-cyan">

                            95

                        </span>

                    </div>


                    <div class="enrollment-stat">

                        <span class="enrollment-stat-label">

                            Pending

                        </span>

                        <span class="enrollment-stat-value stat-yellow">

                            35

                        </span>

                    </div>


                    <div class="enrollment-stat">

                        <span class="enrollment-stat-label">

                            Certificates Generated

                        </span>

                        <span class="enrollment-stat-value stat-green">

                            120

                        </span>

                    </div>


                    <hr class="enrollment-divider" />


                    <a href="#"
                       class="btn-view-enrollments">

                        View All Enrollments

                    </a>

                </div>

            </div>


            <!-- QUICK ACTIONS -->

            <div class="col-md-6 mb-4">

                <div class="enrollment-bottom-card">

                    <h3>

                        <i class="fa fa-bolt"
                           style="color:#fcd34d;"></i>

                        &nbsp;Quick Actions

                    </h3>


                    <a href="#"
                       class="enrollment-quick-btn quick-add-enrollment">

                        ＋ Add Enrollment

                    </a>


                    <a href="ManageUsers.aspx"
                       class="enrollment-quick-btn quick-users">

                        <i class="fa fa-users"></i>

                        &nbsp; Manage Users

                    </a>


                    <a href="ManageCourses.aspx"
                       class="enrollment-quick-btn quick-courses">

                        <i class="fa fa-book"></i>

                        &nbsp; Manage Courses

                    </a>


                    <a href="Certificate.aspx"
                       class="enrollment-quick-btn quick-certificate">

                        <i class="fa fa-certificate"></i>

                        &nbsp; Generate Certificates

                    </a>


                    <a href="ManageFeedback.aspx"
                       class="enrollment-quick-btn quick-feedback">

                        <i class="fa fa-comments"></i>

                        &nbsp; View Feedback

                    </a>

                </div>

            </div>

        </div>


    </div>

</div>

</asp:Content>

