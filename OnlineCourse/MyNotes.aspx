
<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="MyNotes.aspx.cs" Inherits="OnlineCourse.MyNotes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* =====================================================
           LEARNSPHERE PERSONAL NOTES PAGE
           DARK PURPLE + CYAN THEME
        ===================================================== */

        .mynotes-page {
            --notes-purple: #8b5cf6;
            --notes-purple-light: #c4b5fd;
            --notes-cyan: #22d3ee;
            --notes-bg: #080a17;
            --notes-text: #f8fafc;
            --notes-muted: #a8aec5;

            width: 100%;
            min-height: 100vh;

            background:
                radial-gradient(circle at 10% 10%, rgba(139, 92, 246, .13), transparent 28%),
                radial-gradient(circle at 90% 30%, rgba(34, 211, 238, .09), transparent 28%),
                linear-gradient(180deg, #080a17 0%, #0d1021 100%);

            color: var(--notes-text);
            overflow: hidden;
        }

        /* HERO SECTION */

        .mynotes-page .notes-hero {
            position: relative;
            width: 100%;
            min-height: 430px;

            display: flex;
            align-items: center;
            justify-content: center;

            background:
                linear-gradient(
                    135deg,
                    rgba(8, 10, 25, .88),
                    rgba(61, 34, 103, .70),
                    rgba(8, 47, 73, .58)
                ),
                url('images/bg_1.jpg');

            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            overflow: hidden;
        }

        .mynotes-page .notes-hero::before {
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

        .mynotes-page .notes-hero::after {
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

        .mynotes-page .notes-hero-content {
            position: relative;
            z-index: 3;
            width: 100%;
            max-width: 850px;
            padding: 75px 25px;
            margin: 0 auto;
            text-align: center;
        }

        .mynotes-page .notes-tag {
            display: inline-block;
            padding: 9px 20px;
            border-radius: 50px;
            background: rgba(139, 92, 246, .15);
            border: 1px solid rgba(139, 92, 246, .45);
            color: var(--notes-purple-light);
            font-size: 12px;
            font-weight: 800;
            letter-spacing: 2px;
        }

        .mynotes-page .notes-hero-content h1 {
            margin: 24px 0 16px;
            font-size: clamp(42px, 6vw, 65px);
            line-height: 1.1;
            font-weight: 850;

            background: linear-gradient(90deg, #ffffff, #c4b5fd, #67e8f9);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .mynotes-page .notes-hero-content p {
            max-width: 650px;
            margin: 0 auto;
            color: #c0c5d8;
            font-size: 17px;
            line-height: 1.7;
        }

        /* NOTES CONTENT */

        .mynotes-page .notes-content {
            width: 100%;
            padding: 75px 0;
            background: linear-gradient(180deg, #0b0d1c, #0f1226);
        }

        .mynotes-page .notes-container {
            width: 100%;
            max-width: 1120px;
            margin: 0 auto;
            padding-left: 15px;
            padding-right: 15px;
            box-sizing: border-box;
        }

        /* NOTES BOX */

        .mynotes-page .notes-box {
            position: relative;
            width: 100%;
            padding: 42px;
            border-radius: 28px;

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

        .mynotes-page .notes-box::before {
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

        /* SECTION HEADING */

        .mynotes-page .notes-heading {
            position: relative;
            z-index: 2;
            text-align: center;
            margin-bottom: 35px;
        }

        .mynotes-page .notes-heading-icon {
            width: 70px;
            height: 70px;
            margin: 0 auto 18px;
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
        }

        .mynotes-page .notes-heading h2 {
            margin: 0 0 12px;
            color: #ffffff;
            font-size: 32px;
            font-weight: 800;
        }

        .mynotes-page .notes-heading p {
            margin: 0;
            color: var(--notes-muted);
            font-size: 15px;
            line-height: 1.6;
        }

        /* FORM CONTROLS */

        .mynotes-page .notes-label {
            display: block;
            margin: 18px 0 9px;
            color: #c4b5fd;
            font-size: 14px;
            font-weight: 700;
        }

        .mynotes-page .notes-input {
            width: 100%;
            padding: 14px 16px;
            border: 1px solid rgba(139,92,246,.30);
            border-radius: 11px;
            background: rgba(8,10,25,.75);
            color: #ffffff;
            font-size: 14px;
            box-sizing: border-box;
            transition: all .3s ease;
        }

        .mynotes-page .notes-input:focus {
            outline: none;
            border-color: #22d3ee;
            box-shadow: 0 0 18px rgba(34,211,238,.12);
        }

        .mynotes-page .notes-input option {
            background: #17102c;
            color: #ffffff;
        }

        .mynotes-page .notes-textarea {
            min-height: 170px;
            resize: vertical;
            line-height: 1.7;
        }

        /* BUTTON */

        .mynotes-page .notes-btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            min-width: 170px;
            padding: 14px 28px;
            margin-top: 22px;
            border-radius: 50px;

            background: linear-gradient(100deg, #7c3aed, #8b5cf6, #06b6d4);

            border: 1px solid rgba(255,255,255,.10);
            color: #ffffff !important;
            font-size: 14px;
            font-weight: 800;
            cursor: pointer;
            box-shadow: 0 12px 35px rgba(124,58,237,.28);
            transition: all .3s ease;
        }

        .mynotes-page .notes-btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 17px 45px rgba(139,92,246,.42);
        }

        /* MESSAGE */

        .mynotes-page .notes-message {
            display: block;
            margin-top: 18px;
            color: #67e8f9;
            font-size: 14px;
            text-align: center;
        }

        /* SAVED NOTES */

        .mynotes-page .saved-notes {
            margin-top: 55px;
        }

        .mynotes-page .saved-heading {
            text-align: center;
            margin-bottom: 28px;
        }

        .mynotes-page .saved-heading h2 {
            color: #ffffff;
            font-size: 30px;
            font-weight: 800;
        }

        .mynotes-page .saved-heading p {
            color: #a8aec5;
            font-size: 14px;
        }

        .mynotes-page .notes-grid {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0;
            background: rgba(24,27,52,.90);
            border: 1px solid rgba(139,92,246,.20);
            border-radius: 15px;
            overflow: hidden;
        }

        .mynotes-page .notes-grid th {
            padding: 16px 13px;
            background: linear-gradient(100deg, #39206b, #16465c);
            color: #ffffff;
            font-size: 14px;
            text-align: left;
        }

        .mynotes-page .notes-grid td {
            padding: 15px 13px;
            color: #d7d9e8;
            font-size: 14px;
            line-height: 1.6;
            border-bottom: 1px solid rgba(255,255,255,.07);
        }

        .mynotes-page .notes-grid tr:last-child td {
            border-bottom: none;
        }

        .mynotes-page .notes-grid tr:hover td {
            background: rgba(139,92,246,.08);
        }

        /* RESPONSIVE */

        @media (max-width: 768px) {
            .mynotes-page .notes-box {
                padding: 30px 22px;
            }

            .mynotes-page .notes-hero {
                min-height: 360px;
            }

            .mynotes-page .notes-hero-content {
                padding: 60px 20px;
            }

            .mynotes-page .notes-hero-content h1 {
                font-size: 38px;
            }

            .mynotes-page .notes-content {
                padding: 50px 0;
            }

            .mynotes-page .notes-heading h2 {
                font-size: 27px;
            }

            .mynotes-page .notes-grid th,
            .mynotes-page .notes-grid td {
                padding: 10px 8px;
                font-size: 12px;
            }
        }

        @media (max-width: 480px) {
            .mynotes-page .notes-box {
                padding: 25px 16px;
            }

            .mynotes-page .notes-hero-content h1 {
                font-size: 32px;
            }

            .mynotes-page .notes-hero-content p {
                font-size: 14px;
            }

            .mynotes-page .notes-btn {
                width: 100%;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="mynotes-page">

        <!-- HERO SECTION -->

        <section class="notes-hero">
            <div class="notes-hero-content">

                <span class="notes-tag">LEARNSPHERE LEARNING SPACE</span>

                <h1>My Personal Notes</h1>

                <p>
                    Write down important learning points, save your ideas
                    and revise your notes whenever you need.
                </p>

            </div>
        </section>

        <!-- NOTES CONTENT -->

        <section class="notes-content">

            <div class="notes-container">

                <!-- WRITE NOTES -->

                <div class="notes-box">

                    <div class="notes-heading">

                        <div class="notes-heading-icon">
                            <i class="fa fa-book"></i>
                        </div>

                        <h2>Write Your Notes</h2>

                        <p>Keep your important learning points in one place.</p>

                    </div>

                    <asp:Label ID="lblCourse" runat="server"
                        Text="Select Course"
                        CssClass="notes-label">
                    </asp:Label>

                    <asp:DropDownList ID="ddlCourse" runat="server"
                    CssClass="notes-input"
                    AutoPostBack="true"
                    OnSelectedIndexChanged="ddlCourse_SelectedIndexChanged">
                    </asp:DropDownList>

                    <asp:Label ID="lblVideo" runat="server"
                        Text="Select Video Lesson"
                        CssClass="notes-label">
                    </asp:Label>

                    <asp:DropDownList ID="ddlVideo" runat="server"
                        CssClass="notes-input">
                    </asp:DropDownList>

                    <asp:Label ID="lblNote" runat="server"
                        Text="Your Notes"
                        CssClass="notes-label">
                    </asp:Label>

                    <asp:TextBox ID="txtNotes" runat="server"
                        TextMode="MultiLine"
                        Rows="6"
                        CssClass="notes-input notes-textarea"
                        placeholder="Write your important learning points here...">
                    </asp:TextBox>

                    <div style="text-align:center;">

                        <asp:Button ID="btnSave" runat="server"
                            Text="Save Notes"
                            CssClass="notes-btn"
                            OnClick="btnSave_Click" />

                    </div>

                    <asp:Label ID="lblMessage" runat="server"
                        CssClass="notes-message">
                    </asp:Label>

                </div>

                <!-- SAVED NOTES -->

                <div class="saved-notes">

                    <div class="saved-heading">

                        <h2>My Saved Notes</h2>

                        <p>All your saved learning notes are available here.</p>

                    </div>

                    <asp:GridView ID="gvNotes" runat="server"
                        AutoGenerateColumns="False"
                        CssClass="notes-grid"
                        GridLines="None"
                        EmptyDataText="No personal notes found.">

                        <Columns>

                            <asp:TemplateField HeaderText="Course Name">
                                <ItemTemplate>
                                    <asp:Label ID="lblCourseName" runat="server"
                                        Text='<%# Eval("CourseName") %>'>
                                    </asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Video Lesson">
                                <ItemTemplate>
                                    <asp:Label ID="lblVideoName" runat="server"
                                        Text='<%# Eval("VideoTitle") %>'>
                                    </asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="My Notes">
                                <ItemTemplate>
                                    <asp:Label ID="lblNoteText" runat="server"
                                        Text='<%# Eval("NoteText") %>'>
                                    </asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Created Date">
                                <ItemTemplate>
                                    <asp:Label ID="lblCreatedDate" runat="server"
                                        Text='<%# Eval("CreatedDate", "{0:dd MMM yyyy}") %>'>
                                    </asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                        </Columns>

                    </asp:GridView>

                </div>

            </div>

        </section>

    </div>

</asp:Content>
