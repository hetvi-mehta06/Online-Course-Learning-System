<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="OnlineCourse.ManageUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>

    /* =========================================
       MAIN PAGE
    ========================================= */

    .manage-users-page {
        min-height: 100vh;
        padding-top: 100px;
        padding-bottom: 80px;
        position: relative;
        overflow: hidden;

        background:
            radial-gradient(circle at 10% 15%, rgba(124, 58, 237, .22), transparent 30%),
            radial-gradient(circle at 90% 20%, rgba(37, 99, 235, .20), transparent 30%),
            radial-gradient(circle at 50% 90%, rgba(168, 85, 247, .14), transparent 35%),
            #080b1c;
    }

    /* =========================================
       BACKGROUND ORBS
    ========================================= */

    .user-orb {
        position: absolute;
        border-radius: 50%;
        filter: blur(80px);
        opacity: .35;
        pointer-events: none;
        animation: userFloat 9s ease-in-out infinite alternate;
    }

    .user-orb.one {
        width: 260px;
        height: 260px;
        background: #7c3aed;
        top: 120px;
        left: -110px;
    }

    .user-orb.two {
        width: 300px;
        height: 300px;
        background: #2563eb;
        top: 320px;
        right: -120px;
        animation-delay: 2s;
    }

    .user-orb.three {
        width: 230px;
        height: 230px;
        background: #9333ea;
        bottom: 40px;
        left: 42%;
        animation-delay: 4s;
    }

    @keyframes userFloat {

        from {
            transform: translate3d(0, 0, 0) scale(1);
        }

        to {
            transform: translate3d(30px, -35px, 0) scale(1.12);
        }

    }

    /* =========================================
       HERO
    ========================================= */

    .users-hero {
        position: relative;
        z-index: 2;

        max-width: 1250px;
        margin: 0 auto 35px;
        padding: 45px 35px;

        text-align: center;

        border-radius: 28px;

        background: rgba(17, 24, 50, .72);
        border: 1px solid rgba(139, 92, 246, .30);

        backdrop-filter: blur(20px);
        -webkit-backdrop-filter: blur(20px);

        box-shadow:
            0 25px 70px rgba(0, 0, 0, .45),
            inset 0 1px 0 rgba(255, 255, 255, .08);

        overflow: hidden;
    }

    .users-hero::before {
        content: "";

        position: absolute;
        inset: 0;

        background:
            linear-gradient(
                120deg,
                transparent 20%,
                rgba(139, 92, 246, .12),
                transparent 80%
            );

        pointer-events: none;
    }

    .users-hero h1 {
        position: relative;
        z-index: 1;

        margin: 0;

        font-size: 44px;
        font-weight: 800;
        letter-spacing: -.8px;

        background:
            linear-gradient(
                90deg,
                #ffffff,
                #c4b5fd,
                #60a5fa
            );

        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
    }

    .users-hero p {
        position: relative;
        z-index: 1;

        margin: 12px 0 0;

        color: #aeb9d6;
        font-size: 16px;
    }

    /* =========================================
       MAIN CONTAINER
    ========================================= */

    .users-container {
        position: relative;
        z-index: 2;

        max-width: 1250px;
        margin: auto;
    }

    /* =========================================
       GLASS PANEL
    ========================================= */

    .users-panel {
        position: relative;

        padding: 30px;

        border-radius: 26px;

        background: rgba(17, 24, 50, .72);

        border: 1px solid rgba(139, 92, 246, .25);

        backdrop-filter: blur(22px);
        -webkit-backdrop-filter: blur(22px);

        box-shadow:
            0 25px 65px rgba(0, 0, 0, .40),
            inset 0 1px 0 rgba(255, 255, 255, .06);

        overflow: hidden;
    }

    .users-panel::before {
        content: "";

        position: absolute;
        top: 0;
        left: 10%;
        right: 10%;

        height: 1px;

        background:
            linear-gradient(
                90deg,
                transparent,
                rgba(139, 92, 246, .8),
                rgba(59, 130, 246, .8),
                transparent
            );
    }

    /* =========================================
       HEADER
    ========================================= */

    .users-header {
        display: flex;
        align-items: center;
        justify-content: space-between;

        gap: 20px;

        margin-bottom: 25px;
    }

    .users-title {
        margin: 0;

        color: #ffffff;

        font-size: 27px;
        font-weight: 750;
    }

    .users-subtitle {
        margin: 5px 0 0;

        color: #8f9bb8;

        font-size: 14px;
    }

    /* =========================================
       ADD USER BUTTON
    ========================================= */

    .add-user-btn {
        padding: 12px 22px;

        border: none !important;
        border-radius: 12px !important;

        color: #ffffff !important;

        font-weight: 700;

        background:
            linear-gradient(
                135deg,
                #7c3aed,
                #2563eb
            ) !important;

        box-shadow:
            0 10px 25px rgba(37, 99, 235, .25);

        transition: all .3s ease;
    }

    .add-user-btn:hover {
        transform: translateY(-4px);

        color: #ffffff !important;

        box-shadow:
            0 18px 35px rgba(124, 58, 237, .35);
    }

    /* =========================================
       TABLE WRAPPER
    ========================================= */

    .users-table-wrapper {
        width: 100%;

        overflow-x: auto;

        border-radius: 18px;

        border: 1px solid rgba(139, 92, 246, .18);
    }

    /* =========================================
       GRIDVIEW TABLE
    ========================================= */

    .users-grid {
        width: 100%;
        min-width: 850px;

        margin: 0;

        border-collapse: separate;
        border-spacing: 0;

        color: #dbe4ff;

        background: rgba(7, 12, 30, .55);
    }

    .users-grid th {
        padding: 17px 15px !important;

        color: #ffffff !important;

        font-size: 13px;
        font-weight: 700;

        text-transform: uppercase;
        letter-spacing: .6px;

        border: none !important;

        background:
            linear-gradient(
                135deg,
                rgba(124, 58, 237, .88),
                rgba(37, 99, 235, .88)
            ) !important;
    }

    .users-grid td {
        padding: 17px 15px !important;

        vertical-align: middle;

        color: #cbd5f5 !important;

        border-top: 1px solid rgba(148, 163, 184, .10) !important;
        border-left: none !important;
        border-right: none !important;
        border-bottom: none !important;

        background: rgba(15, 23, 42, .55) !important;
    }

    .users-grid tr {
        transition: all .3s ease;
    }

    .users-grid tr:hover td {
        color: #ffffff !important;

        background:
            rgba(30, 41, 70, .72) !important;

        box-shadow:
            inset 4px 0 0 #8b5cf6;
    }

    /* =========================================
       GRIDVIEW ACTION BUTTONS
    ========================================= */

    .edit-user-btn {
        min-width: 60px;

        padding: 8px 12px !important;

        border: none !important;
        border-radius: 9px !important;

        color: #ffffff !important;

        background:
            linear-gradient(
                135deg,
                #2563eb,
                #3b82f6
            ) !important;

        font-weight: 700;

        box-shadow:
            0 7px 18px rgba(37, 99, 235, .20);

        transition: all .25s ease;
    }

    .delete-user-btn {
        min-width: 65px;

        padding: 8px 12px !important;

        border: none !important;
        border-radius: 9px !important;

        color: #ffffff !important;

        background:
            linear-gradient(
                135deg,
                #dc2626,
                #ef4444
            ) !important;

        font-weight: 700;

        box-shadow:
            0 7px 18px rgba(220, 38, 38, .20);

        transition: all .25s ease;
    }

    .edit-user-btn:hover,
    .delete-user-btn:hover {
        transform: translateY(-3px) scale(1.03);

        color: #ffffff !important;
    }

    /* =========================================
       BOTTOM CARDS
    ========================================= */

    .bottom-section {
        margin-top: 30px;
    }

    .user-info-card {
        height: 100%;

        padding: 28px;

        border-radius: 23px;

        background: rgba(17, 24, 50, .72);

        border: 1px solid rgba(139, 92, 246, .22);

        backdrop-filter: blur(18px);
        -webkit-backdrop-filter: blur(18px);

        box-shadow:
            0 20px 55px rgba(0, 0, 0, .35),
            inset 0 1px 0 rgba(255, 255, 255, .05);

        transition: all .35s ease;
    }

    .user-info-card:hover {
        transform: translateY(-7px);

        border-color: rgba(139, 92, 246, .45);

        box-shadow:
            0 28px 65px rgba(0, 0, 0, .45),
            0 0 35px rgba(124, 58, 237, .10);
    }

    .user-info-card h3 {
        margin-bottom: 22px;

        color: #ffffff;

        font-size: 23px;
        font-weight: 750;
    }

    /* =========================================
       STATISTICS
    ========================================= */

    .user-stat {
        display: flex;
        align-items: center;
        justify-content: space-between;

        padding: 13px 0;

        color: #aeb9d6;

        border-bottom:
            1px solid rgba(148, 163, 184, .10);
    }

    .user-stat:last-of-type {
        border-bottom: none;
    }

    .user-stat strong {
        color: #ffffff;
    }

    .stat-number {
        color: #a78bfa !important;

        font-size: 18px;

        font-weight: 800;
    }

    /* =========================================
       VIEW ALL USERS BUTTON
    ========================================= */

    .view-users-btn {
        width: 100%;

        margin-top: 20px;

        padding: 12px;

        border: none !important;
        border-radius: 11px !important;

        color: #ffffff !important;

        font-weight: 700;

        background:
            linear-gradient(
                135deg,
                #7c3aed,
                #2563eb
            ) !important;

        box-shadow:
            0 10px 25px rgba(124, 58, 237, .20);

        transition: all .3s ease;
    }

    .view-users-btn:hover {
        transform: translateY(-3px);

        color: #ffffff !important;
    }

    /* =========================================
       QUICK ACTIONS
    ========================================= */

    .quick-action {
        width: 100%;

        min-height: 48px;

        margin-bottom: 13px;

        padding: 12px;

        border: none !important;
        border-radius: 11px !important;

        color: #ffffff !important;

        text-decoration: none !important;

        font-weight: 700;

        transition: all .3s ease;
    }

    .quick-action:hover {
        transform: translateX(5px) translateY(-2px);

        color: #ffffff !important;

        box-shadow:
            0 12px 28px rgba(0, 0, 0, .25);
    }

    .new-user-action {
        background:
            linear-gradient(
                135deg,
                #059669,
                #10b981
            ) !important;
    }

    .courses-action {
        background:
            linear-gradient(
                135deg,
                #0284c7,
                #06b6d4
            ) !important;
    }

    .enrollments-action {
        background:
            linear-gradient(
                135deg,
                #d97706,
                #f59e0b
            ) !important;
    }

    .feedback-action {
        background:
            linear-gradient(
                135deg,
                #dc2626,
                #ef4444
            ) !important;
    }

    /* =========================================
       RESPONSIVE
    ========================================= */

    @media (max-width: 991px) {

        .manage-users-page {
            padding-top: 90px;
        }

        .users-hero h1 {
            font-size: 38px;
        }

        .users-header {
            align-items: flex-start;
            flex-direction: column;
        }

        .add-user-btn {
            width: 100%;
        }

    }

    @media (max-width: 767px) {

        .manage-users-page {
            padding-top: 80px;
            padding-bottom: 50px;
        }

        .users-hero {
            margin: 0 15px 25px;
            padding: 35px 20px;

            border-radius: 20px;
        }

        .users-hero h1 {
            font-size: 31px;
        }

        .users-container {
            margin: 0 15px;
        }

        .users-panel {
            padding: 18px;

            border-radius: 20px;
        }

        .users-title {
            font-size: 23px;
        }

        .user-info-card {
            margin-bottom: 20px;
            padding: 22px;
        }

    }

    @media (prefers-reduced-motion: reduce) {

        .user-orb,
        .users-grid tr,
        .user-info-card,
        .quick-action,
        .edit-user-btn,
        .delete-user-btn,
        .add-user-btn {
            animation: none !important;
            transition: none !important;
        }

    }

</style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="manage-users-page">

    <!-- Background Orbs -->

    <div class="user-orb one"></div>
    <div class="user-orb two"></div>
    <div class="user-orb three"></div>


    <!-- Hero -->

    <div class="users-hero">

        <h1>
            Manage Users
        </h1>

        <p>
            Admin Panel / Manage Users
        </p>

    </div>


    <!-- Main Container -->

    <div class="users-container">

        <!-- Users Table -->

        <div class="users-panel">

            <div class="users-header">

                <div>

                    <h3 class="users-title">
                        Total Registered Users
                    </h3>

                    <p class="users-subtitle">
                        Manage registered students and their course accounts
                    </p>

                </div>


                <asp:Button
                    ID="btnAddUser"
                    runat="server"
                    Text="Add New User"
                    CssClass="add-user-btn" />

            </div>


            <!-- GridView -->

            <div class="users-table-wrapper">

                <asp:GridView
                    ID="gvUsers"
                    runat="server"
                    AutoGenerateColumns="False"
                    CssClass="users-grid"
                    GridLines="None">

                    <Columns>

                        <asp:BoundField
                            DataField="ID"
                            HeaderText="ID" />

                        <asp:BoundField
                            DataField="Name"
                            HeaderText="Name" />

                        <asp:BoundField
                            DataField="Email"
                            HeaderText="Email" />

                        <asp:BoundField
                            DataField="Course"
                            HeaderText="Course" />

                        <asp:BoundField
                            DataField="Status"
                            HeaderText="Status" />


                        <asp:TemplateField
                            HeaderText="Action">

                            <ItemTemplate>

                                <asp:Button
                                    ID="btnEdit"
                                    runat="server"
                                    Text="Edit"
                                    CssClass="edit-user-btn" />


                                <asp:Button
                                    ID="btnDelete"
                                    runat="server"
                                    Text="Delete"
                                    CssClass="delete-user-btn"
                                    Style="margin-left:5px;" />

                            </ItemTemplate>

                        </asp:TemplateField>

                    </Columns>

                </asp:GridView>

            </div>

        </div>


        <!-- Bottom Section -->

        <div class="row bottom-section">

            <!-- User Statistics -->

            <div class="col-md-6 mb-4">

                <div class="user-info-card">

                    <h3>
                        User Statistics
                    </h3>


                    <div class="user-stat">

                        <span>
                            Total Users
                        </span>

                        <strong class="stat-number">

                            <asp:Label
                                ID="lblTotalUsers"
                                runat="server"
                                Text="250">
                            </asp:Label>

                        </strong>

                    </div>


                    <div class="user-stat">

                        <span>
                            Active Users
                        </span>

                        <strong class="stat-number">

                            <asp:Label
                                ID="lblActiveUsers"
                                runat="server"
                                Text="220">
                            </asp:Label>

                        </strong>

                    </div>


                    <div class="user-stat">

                        <span>
                            Pending Users
                        </span>

                        <strong class="stat-number">

                            <asp:Label
                                ID="lblPendingUsers"
                                runat="server"
                                Text="30">
                            </asp:Label>

                        </strong>

                    </div>


                    <div class="user-stat">

                        <span>
                            Total Courses
                        </span>

                        <strong class="stat-number">

                            <asp:Label
                                ID="lblCourses"
                                runat="server"
                                Text="480">
                            </asp:Label>

                        </strong>

                    </div>


                    <div class="user-stat">

                        <span>
                            Certificates
                        </span>

                        <strong class="stat-number">

                            <asp:Label
                                ID="lblCertificates"
                                runat="server"
                                Text="175">
                            </asp:Label>

                        </strong>

                    </div>


                    <asp:Button
                        ID="btnViewUsers"
                        runat="server"
                        Text="View All Users"
                        CssClass="view-users-btn" />

                </div>

            </div>


            <!-- Quick Actions -->

            <div class="col-md-6 mb-4">

                <div class="user-info-card">

                    <h3>
                        Quick Actions
                    </h3>


                    <asp:Button
                        ID="btnNewUser"
                        runat="server"
                        Text="Add New User"
                        CssClass="quick-action new-user-action" />


                    <asp:HyperLink
                        ID="lnkCourses"
                        runat="server"
                        NavigateUrl="~/ManageCourses.aspx"
                        CssClass="quick-action courses-action"
                        Text="Manage Courses">
                    </asp:HyperLink>


                    <asp:HyperLink
                        ID="lnkEnrollments"
                        runat="server"
                        NavigateUrl="~/ManageEnrollments.aspx"
                        CssClass="quick-action enrollments-action"
                        Text="Manage Enrollments">
                    </asp:HyperLink>


                    <asp:HyperLink
                        ID="lnkFeedback"
                        runat="server"
                        NavigateUrl="~/ManageFeedback.aspx"
                        CssClass="quick-action feedback-action"
                        Text="View Feedback">
                    </asp:HyperLink>

                </div>

            </div>

        </div>

    </div>

</div>

</asp:Content>