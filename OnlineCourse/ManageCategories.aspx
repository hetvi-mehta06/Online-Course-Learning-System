<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageCategories.aspx.cs" Inherits="OnlineCourse.ManageCategories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>

        /* ================================
           MANAGE CATEGORIES - DARK THEME
        ================================= */

        .category-page {
            position: relative;
            min-height: 700px;
            padding: 55px 0 70px;
            overflow: hidden;
            background:
                radial-gradient(circle at 10% 15%, rgba(124,58,237,.18), transparent 28%),
                radial-gradient(circle at 90% 20%, rgba(0,229,255,.12), transparent 28%),
                radial-gradient(circle at 50% 100%, rgba(99,102,241,.14), transparent 35%),
                #050816;
        }

        .category-page::before {
            content: "";
            position: absolute;
            width: 420px;
            height: 420px;
            top: 100px;
            left: -180px;
            border-radius: 50%;
            background: rgba(124,58,237,.10);
            filter: blur(80px);
            pointer-events: none;
        }

        .category-page::after {
            content: "";
            position: absolute;
            width: 380px;
            height: 380px;
            right: -160px;
            bottom: 80px;
            border-radius: 50%;
            background: rgba(0,229,255,.08);
            filter: blur(80px);
            pointer-events: none;
        }

        .category-page .container {
            position: relative;
            z-index: 2;
        }


        /* ================================
           HERO
        ================================= */

        .category-page ~ * {
            position: relative;
        }

        .hero-wrap-2 {
            position: relative;
            min-height: 330px;
            background-position: center;
            background-size: cover;
        }

        .hero-wrap-2 .overlay {
            background:
                linear-gradient(
                    135deg,
                    rgba(4,7,25,.95),
                    rgba(20,10,55,.88),
                    rgba(3,20,42,.90)
                ) !important;
        }

        .hero-wrap-2 .bread {
            font-size: 48px;
            font-weight: 800;
            letter-spacing: .5px;
            background: linear-gradient(
                90deg,
                #ffffff,
                #b9c8ff,
                #67e8f9
            );
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            text-shadow: 0 0 30px rgba(103,232,249,.15);
        }

        .hero-wrap-2 .breadcrumbs {
            display: inline-block;
            margin-top: 10px;
            padding: 8px 18px;
            border-radius: 30px;
            color: #d7dcff !important;
            background: rgba(10,16,40,.65);
            border: 1px solid rgba(103,232,249,.20);
            backdrop-filter: blur(12px);
            -webkit-backdrop-filter: blur(12px);
            font-size: 14px;
        }


        /* ================================
           COMMON GLASS CARDS
        ================================= */

        .category-form,
        .category-grid-card,
        .category-quick-card {
            position: relative;
            background:
                linear-gradient(
                    145deg,
                    rgba(18,27,58,.94),
                    rgba(8,14,35,.96)
                );
            border: 1px solid rgba(139,92,246,.25);
            border-radius: 22px;
            box-shadow:
                0 25px 70px rgba(0,0,0,.40),
                inset 0 1px 0 rgba(255,255,255,.05);
            backdrop-filter: blur(18px);
            -webkit-backdrop-filter: blur(18px);
            overflow: hidden;
        }

        .category-form::before,
        .category-grid-card::before,
        .category-quick-card::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 2px;
            background: linear-gradient(
                90deg,
                #7c3aed,
                #06b6d4,
                #8b5cf6,
                #22d3ee
            );
            background-size: 250% 100%;
            animation: categoryBorder 6s linear infinite;
        }

        @keyframes categoryBorder {
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


        /* ================================
           FORM CARD
        ================================= */

        .category-form {
            padding: 34px;
            margin-bottom: 30px;
            transition: .35s ease;
        }

        .category-form:hover,
        .category-grid-card:hover,
        .category-quick-card:hover {
            transform: translateY(-3px);
            border-color: rgba(103,232,249,.32);
            box-shadow:
                0 30px 80px rgba(0,0,0,.48),
                0 0 35px rgba(124,58,237,.08);
        }

        .category-form h3,
        .category-grid-title,
        .category-quick-title {
            position: relative;
            color: #ffffff;
            font-weight: 700;
            margin-bottom: 28px;
            padding-bottom: 17px;
            font-size: 25px;
            letter-spacing: .2px;
        }

        .category-form h3::after,
        .category-grid-title::after,
        .category-quick-title::after {
            content: "";
            position: absolute;
            left: 0;
            bottom: 0;
            width: 65px;
            height: 3px;
            border-radius: 10px;
            background: linear-gradient(
                90deg,
                #8b5cf6,
                #22d3ee
            );
            box-shadow: 0 0 15px rgba(34,211,238,.35);
        }


        /* ================================
           LABELS
        ================================= */

        .category-label {
            display: block;
            color: #dfe5ff;
            font-size: 14px;
            font-weight: 600;
            margin-bottom: 9px;
            letter-spacing: .2px;
        }


        /* ================================
           INPUTS
        ================================= */

        .category-input {
            width: 100%;
            height: 48px;
            box-sizing: border-box;
            padding: 10px 15px;
            margin-bottom: 21px;

            color: #f8faff !important;
            background:
                linear-gradient(
                    145deg,
                    rgba(12,20,45,.95),
                    rgba(8,14,32,.95)
                ) !important;

            border: 1px solid rgba(129,140,248,.25) !important;
            border-radius: 12px !important;

            outline: none;
            transition: all .3s ease;

            box-shadow:
                inset 0 2px 8px rgba(0,0,0,.25);
        }

        .category-input::placeholder {
            color: #7883a8 !important;
            opacity: 1;
        }

        .category-input:hover {
            border-color: rgba(139,92,246,.50) !important;
        }

        .category-input:focus {
            color: #ffffff !important;
            border-color: #22d3ee !important;

            box-shadow:
                0 0 0 3px rgba(34,211,238,.08),
                0 0 22px rgba(34,211,238,.14),
                inset 0 2px 8px rgba(0,0,0,.25) !important;

            transform: translateY(-1px);
        }

        select.category-input {
            cursor: pointer;
        }

        select.category-input option {
            background: #0b1228;
            color: #ffffff;
        }


        /* ================================
           BUTTONS
        ================================= */

        .category-buttons {
            margin-top: 5px;
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
        }

        .category-btn {
            position: relative;
            border: none !important;
            border-radius: 12px !important;
            padding: 12px 24px !important;
            color: #ffffff !important;
            font-weight: 700 !important;
            font-size: 14px !important;
            cursor: pointer;
            margin-right: 0 !important;
            margin-bottom: 0 !important;
            transition: all .3s ease !important;
            overflow: hidden;
            box-shadow:
                0 10px 25px rgba(0,0,0,.25);
        }

        .category-btn::before {
            content: "";
            position: absolute;
            top: 0;
            left: -120%;
            width: 80%;
            height: 100%;
            background: linear-gradient(
                90deg,
                transparent,
                rgba(255,255,255,.18),
                transparent
            );
            transform: skewX(-20deg);
            transition: .6s ease;
        }

        .category-btn:hover::before {
            left: 140%;
        }

        .category-btn:hover {
            transform: translateY(-3px);
            color: #ffffff !important;
        }

        .category-btn:active {
            transform: translateY(0);
        }


        /* SAVE */

        .category-btn-save {
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

        .category-btn-save:hover {
            box-shadow:
                0 15px 35px rgba(168,85,247,.42),
                0 0 25px rgba(236,72,153,.18);
        }


        /* UPDATE */

        .category-btn-update {
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

        .category-btn-update:hover {
            box-shadow:
                0 15px 35px rgba(6,182,212,.38),
                0 0 25px rgba(37,99,235,.18);
        }


        /* CLEAR */

        .category-btn-clear {
            background:
                linear-gradient(
                    135deg,
                    #334155,
                    #1e293b
                ) !important;

            border: 1px solid rgba(148,163,184,.20) !important;
        }

        .category-btn-clear:hover {
            background:
                linear-gradient(
                    135deg,
                    #475569,
                    #334155
                ) !important;
        }


        /* ================================
           MESSAGE
        ================================= */

        .category-message {
            display: block;
            margin-top: 18px;
            padding: 11px 15px;
            min-height: 18px;
            border-radius: 11px;

            color: #67e8a5 !important;
            background: rgba(16,185,129,.08);
            border: 1px solid rgba(16,185,129,.18);

            font-size: 14px;
            font-weight: 600;
        }


        /* ================================
           GRID CARD
        ================================= */

        .category-grid-card {
            padding: 34px;
            margin-bottom: 30px;
        }

        .category-grid-title {
            margin-bottom: 25px;
        }

        .category-table-wrapper {
            width: 100%;
            overflow-x: auto;
            border-radius: 15px;
            border: 1px solid rgba(129,140,248,.18);
        }


        /* ================================
           GRIDVIEW
        ================================= */

        .category-grid {
            width: 100%;
            min-width: 700px;
            border-collapse: separate !important;
            border-spacing: 0 !important;
            background: transparent !important;
            border: none !important;
        }

        .category-grid th {
            padding: 16px 14px !important;
            text-align: left;
            color: #ffffff !important;

            background:
                linear-gradient(
                    135deg,
                    #312e81,
                    #4c1d95,
                    #155e75
                ) !important;

            border: none !important;
            border-bottom: 1px solid rgba(103,232,249,.25) !important;

            font-size: 14px;
            font-weight: 700;
            letter-spacing: .3px;
            white-space: nowrap;

            text-transform: uppercase;
        }

        .category-grid th:first-child {
            border-top-left-radius: 13px;
        }

        .category-grid th:last-child {
            border-top-right-radius: 13px;
        }

        .category-grid td {
            padding: 15px 14px !important;
            color: #cdd6f8 !important;

            background:
                rgba(8,15,35,.90) !important;

            border: none !important;
            border-bottom: 1px solid rgba(129,140,248,.10) !important;

            vertical-align: middle;
            font-size: 14px;
        }

        .category-grid tr:nth-child(even) td {
            background:
                rgba(14,23,52,.92) !important;
        }

        .category-grid tr:hover td {
            background:
                linear-gradient(
                    90deg,
                    rgba(124,58,237,.12),
                    rgba(6,182,212,.08)
                ) !important;

            border-bottom-color: rgba(103,232,249,.20) !important;
        }

        .category-grid tr:last-child td {
            border-bottom: none !important;
        }

        .category-grid a {
            text-decoration: none !important;
        }


        /* ================================
           GRID TEXT
        ================================= */

        .category-id {
            display: inline-block;
            min-width: 32px;
            padding: 5px 9px;
            border-radius: 8px;

            color: #c4b5fd !important;
            background: rgba(124,58,237,.12);

            font-weight: 700;
        }

        .category-name {
            color: #f1f5ff !important;
            font-weight: 600;
        }

        .category-total {
            color: #67e8f9 !important;
            font-weight: 700;
        }


        /* ================================
           STATUS
        ================================= */

        .category-status {
            display: inline-block;
            padding: 6px 13px;
            border-radius: 30px;

            background: rgba(16,185,129,.12);
            border: 1px solid rgba(52,211,153,.22);

            color: #6ee7b7 !important;
            font-size: 12px;
            font-weight: 700;

            box-shadow:
                0 0 15px rgba(16,185,129,.05);
        }


        /* ================================
           EDIT / DELETE
        ================================= */

        .category-edit-btn,
        .category-delete-btn {
            display: inline-block;
            padding: 8px 15px;

            border-radius: 9px;

            font-size: 12px;
            font-weight: 700;

            text-decoration: none !important;
            border: none !important;

            cursor: pointer;
            transition: all .3s ease;
        }

        .category-edit-btn {
            color: #ffffff !important;

            background:
                linear-gradient(
                    135deg,
                    #7c3aed,
                    #6366f1
                ) !important;

            box-shadow:
                0 6px 18px rgba(124,58,237,.20);
        }

        .category-edit-btn:hover {
            color: #ffffff !important;
            transform: translateY(-2px);
            box-shadow:
                0 10px 24px rgba(124,58,237,.35);
        }

        .category-delete-btn {
            color: #ffffff !important;

            background:
                linear-gradient(
                    135deg,
                    #dc2626,
                    #be123c
                ) !important;

            box-shadow:
                0 6px 18px rgba(220,38,38,.18);
        }

        .category-delete-btn:hover {
            color: #ffffff !important;
            transform: translateY(-2px);
            box-shadow:
                0 10px 24px rgba(220,38,38,.30);
        }


        /* ================================
           QUICK ACTIONS
        ================================= */

        .category-quick-card {
            padding: 34px;
            margin-top: 0;
        }

        .category-quick-title {
            margin-bottom: 22px;
        }

        .quick-category-btn {
            display: inline-block;

            padding: 12px 21px;
            margin: 5px;

            border-radius: 11px;

            text-decoration: none !important;
            color: #ffffff !important;

            font-size: 13px;
            font-weight: 700;

            border: 1px solid rgba(255,255,255,.08);

            transition: all .3s ease;

            box-shadow:
                0 8px 25px rgba(0,0,0,.25);
        }

        .quick-category-btn:hover {
            color: #ffffff !important;
            text-decoration: none !important;
            transform: translateY(-3px);
        }

        .quick-courses {
            background:
                linear-gradient(
                    135deg,
                    #7c3aed,
                    #4f46e5
                ) !important;
        }

        .quick-videos {
            background:
                linear-gradient(
                    135deg,
                    #0891b2,
                    #06b6d4
                ) !important;
        }

        .quick-enrollments {
            background:
                linear-gradient(
                    135deg,
                    #475569,
                    #334155
                ) !important;
        }

        .quick-feedback {
            background:
                linear-gradient(
                    135deg,
                    #dc2626,
                    #be123c
                ) !important;
        }


        /* ================================
           SCROLLBAR
        ================================= */

        .category-table-wrapper::-webkit-scrollbar {
            height: 7px;
        }

        .category-table-wrapper::-webkit-scrollbar-track {
            background: #080d20;
            border-radius: 10px;
        }

        .category-table-wrapper::-webkit-scrollbar-thumb {
            background:
                linear-gradient(
                    90deg,
                    #7c3aed,
                    #06b6d4
                );
            border-radius: 10px;
        }


        /* ================================
           RESPONSIVE
        ================================= */

        @media (max-width: 991px) {

            .hero-wrap-2 .bread {
                font-size: 40px;
            }

            .category-form,
            .category-grid-card,
            .category-quick-card {
                padding: 27px;
            }
        }


        @media (max-width: 767px) {

            .category-page {
                padding: 30px 0 50px;
            }

            .hero-wrap-2 {
                min-height: 280px;
            }

            .hero-wrap-2 .bread {
                font-size: 31px;
            }

            .hero-wrap-2 .breadcrumbs {
                font-size: 12px;
            }

            .category-form,
            .category-grid-card,
            .category-quick-card {
                padding: 20px;
                border-radius: 17px;
            }

            .category-form h3,
            .category-grid-title,
            .category-quick-title {
                font-size: 21px;
            }

            .category-buttons {
                display: block;
            }

            .category-btn {
                width: 100%;
                display: block;
                margin-bottom: 10px !important;
            }

            .category-table-wrapper {
                overflow-x: auto;
            }

            .category-grid {
                min-width: 700px;
            }

            .quick-category-btn {
                display: block;
                text-align: center;
                margin: 9px 0;
            }

            .category-edit-btn,
            .category-delete-btn {
                padding: 7px 11px;
            }
        }


        /* ================================
           REDUCED MOTION
        ================================= */

        @media (prefers-reduced-motion: reduce) {

            .category-form::before,
            .category-grid-card::before,
            .category-quick-card::before {
                animation: none;
            }

            .category-form,
            .category-grid-card,
            .category-quick-card,
            .category-btn,
            .quick-category-btn,
            .category-edit-btn,
            .category-delete-btn {
                transition: none;
            }
        }

    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <section class="hero-wrap hero-wrap-2"
        style="background-image:url('images/bg_2.jpg');">

        <div class="overlay"></div>

        <div class="container">

            <div class="row no-gutters slider-text align-items-end justify-content-center">

                <div class="col-md-9 text-center pb-5">

                    <h1 class="bread">
                        Manage Categories
                    </h1>

                    <p class="breadcrumbs">
                        Admin Panel / Manage Categories
                    </p>

                </div>

            </div>

        </div>

    </section>


    <section class="category-page">

        <div class="container">


            <div class="category-form">

                <h3>
                    Add Course Category
                </h3>


                <div class="row">


                    <div class="col-md-6">

                        <asp:Label
                            ID="lblCategoryName"
                            runat="server"
                            Text="Category Name"
                            CssClass="category-label">
                        </asp:Label>


                        <asp:TextBox
                            ID="txtCategoryName"
                            runat="server"
                            CssClass="category-input"
                            placeholder="Enter category name">
                        </asp:TextBox>

                    </div>


                    <div class="col-md-6">

                        <asp:Label
                            ID="lblTotalCourses"
                            runat="server"
                            Text="Total Courses"
                            CssClass="category-label">
                        </asp:Label>


                        <asp:TextBox
                            ID="txtTotalCourses"
                            runat="server"
                            Text="0"
                            TextMode="Number"
                            CssClass="category-input"
                            placeholder="Enter total courses">
                        </asp:TextBox>

                    </div>


                    <div class="col-md-6">

                        <asp:Label
                            ID="lblCategoryStatus"
                            runat="server"
                            Text="Status"
                            CssClass="category-label">
                        </asp:Label>


                        <asp:DropDownList
                            ID="ddlStatus"
                            runat="server"
                            CssClass="category-input">

                            <asp:ListItem
                                Text="Active"
                                Value="Active">
                            </asp:ListItem>

                            <asp:ListItem
                                Text="Inactive"
                                Value="Inactive">
                            </asp:ListItem>

                        </asp:DropDownList>

                    </div>


                </div>


                <div class="category-buttons">


                    <asp:Button
                        ID="btnSave"
                        runat="server"
                        Text="Save Category"
                        CssClass="category-btn category-btn-save"
                        OnClick="btnSave_Click" />


                    <asp:Button
                        ID="btnUpdate"
                        runat="server"
                        Text="Update Category"
                        CssClass="category-btn category-btn-update"
                        OnClick="btnUpdate_Click" />


                    <asp:Button
                        ID="btnClear"
                        runat="server"
                        Text="Clear"
                        CssClass="category-btn category-btn-clear"
                        CausesValidation="false"
                        OnClick="btnClear_Click" />


                </div>


                <asp:Label
                    ID="lblMessage"
                    runat="server"
                    CssClass="category-message">
                </asp:Label>


                <asp:TextBox
                    ID="txtCategoryID"
                    runat="server"
                    Visible="false">
                </asp:TextBox>


            </div>



            <div class="category-grid-card">

                <h3 class="category-grid-title">
                    Course Categories
                </h3>


                <div class="category-table-wrapper">


                    <asp:GridView
                        ID="gvCategories"
                        runat="server"
                        AutoGenerateColumns="False"
                        CssClass="category-grid"
                        GridLines="None"
                        OnRowCommand="gvCategories_RowCommand">


                        <Columns>


                            <asp:TemplateField
                                HeaderText="ID">

                                <ItemTemplate>

                                    <asp:Label
                                        ID="lblID"
                                        runat="server"
                                        Text='<%# Eval("ID") %>'
                                        CssClass="category-id">
                                    </asp:Label>

                                </ItemTemplate>

                            </asp:TemplateField>


                            <asp:TemplateField
                                HeaderText="Category Name">

                                <ItemTemplate>

                                    <asp:Label
                                        ID="lblCategoryNameGrid"
                                        runat="server"
                                        Text='<%# Eval("CategoryName") %>'
                                        CssClass="category-name">
                                    </asp:Label>

                                </ItemTemplate>

                            </asp:TemplateField>


                            <asp:TemplateField
                                HeaderText="Total Courses">

                                <ItemTemplate>

                                    <asp:Label
                                        ID="lblTotalCoursesGrid"
                                        runat="server"
                                        Text='<%# Eval("TotalCourses") %>'
                                        CssClass="category-total">
                                    </asp:Label>

                                </ItemTemplate>

                            </asp:TemplateField>


                            <asp:TemplateField
                                HeaderText="Status">

                                <ItemTemplate>

                                    <asp:Label
                                        ID="lblStatusGrid"
                                        runat="server"
                                        Text='<%# Eval("Status") %>'
                                        CssClass="category-status">
                                    </asp:Label>

                                </ItemTemplate>

                            </asp:TemplateField>


                            <asp:TemplateField
                                HeaderText="Action">

                                <ItemTemplate>


                                    <asp:LinkButton
                                        ID="btnEdit"
                                        runat="server"
                                        Text="Edit"
                                        CommandName="cmd_edit"
                                        CommandArgument='<%# Eval("ID") %>'
                                        CausesValidation="false"
                                        CssClass="category-edit-btn">
                                    </asp:LinkButton>


                                    <asp:LinkButton
                                        ID="btnDelete"
                                        runat="server"
                                        Text="Delete"
                                        CommandName="cmd_delete"
                                        CommandArgument='<%# Eval("ID") %>'
                                        CausesValidation="false"
                                        CssClass="category-delete-btn"
                                        OnClientClick="return confirm('Are you sure you want to delete this category?');">
                                    </asp:LinkButton>


                                </ItemTemplate>

                            </asp:TemplateField>


                        </Columns>


                    </asp:GridView>


                </div>

            </div>



            <div class="category-quick-card">

                <h3 class="category-quick-title">
                    Quick Actions
                </h3>


                <asp:HyperLink
                    ID="hlCourses"
                    runat="server"
                    NavigateUrl="~/ManageCourses.aspx"
                    CssClass="quick-category-btn quick-courses"
                    Text="Manage Courses">
                </asp:HyperLink>


                <asp:HyperLink
                    ID="hlVideos"
                    runat="server"
                    NavigateUrl="~/ManageVideos.aspx"
                    CssClass="quick-category-btn quick-videos"
                    Text="Manage Videos">
                </asp:HyperLink>


                <asp:HyperLink
                    ID="hlEnrollments"
                    runat="server"
                    NavigateUrl="~/ManageEnrollments.aspx"
                    CssClass="quick-category-btn quick-enrollments"
                    Text="Manage Enrollments">
                </asp:HyperLink>


                <asp:HyperLink
                    ID="hlFeedback"
                    runat="server"
                    NavigateUrl="~/ManageFeedback.aspx"
                    CssClass="quick-category-btn quick-feedback"
                    Text="View Feedback">
                </asp:HyperLink>


            </div>


        </div>

    </section>

</asp:Content>