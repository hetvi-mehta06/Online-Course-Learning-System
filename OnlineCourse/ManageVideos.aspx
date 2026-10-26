<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageVideos.aspx.cs" Inherits="OnlineCourse.ManageVideos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>

        /* =========================================================
           MANAGE VIDEOS - PREMIUM DARK BLUE THEME
        ========================================================= */

        .video-page {
            position: relative;
            min-height: 700px;
            padding: 55px 0 70px;
            overflow: hidden;

            background:
                radial-gradient(circle at 8% 10%, rgba(124,58,237,.18), transparent 28%),
                radial-gradient(circle at 92% 15%, rgba(6,182,212,.13), transparent 28%),
                radial-gradient(circle at 50% 100%, rgba(79,70,229,.13), transparent 35%),
                #050816;
        }

        .video-page::before {
            content: "";
            position: absolute;
            width: 430px;
            height: 430px;
            left: -180px;
            top: 80px;
            border-radius: 50%;
            background: rgba(124,58,237,.10);
            filter: blur(85px);
            pointer-events: none;
        }

        .video-page::after {
            content: "";
            position: absolute;
            width: 400px;
            height: 400px;
            right: -170px;
            bottom: 80px;
            border-radius: 50%;
            background: rgba(6,182,212,.08);
            filter: blur(85px);
            pointer-events: none;
        }

        .video-page .container {
            position: relative;
            z-index: 2;
        }


        /* =========================================================
           HERO
        ========================================================= */

        .video-hero {
            position: relative;
            min-height: 330px;
            background-position: center;
            background-size: cover;
        }

        .video-hero .overlay {
            background:
                linear-gradient(
                    135deg,
                    rgba(3,7,25,.96),
                    rgba(26,10,58,.90),
                    rgba(3,24,45,.92)
                ) !important;
        }

        .video-hero .bread {
            font-size: 48px;
            font-weight: 800;
            letter-spacing: .5px;

            background:
                linear-gradient(
                    90deg,
                    #ffffff,
                    #c4b5fd,
                    #67e8f9
                );

            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;

            text-shadow:
                0 0 30px rgba(103,232,249,.12);
        }

        .video-hero .breadcrumbs {
            display: inline-block;

            margin-top: 10px;
            padding: 8px 18px;

            border-radius: 30px;

            color: #d8ddff !important;

            background: rgba(8,15,38,.68);

            border: 1px solid rgba(103,232,249,.20);

            backdrop-filter: blur(12px);
            -webkit-backdrop-filter: blur(12px);

            font-size: 14px;
        }


        /* =========================================================
           COMMON GLASS CARDS
        ========================================================= */

        .video-form,
        .video-grid,
        .video-statistics,
        .video-actions {

            position: relative;

            background:
                linear-gradient(
                    145deg,
                    rgba(18,27,58,.95),
                    rgba(7,13,33,.97)
                );

            border: 1px solid rgba(139,92,246,.25);

            border-radius: 22px;

            box-shadow:
                0 25px 70px rgba(0,0,0,.42),
                inset 0 1px 0 rgba(255,255,255,.05);

            backdrop-filter: blur(18px);
            -webkit-backdrop-filter: blur(18px);

            overflow: hidden;

            transition: .35s ease;
        }

        .video-form::before,
        .video-grid::before,
        .video-statistics::before,
        .video-actions::before {

            content: "";

            position: absolute;

            top: 0;
            left: 0;
            right: 0;

            height: 2px;

            background:
                linear-gradient(
                    90deg,
                    #7c3aed,
                    #06b6d4,
                    #8b5cf6,
                    #22d3ee
                );

            background-size: 250% 100%;

            animation: videoBorder 6s linear infinite;
        }

        @keyframes videoBorder {

            0% {
                background-position: 0% 50%;
            }

            50% {
                background-position: 100% 50%;
            }

            100% {
                background-position: 0% 50%;
            }
        }

        .video-form:hover,
        .video-grid:hover,
        .video-statistics:hover,
        .video-actions:hover {

            transform: translateY(-3px);

            border-color: rgba(103,232,249,.30);

            box-shadow:
                0 30px 80px rgba(0,0,0,.48),
                0 0 35px rgba(124,58,237,.08);
        }


        /* =========================================================
           VIDEO FORM
        ========================================================= */

        .video-form {

            padding: 34px;

            margin-bottom: 30px;
        }


        /* =========================================================
           HEADINGS
        ========================================================= */

        .video-form h3,
        .video-grid h3,
        .video-statistics h3,
        .video-actions h3 {

            position: relative;

            color: #ffffff;

            font-size: 25px;

            font-weight: 700;

            margin-bottom: 28px;

            padding-bottom: 17px;
        }

        .video-form h3::after,
        .video-grid h3::after,
        .video-statistics h3::after,
        .video-actions h3::after {

            content: "";

            position: absolute;

            left: 0;
            bottom: 0;

            width: 65px;
            height: 3px;

            border-radius: 10px;

            background:
                linear-gradient(
                    90deg,
                    #8b5cf6,
                    #22d3ee
                );

            box-shadow:
                0 0 15px rgba(34,211,238,.35);
        }


        /* =========================================================
           LABELS
        ========================================================= */

        .video-form label {

            display: block;

            color: #e0e7ff;

            font-size: 14px;

            font-weight: 600;

            margin-bottom: 9px;
        }


        /* =========================================================
           INPUTS
        ========================================================= */

        .video-form .form-control {

            width: 100%;

            height: 48px;

            box-sizing: border-box;

            padding: 10px 15px;

            margin-bottom: 21px;

            color: #ffffff !important;

            background:
                linear-gradient(
                    145deg,
                    rgba(12,20,45,.96),
                    rgba(7,13,31,.96)
                ) !important;

            border: 1px solid rgba(129,140,248,.25) !important;

            border-radius: 12px !important;

            outline: none;

            box-shadow:
                inset 0 2px 8px rgba(0,0,0,.25);

            transition: all .3s ease;
        }

        .video-form .form-control::placeholder {

            color: #7883a8 !important;

            opacity: 1;
        }

        .video-form .form-control:hover {

            border-color:
                rgba(139,92,246,.50) !important;
        }

        .video-form .form-control:focus {

            color: #ffffff !important;

            border-color:
                #22d3ee !important;

            box-shadow:
                0 0 0 3px rgba(34,211,238,.08),
                0 0 22px rgba(34,211,238,.14),
                inset 0 2px 8px rgba(0,0,0,.25) !important;

            transform: translateY(-1px);
        }

        select.form-control {

            cursor: pointer;
        }

        select.form-control option {

            background: #0b1228;

            color: #ffffff;
        }


        /* =========================================================
           FORM BUTTONS
        ========================================================= */

        .video-form .btn {

            position: relative;

            padding: 12px 24px;

            border: none !important;

            border-radius: 12px !important;

            color: #ffffff !important;

            font-size: 14px;

            font-weight: 700;

            margin-right: 8px;

            margin-bottom: 8px;

            cursor: pointer;

            transition: all .3s ease;

            box-shadow:
                0 10px 25px rgba(0,0,0,.25);
        }

        .video-form .btn:hover {

            color: #ffffff !important;

            transform: translateY(-3px);
        }


        /* SAVE */

        .video-save-btn {

            background:
                linear-gradient(
                    135deg,
                    #7c3aed,
                    #a855f7,
                    #ec4899
                ) !important;

            box-shadow:
                0 10px 28px rgba(168,85,247,.28);
        }


        /* UPDATE */

        .video-update-btn {

            background:
                linear-gradient(
                    135deg,
                    #0891b2,
                    #06b6d4,
                    #2563eb
                ) !important;

            box-shadow:
                0 10px 28px rgba(6,182,212,.25);
        }


        /* CLEAR */

        .video-clear-btn {

            background:
                linear-gradient(
                    135deg,
                    #475569,
                    #1e293b
                ) !important;
        }


        /* =========================================================
           MESSAGE
        ========================================================= */

        .video-message {

            display: block;

            margin-top: 12px;

            padding: 11px 15px;

            min-height: 18px;

            border-radius: 11px;

            color: #67e8a5 !important;

            background: rgba(16,185,129,.08);

            border:
                1px solid rgba(16,185,129,.18);

            font-size: 14px;

            font-weight: 600;
        }


        /* =========================================================
           VIDEO GRID
        ========================================================= */

        .video-grid {

            padding: 34px;

            margin-bottom: 30px;
        }

        .video-table-wrapper {

            width: 100%;

            overflow-x: auto;

            border-radius: 15px;

            border:
                1px solid rgba(129,140,248,.18);
        }


        /* =========================================================
           GRIDVIEW TABLE
        ========================================================= */

        .video-grid-table {

            width: 100%;

            min-width: 850px;

            border-collapse: separate !important;

            border-spacing: 0 !important;

            background: transparent !important;

            border: none !important;
        }

        .video-grid-table th {

            padding: 16px 14px !important;

            color: #ffffff !important;

            text-align: left;

            background:
                linear-gradient(
                    135deg,
                    #312e81,
                    #4c1d95,
                    #155e75
                ) !important;

            border: none !important;

            border-bottom:
                1px solid rgba(103,232,249,.25) !important;

            font-size: 13px;

            font-weight: 700;

            white-space: nowrap;

            text-transform: uppercase;
        }

        .video-grid-table td {

            padding: 15px 14px !important;

            color: #cdd6f8 !important;

            background:
                rgba(8,15,35,.90) !important;

            border: none !important;

            border-bottom:
                1px solid rgba(129,140,248,.10) !important;

            vertical-align: middle;

            font-size: 14px;
        }

        .video-grid-table tr:nth-child(even) td {

            background:
                rgba(14,23,52,.92) !important;
        }

        .video-grid-table tr:hover td {

            background:
                linear-gradient(
                    90deg,
                    rgba(124,58,237,.12),
                    rgba(6,182,212,.08)
                ) !important;

            border-bottom-color:
                rgba(103,232,249,.20) !important;
        }

        .video-grid-table a {

            text-decoration: none !important;
        }


        /* =========================================================
           TABLE TEXT
        ========================================================= */

        .video-id {

            display: inline-block;

            padding: 5px 9px;

            border-radius: 8px;

            color: #c4b5fd !important;

            background:
                rgba(124,58,237,.12);

            font-weight: 700;
        }

        .video-title-text {

            color: #f1f5ff !important;

            font-weight: 600;
        }

        .video-course-text {

            color: #c4b5fd !important;

            font-weight: 600;
        }

        .video-duration-text {

            color: #67e8f9 !important;

            font-weight: 700;
        }


        /* =========================================================
           STATUS
        ========================================================= */

        .video-status {

            display: inline-block;

            padding: 6px 13px;

            border-radius: 30px;

            color: #6ee7b7 !important;

            background:
                rgba(16,185,129,.12);

            border:
                1px solid rgba(52,211,153,.22);

            font-size: 12px;

            font-weight: 700;
        }


        /* =========================================================
           EDIT BUTTON
        ========================================================= */

        .video-edit-btn {

            display: inline-block;

            padding: 8px 15px;

            margin: 3px;

            border: none !important;

            border-radius: 9px;

            color: #ffffff !important;

            background:
                linear-gradient(
                    135deg,
                    #7c3aed,
                    #6366f1
                ) !important;

            font-size: 12px;

            font-weight: 700;

            transition: all .3s ease;
        }

        .video-edit-btn:hover {

            color: #ffffff !important;

            transform: translateY(-2px);

            box-shadow:
                0 10px 24px rgba(124,58,237,.35);
        }


        /* =========================================================
           DELETE BUTTON
        ========================================================= */

        .video-delete-btn {

            display: inline-block;

            padding: 8px 15px;

            margin: 3px;

            border: none !important;

            border-radius: 9px;

            color: #ffffff !important;

            background:
                linear-gradient(
                    135deg,
                    #dc2626,
                    #be123c
                ) !important;

            font-size: 12px;

            font-weight: 700;

            transition: all .3s ease;
        }

        .video-delete-btn:hover {

            color: #ffffff !important;

            transform: translateY(-2px);

            box-shadow:
                0 10px 24px rgba(220,38,38,.30);
        }


        /* =========================================================
           STATISTICS
        ========================================================= */

        .video-statistics {

            padding: 34px;

            margin-bottom: 30px;
        }

        .video-statistics p {

            display: flex;

            align-items: center;

            justify-content: space-between;

            margin: 0 0 12px;

            padding: 13px 16px;

            color: #cdd6f8;

            background:
                rgba(8,15,35,.65);

            border:
                1px solid rgba(129,140,248,.12);

            border-radius: 12px;

            transition: .25s ease;
        }

        .video-statistics p:last-child {

            margin-bottom: 0;
        }

        .video-statistics p:hover {

            transform: translateX(4px);

            border-color:
                rgba(103,232,249,.25);

            background:
                rgba(14,23,52,.85);
        }

        .video-statistics strong {

            color: #e0e7ff;

            font-weight: 600;
        }

        .video-statistics span {

            color: #67e8f9 !important;

            font-size: 16px;

            font-weight: 800;
        }


        /* =========================================================
           QUICK ACTIONS
        ========================================================= */

        .video-actions {

            padding: 34px;

            margin-bottom: 0;
        }

        .video-actions .btn {

            display: inline-block;

            padding: 12px 21px;

            margin: 5px;

            border: none !important;

            border-radius: 11px !important;

            color: #ffffff !important;

            font-size: 13px;

            font-weight: 700;

            text-decoration: none;

            transition: all .3s ease;

            box-shadow:
                0 8px 25px rgba(0,0,0,.25);
        }

        .video-actions .btn:hover {

            color: #ffffff !important;

            transform: translateY(-3px);
        }

        .quick-add-video {

            background:
                linear-gradient(
                    135deg,
                    #7c3aed,
                    #4f46e5
                ) !important;
        }

        .quick-manage-courses {

            background:
                linear-gradient(
                    135deg,
                    #0891b2,
                    #06b6d4
                ) !important;
        }

        .quick-manage-categories {

            background:
                linear-gradient(
                    135deg,
                    #f59e0b,
                    #d97706
                ) !important;
        }

        .quick-manage-enrollments {

            background:
                linear-gradient(
                    135deg,
                    #475569,
                    #334155
                ) !important;
        }

        .quick-manage-feedback {

            background:
                linear-gradient(
                    135deg,
                    #dc2626,
                    #be123c
                ) !important;
        }


        /* =========================================================
           SCROLLBAR
        ========================================================= */

        .video-table-wrapper::-webkit-scrollbar {
            height: 7px;
        }

        .video-table-wrapper::-webkit-scrollbar-track {

            background: #080d20;

            border-radius: 10px;
        }

        .video-table-wrapper::-webkit-scrollbar-thumb {

            background:
                linear-gradient(
                    90deg,
                    #7c3aed,
                    #06b6d4
                );

            border-radius: 10px;
        }


        /* =========================================================
           RESPONSIVE
        ========================================================= */

        @media (max-width: 991px) {

            .video-hero .bread {
                font-size: 40px;
            }

            .video-form,
            .video-grid,
            .video-statistics,
            .video-actions {
                padding: 27px;
            }
        }


        @media (max-width: 767px) {

            .video-page {
                padding: 30px 0 50px;
            }

            .video-hero {
                min-height: 280px;
            }

            .video-hero .bread {
                font-size: 31px;
            }

            .video-hero .breadcrumbs {
                font-size: 12px;
            }

            .video-form,
            .video-grid,
            .video-statistics,
            .video-actions {

                padding: 20px;

                border-radius: 17px;
            }

            .video-form h3,
            .video-grid h3,
            .video-statistics h3,
            .video-actions h3 {

                font-size: 21px;
            }

            .video-form .btn {

                width: 100%;

                display: block;

                margin-right: 0;
            }

            .video-table-wrapper {

                overflow-x: auto;
            }

            .video-grid-table {

                min-width: 850px;
            }

            .video-statistics p {

                flex-direction: column;

                align-items: flex-start;

                gap: 5px;
            }

            .video-actions .btn {

                display: block;

                width: 100%;

                margin: 9px 0;

                text-align: center;
            }
        }


        /* =========================================================
           REDUCED MOTION
        ========================================================= */

        @media (prefers-reduced-motion: reduce) {

            .video-form::before,
            .video-grid::before,
            .video-statistics::before,
            .video-actions::before {

                animation: none;
            }

            .video-form,
            .video-grid,
            .video-statistics,
            .video-actions,
            .video-form .btn,
            .video-actions .btn,
            .video-edit-btn,
            .video-delete-btn {

                transition: none;
            }
        }

    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <section class="hero-wrap hero-wrap-2 video-hero"
        style="background-image:url('images/bg_2.jpg');">

        <div class="overlay"></div>

        <div class="container">

            <div class="row no-gutters slider-text align-items-end justify-content-center">

                <div class="col-md-9 text-center pb-5">

                    <h1 class="bread">
                        Manage Videos
                    </h1>

                    <p class="breadcrumbs">
                        Admin Panel / Manage Videos
                    </p>

                </div>

            </div>

        </div>

    </section>


    <section class="video-page">

        <div class="container">


            <div class="video-form">

                <h3>
                    Add Course Video
                </h3>


                <div class="row">


                    <div class="col-md-6">

                        <label>
                            Video Title
                        </label>

                        <asp:TextBox
                            ID="txtVideoTitle"
                            runat="server"
                            CssClass="form-control"
                            placeholder="Enter video title">
                        </asp:TextBox>

                    </div>


                    <div class="col-md-6">

                        <label>
                            Course
                        </label>

                        <asp:DropDownList
                            ID="ddlCourse"
                            runat="server"
                            CssClass="form-control">

                            <asp:ListItem
                                Text="-- Select Course --"
                                Value="0">
                            </asp:ListItem>

                        </asp:DropDownList>

                    </div>


                    <div class="col-md-6">

                        <label>
                            Duration (Minutes)
                        </label>

                        <asp:TextBox
                            ID="txtDuration"
                            runat="server"
                            TextMode="Number"
                            CssClass="form-control"
                            placeholder="Enter duration">
                        </asp:TextBox>

                    </div>


                    <div class="col-md-6">

                        <label>
                            Video URL
                        </label>

                        <asp:TextBox
                            ID="txtVideoURL"
                            runat="server"
                            CssClass="form-control"
                            placeholder="Enter video URL">
                        </asp:TextBox>

                    </div>


                    <div class="col-md-6">

                        <label>
                            Status
                        </label>

                        <asp:DropDownList
                            ID="ddlStatus"
                            runat="server"
                            CssClass="form-control">

                            <asp:ListItem
                                Text="Published"
                                Value="Published">
                            </asp:ListItem>

                            <asp:ListItem
                                Text="Draft"
                                Value="Draft">
                            </asp:ListItem>

                        </asp:DropDownList>

                    </div>


                </div>


                <asp:Button
                    ID="btnSave"
                    runat="server"
                    Text="Save Video"
                    CssClass="btn video-save-btn"
                    OnClick="btnSave_Click" />


                <asp:Button
                    ID="btnUpdate"
                    runat="server"
                    Text="Update Video"
                    CssClass="btn video-update-btn"
                    OnClick="btnUpdate_Click" />


                <asp:Button
                    ID="btnClear"
                    runat="server"
                    Text="Clear"
                    CssClass="btn video-clear-btn"
                    CausesValidation="false"
                    OnClick="btnClear_Click" />


                <asp:Label
                    ID="lblMessage"
                    runat="server"
                    CssClass="video-message">
                </asp:Label>


            </div>


            <div class="video-grid">

                <h3>
                    Course Videos
                </h3>


                <div class="video-table-wrapper">


                    <asp:GridView
    ID="gvVideos"
    runat="server"
    AutoGenerateColumns="False"
    CssClass="video-grid-table"
    GridLines="None"
    OnRowCommand="gvVideos_RowCommand"
    EmptyDataText="No videos found.">

    <Columns>

        <asp:TemplateField HeaderText="ID">
            <ItemTemplate>
                <asp:Label
                    ID="lblID"
                    runat="server"
                    Text='<%# Eval("ID") %>'
                    CssClass="video-id">
                </asp:Label>
            </ItemTemplate>
        </asp:TemplateField>


        <asp:TemplateField HeaderText="Video Title">
            <ItemTemplate>
                <asp:Label
                    ID="lblVideoTitle"
                    runat="server"
                    Text='<%# Eval("VideoTitle") %>'
                    CssClass="video-title-text">
                </asp:Label>
            </ItemTemplate>
        </asp:TemplateField>


        <asp:TemplateField HeaderText="Course">
            <ItemTemplate>
                <asp:Label
                    ID="lblCourse"
                    runat="server"
                    Text='<%# Eval("CourseName") %>'
                    CssClass="video-course-text">
                </asp:Label>
            </ItemTemplate>
        </asp:TemplateField>


        <asp:TemplateField HeaderText="Duration">
            <ItemTemplate>

                <asp:Label
                    ID="lblDuration"
                    runat="server"
                    Text='<%# Eval("Duration") %>'
                    CssClass="video-duration-text">
                </asp:Label>

                <span style="color:#7883a8;">Min</span>

            </ItemTemplate>
        </asp:TemplateField>


        <asp:TemplateField HeaderText="Watch Video">
            <ItemTemplate>

                <asp:HyperLink
                    ID="hlVideo"
                    runat="server"
                    Text="Watch Video"
                    NavigateUrl='<%# Eval("VideoURL") %>'
                    Target="_blank"
                    CssClass="btn btn-success btn-sm">
                </asp:HyperLink>

            </ItemTemplate>
        </asp:TemplateField>


        <asp:TemplateField HeaderText="Status">
            <ItemTemplate>

                <asp:Label
                    ID="lblStatus"
                    runat="server"
                    Text='<%# Eval("Status") %>'
                    CssClass="video-status">
                </asp:Label>

            </ItemTemplate>
        </asp:TemplateField>


        <asp:TemplateField HeaderText="Action">
            <ItemTemplate>

                <asp:LinkButton
                    ID="btnEdit"
                    runat="server"
                    Text="Edit"
                    CommandName="cmd_edit"
                    CommandArgument='<%# Eval("ID") %>'
                    CausesValidation="false"
                    CssClass="video-edit-btn">
                </asp:LinkButton>

                <asp:LinkButton
                    ID="btnDelete"
                    runat="server"
                    Text="Delete"
                    CommandName="cmd_delete"
                    CommandArgument='<%# Eval("ID") %>'
                    CausesValidation="false"
                    CssClass="video-delete-btn"
                    OnClientClick="return confirm('Are you sure you want to delete this video?');">
                </asp:LinkButton>

            </ItemTemplate>
        </asp:TemplateField>

    </Columns>

</asp:GridView>


                </div>

            </div>


            <div class="video-statistics">

                <h3>
                    Video Statistics
                </h3>


                <p>

                    <strong>
                        Total Videos:
                    </strong>

                    <asp:Label
                        ID="lblTotalVideos"
                        runat="server"
                        Text="0">
                    </asp:Label>

                </p>


                <p>

                    <strong>
                        Published Videos:
                    </strong>

                    <asp:Label
                        ID="lblPublishedVideos"
                        runat="server"
                        Text="0">
                    </asp:Label>

                </p>


                <p>

                    <strong>
                        Draft Videos:
                    </strong>

                    <asp:Label
                        ID="lblDraftVideos"
                        runat="server"
                        Text="0">
                    </asp:Label>

                </p>


                <p>

                    <strong>
                        Total Courses:
                    </strong>

                    <asp:Label
                        ID="lblTotalCourses"
                        runat="server"
                        Text="0">
                    </asp:Label>

                </p>


                <p>

                    <strong>
                        Total Watch Hours:
                    </strong>

                    <asp:Label
                        ID="lblWatchHours"
                        runat="server"
                        Text="0">
                    </asp:Label>

                </p>


            </div>


            <div class="video-actions">

                <h3>
                    Quick Actions
                </h3>


                <asp:Button
                    ID="btnAddNewVideo"
                    runat="server"
                    Text="Add New Video"
                    CssClass="btn quick-add-video"
                    CausesValidation="false" OnClick="btnAddNewVideo_Click" />


                <asp:Button
                    ID="btnManageCourses"
                    runat="server"
                    Text="Manage Courses"
                    CssClass="btn quick-manage-courses"
                    CausesValidation="false"
                    PostBackUrl="~/ManageCourses.aspx" OnClick="btnManageCourses_Click" />


                <asp:Button
                    ID="btnManageCategories"
                    runat="server"
                    Text="Manage Categories"
                    CssClass="btn quick-manage-categories"
                    CausesValidation="false"
                    PostBackUrl="~/ManageCategories.aspx" OnClick="btnManageCategories_Click" />


                <asp:Button
                    ID="btnManageEnrollments"
                    runat="server"
                    Text="Manage Enrollments"
                    CssClass="btn quick-manage-enrollments"
                    CausesValidation="false"
                    PostBackUrl="~/ManageEnrollments.aspx" OnClick="btnManageEnrollments_Click" />


                <asp:Button
                    ID="btnManageFeedback"
                    runat="server"
                    Text="View Feedback"
                    CssClass="btn quick-manage-feedback"
                    CausesValidation="false"
                    PostBackUrl="~/ManageFeedback.aspx" OnClick="btnManageFeedback_Click" />


            </div>


        </div>

    </section>

</asp:Content>