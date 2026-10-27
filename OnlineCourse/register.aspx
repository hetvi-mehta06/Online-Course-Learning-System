<%@ Page Title="" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="OnlineCourse.register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>

        /* =====================================================
           REGISTER PAGE
        ===================================================== */

        .register-page {
            min-height: 100vh;
            padding: 55px 0 90px;
            position: relative;
            overflow: hidden;

            background:
                radial-gradient(
                    circle at 8% 15%,
                    rgba(124, 58, 237, 0.20),
                    transparent 30%
                ),
                radial-gradient(
                    circle at 92% 75%,
                    rgba(6, 182, 212, 0.14),
                    transparent 32%
                ),
                linear-gradient(
                    135deg,
                    #070a1c,
                    #10132d 50%,
                    #080b20
                );
        }


        /* Background glow */

        .register-page::before {
            content: "";
            position: absolute;

            width: 300px;
            height: 300px;

            top: -100px;
            left: -100px;

            border-radius: 50%;

            background: rgba(124, 58, 237, 0.18);

            filter: blur(80px);

            pointer-events: none;
        }

        .register-page::after {
            content: "";
            position: absolute;

            width: 350px;
            height: 350px;

            right: -120px;
            bottom: -130px;

            border-radius: 50%;

            background: rgba(6, 182, 212, 0.12);

            filter: blur(90px);

            pointer-events: none;
        }


        /* =====================================================
           MAIN CONTAINER
        ===================================================== */

        .register-container {
            width: 92%;
            max-width: 1150px;
            margin: auto;

            position: relative;
            z-index: 2;
        }


        /* =====================================================
           PAGE HEADER
        ===================================================== */

        .register-page-header {
            text-align: center;

            margin-bottom: 35px;
        }

        .register-badge {
            display: inline-flex;
            align-items: center;
            gap: 8px;

            padding: 8px 16px;

            border-radius: 30px;

            color: #c4b5fd;

            font-size: 12px;
            font-weight: 700;

            letter-spacing: 0.5px;

            background:
                rgba(124, 58, 237, 0.12);

            border:
                1px solid rgba(124, 58, 237, 0.28);

            box-shadow:
                0 8px 25px rgba(124, 58, 237, 0.08);
        }

        .register-badge i {
            color: #06b6d4;
        }

        .register-page-title {
            margin: 17px 0 8px;

            color: #ffffff;

            font-size: 38px;
            font-weight: 800;

            letter-spacing: -1px;
        }

        .register-page-title span {
            background:
                linear-gradient(
                    135deg,
                    #a855f7,
                    #06b6d4
                );

            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .register-page-subtitle {
            margin: 0;

            color: #94a3b8;

            font-size: 14px;
        }


        /* =====================================================
           MAIN GRID
        ===================================================== */

        .register-grid {
            display: grid;

            grid-template-columns: 0.85fr 1.65fr;

            gap: 28px;

            align-items: start;
        }


        /* =====================================================
           LEFT INFORMATION CARD
        ===================================================== */

        .register-info-card {
            padding: 30px;

            border-radius: 25px;

            background:
                linear-gradient(
                    145deg,
                    rgba(25, 30, 67, 0.94),
                    rgba(12, 16, 40, 0.94)
                );

            border:
                1px solid rgba(255,255,255,0.08);

            box-shadow:
                0 25px 60px rgba(0,0,0,0.30),
                0 0 35px rgba(124,58,237,0.07);

            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
        }

        .register-info-icon {
            width: 60px;
            height: 60px;

            display: flex;
            align-items: center;
            justify-content: center;

            border-radius: 18px;

            color: #ffffff;

            font-size: 25px;

            background:
                linear-gradient(
                    135deg,
                    #7c3aed,
                    #06b6d4
                );

            box-shadow:
                0 12px 30px rgba(124,58,237,0.30);

            margin-bottom: 22px;
        }

        .register-info-title {
            margin: 0 0 12px;

            color: #ffffff;

            font-size: 23px;
            font-weight: 750;
        }

        .register-info-text {
            margin: 0 0 25px;

            color: #94a3b8;

            font-size: 13px;

            line-height: 1.8;
        }


        /* Benefits */

        .register-benefits {
            list-style: none;

            padding: 0;
            margin: 0;
        }

        .register-benefits li {
            display: flex;
            align-items: center;

            gap: 11px;

            margin-bottom: 15px;

            color: #cbd5e1;

            font-size: 13px;
        }

        .register-benefits li i {
            width: 25px;
            height: 25px;

            display: flex;
            align-items: center;
            justify-content: center;

            border-radius: 8px;

            color: #67e8f9;

            background:
                rgba(6,182,212,0.10);

            border:
                1px solid rgba(6,182,212,0.16);

            font-size: 11px;
        }


        /* =====================================================
           REGISTER FORM CARD
        ===================================================== */

        .register-form-card {
            padding: 35px;

            border-radius: 27px;

            background:
                linear-gradient(
                    145deg,
                    rgba(25, 30, 67, 0.96),
                    rgba(12, 16, 40, 0.96)
                );

            border:
                1px solid rgba(255,255,255,0.09);

            box-shadow:
                0 30px 75px rgba(0,0,0,0.38),
                0 0 40px rgba(124,58,237,0.08);

            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
        }


        /* Form heading */

        .register-form-title {
            margin: 0 0 7px;

            color: #ffffff;

            font-size: 25px;
            font-weight: 750;
        }

        .register-form-subtitle {
            margin: 0 0 27px;

            color: #64748b;

            font-size: 13px;
        }


        /* =====================================================
           FORM GROUP
        ===================================================== */

        .register-field {
            margin-bottom: 20px;
        }

        .register-field label {
            display: block;

            margin-bottom: 8px;

            color: #cbd5e1;

            font-size: 13px;
            font-weight: 600;
        }


        /* =====================================================
           TEXTBOX / DROPDOWN
        ===================================================== */

        .register-input {
            width: 100% !important;

            min-height: 48px;

            padding: 12px 15px !important;

            color: #f8fafc !important;

            background:
                rgba(255,255,255,0.045) !important;

            border:
                1px solid rgba(255,255,255,0.10) !important;

            border-radius: 13px !important;

            outline: none;

            font-family: 'Poppins', sans-serif;

            font-size: 13px;

            transition:
                border-color 0.3s ease,
                box-shadow 0.3s ease,
                background 0.3s ease;
        }

        .register-input::placeholder {
            color: #64748b !important;
        }

        .register-input:focus {
            background:
                rgba(124,58,237,0.07) !important;

            border-color:
                rgba(139,92,246,0.65) !important;

            box-shadow:
                0 0 0 4px rgba(124,58,237,0.10),
                0 8px 25px rgba(124,58,237,0.08);
        }


        /* Dropdown */

        select.register-input {
            cursor: pointer;
        }

        select.register-input option {
            background: #151936;
            color: #ffffff;
        }


        /* =====================================================
           REGISTER BUTTON
        ===================================================== */

        .register-button {
            width: 100%;

            min-height: 50px;

            border: none !important;

            border-radius: 14px !important;

            color: #ffffff !important;

            background:
                linear-gradient(
                    135deg,
                    #7c3aed,
                    #6366f1,
                    #06b6d4
                ) !important;

            font-family: 'Poppins', sans-serif;

            font-size: 14px;

            font-weight: 700;

            cursor: pointer;

            box-shadow:
                0 12px 30px rgba(124,58,237,0.28);

            transition:
                transform 0.3s ease,
                box-shadow 0.3s ease;
        }

        .register-button:hover {
            transform: translateY(-3px);

            box-shadow:
                0 17px 38px rgba(6,182,212,0.25);
        }


        /* =====================================================
           LOGIN LINK
        ===================================================== */

        .register-login {
            margin: 23px 0 0;

            text-align: center;

            color: #64748b;

            font-size: 13px;
        }

        .register-login a {
            color: #a78bfa !important;

            text-decoration: none !important;

            font-weight: 600;

            transition: 0.3s ease;
        }

        .register-login a:hover {
            color: #67e8f9 !important;
        }


        /* =====================================================
           REGISTERED STUDENTS
        ===================================================== */

        .students-section {
            margin-top: 45px;
        }

        .students-heading {
            display: flex;

            align-items: center;
            justify-content: space-between;

            gap: 15px;

            margin-bottom: 18px;
        }

        .students-title {
            margin: 0;

            color: #ffffff;

            font-size: 22px;
            font-weight: 750;
        }

        .students-badge {
            padding: 6px 12px;

            border-radius: 20px;

            color: #67e8f9;

            background:
                rgba(6,182,212,0.08);

            border:
                1px solid rgba(6,182,212,0.15);

            font-size: 11px;
            font-weight: 600;
        }


        /* =====================================================
           GRIDVIEW
        ===================================================== */

        .students-table-wrapper {
            width: 100%;

            overflow-x: auto;

            border-radius: 18px;

            border:
                1px solid rgba(255,255,255,0.08);

            background:
                rgba(255,255,255,0.025);

            scrollbar-width: thin;
        }

        .students-table {
            width: 100% !important;

            min-width: 850px;

            margin: 0 !important;

            border-collapse: collapse !important;

            color: #cbd5e1;
        }

        .students-table th {
            padding: 15px 13px !important;

            color: #ffffff !important;

            background:
                linear-gradient(
                    135deg,
                    rgba(124,58,237,0.25),
                    rgba(6,182,212,0.12)
                ) !important;

            border:
                1px solid rgba(255,255,255,0.06) !important;

            font-size: 12px;

            font-weight: 700;

            white-space: nowrap;
        }

        .students-table td {
            padding: 13px !important;

            color: #aebbd0 !important;

            background:
                rgba(255,255,255,0.025) !important;

            border:
                1px solid rgba(255,255,255,0.06) !important;

            font-size: 12px;

            vertical-align: middle;
        }

        .students-table tr:hover td {
            background:
                rgba(124,58,237,0.08) !important;

            color: #ffffff !important;
        }

        .students-table a {
            display: inline-block;

            padding: 6px 11px;

            border-radius: 8px;

            color: #ffffff !important;

            text-decoration: none !important;

            font-size: 11px;
            font-weight: 600;

            background:
                linear-gradient(
                    135deg,
                    #7c3aed,
                    #6366f1
                );

            transition: 0.25s ease;
        }

        .students-table a:hover {
            transform: translateY(-2px);

            box-shadow:
                0 6px 18px rgba(124,58,237,0.25);
        }


        /* =====================================================
           RESPONSIVE
        ===================================================== */

        @media (max-width: 900px) {

            .register-grid {
                grid-template-columns: 1fr;
            }

            .register-info-card {
                order: 2;
            }

            .register-form-card {
                order: 1;
            }
        }


        @media (max-width: 600px) {

            .register-page {
                padding: 35px 0 60px;
            }

            .register-container {
                width: 94%;
            }

            .register-page-title {
                font-size: 29px;
            }

            .register-form-card,
            .register-info-card {
                padding: 23px 18px;
                border-radius: 21px;
            }

            .students-heading {
                align-items: flex-start;
                flex-direction: column;
            }
        }

    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<section class="register-page">

    <div class="register-container">


        <!-- =================================================
             PAGE HEADER
        ================================================== -->

        <div class="register-page-header">

            <div class="register-badge">
                <i class="fa fa-user-plus"></i>
                JOIN LEARNSPHERE
            </div>

            <h1 class="register-page-title">
                Create Your <span>Account</span>
            </h1>

            <p class="register-page-subtitle">
                Start your learning journey with LearnSphere today.
            </p>

        </div>


        <!-- =================================================
             MAIN GRID
        ================================================== -->

        <div class="register-grid">


            <!-- =================================================
                 LEFT INFO CARD
            ================================================== -->

            <div class="register-info-card">

                <div class="register-info-icon">
                    <i class="fa fa-graduation-cap"></i>
                </div>

                <h2 class="register-info-title">
                    Welcome to LearnSphere
                </h2>

                <p class="register-info-text">
                    Create your student account and get access to
                    quality online courses, learning resources and
                    a better learning experience.
                </p>


                <ul class="register-benefits">

                    <li>
                        <i class="fa fa-check"></i>
                        Learn anytime, anywhere
                    </li>

                    <li>
                        <i class="fa fa-check"></i>
                        Access quality courses
                    </li>

                    <li>
                        <i class="fa fa-check"></i>
                        Track your learning progress
                    </li>

                    <li>
                        <i class="fa fa-check"></i>
                        Improve your technical skills
                    </li>

                    <li>
                        <i class="fa fa-check"></i>
                        Build your learning journey
                    </li>

                </ul>

            </div>


            <!-- =================================================
                 REGISTRATION FORM
            ================================================== -->

            <div class="register-form-card">

                <h2 class="register-form-title">
                    Student Registration
                </h2>

                <p class="register-form-subtitle">
                    Fill in your details to create your account.
                </p>


                <!-- Full Name -->

                <div class="register-field">

                    <asp:Label
                        ID="lblName"
                        runat="server"
                        Text="Full Name">
                    </asp:Label>

                    <asp:TextBox
                        ID="txtName"
                        runat="server"
                        CssClass="register-input"
                        placeholder="Enter your full name">
                    </asp:TextBox>

                </div>


                <!-- Email -->

                <div class="register-field">

                    <asp:Label
                        ID="lblEmail"
                        runat="server"
                        Text="Email Address">
                    </asp:Label>

                    <asp:TextBox
                        ID="txtEmail"
                        runat="server"
                        CssClass="register-input"
                        TextMode="Email"
                        placeholder="Enter your email">
                    </asp:TextBox>

                </div>


                <!-- Phone -->

                <div class="register-field">

                    <asp:Label
                        ID="lblPhone"
                        runat="server"
                        Text="Mobile Number">
                    </asp:Label>

                    <asp:TextBox
                        ID="txtPhone"
                        runat="server"
                        CssClass="register-input"
                        TextMode="Phone"
                        placeholder="Enter mobile number">
                    </asp:TextBox>

                </div>


                <!-- Gender -->

                <div class="register-field">

                    <asp:Label
                        ID="lblGender"
                        runat="server"
                        Text="Gender">
                    </asp:Label>

                    <asp:DropDownList
                        ID="ddlGender"
                        runat="server"
                        CssClass="register-input">

                        <asp:ListItem
                            Text="Select Gender"
                            Value="">
                        </asp:ListItem>

                        <asp:ListItem
                            Text="Male"
                            Value="Male">
                        </asp:ListItem>

                        <asp:ListItem
                            Text="Female"
                            Value="Female">
                        </asp:ListItem>

                    </asp:DropDownList>

                </div>


                <!-- Password -->

                <div class="register-field">

                    <asp:Label
                        ID="lblPassword"
                        runat="server"
                        Text="Password">
                    </asp:Label>

                    <asp:TextBox
                        ID="txtPassword"
                        runat="server"
                        CssClass="register-input"
                        TextMode="Password"
                        placeholder="Enter password">
                    </asp:TextBox>

                </div>


                <!-- Confirm Password -->

                <div class="register-field">

                    <asp:Label
                        ID="lblConfirmpassword"
                        runat="server"
                        Text="Confirm Password">
                    </asp:Label>

                    <asp:TextBox
                        ID="txtConfirmPassword"
                        runat="server"
                        CssClass="register-input"
                        TextMode="Password"
                        placeholder="Confirm password">
                    </asp:TextBox>

                </div>


                <!-- Register -->

                <div class="register-field">

                    <asp:Button
                        ID="btnRegister"
                        runat="server"
                        Text="Create Account"
                        CssClass="register-button"
                        OnClick="btnRegister_Click" />

                </div>


                <!-- Login -->

                <p class="register-login">

                    Already have an account?

                    <asp:HyperLink
                        ID="lnkLogin"
                        runat="server"
                        NavigateUrl="~/login.aspx"
                        Text="Login Here">
                    </asp:HyperLink>

                </p>


                <!-- =================================================
                     REGISTERED STUDENTS
                ================================================== -->

                <div class="students-section">

                    <div class="students-heading">

                        <h3 class="students-title">
                            Registered Students
                        </h3>

                        <span class="students-badge">
                            Student Records
                        </span>

                    </div>


                    <div class="students-table-wrapper">

                        <asp:GridView
    ID="gvRegister"
    runat="server"
    AutoGenerateColumns="false"
    CssClass="students-table"
    Width="100%"
    OnSelectedIndexChanged="gvRegister_SelectedIndexChanged1"
    OnRowCommand="gvRegister_RowCommand">

    <Columns>

        <asp:TemplateField HeaderText="Id">
            <ItemTemplate>
                <asp:Label
                    ID="lblId"
                    runat="server"
                    Text='<%# Eval("Id") %>'>
                </asp:Label>
            </ItemTemplate>
        </asp:TemplateField>


        <asp:TemplateField HeaderText="Full Name">
            <ItemTemplate>
                <asp:Label
                    ID="lblName"
                    runat="server"
                    Text='<%# Eval("Full Name") %>'>
                </asp:Label>
            </ItemTemplate>
        </asp:TemplateField>


        <asp:TemplateField HeaderText="Email Address">
            <ItemTemplate>
                <asp:Label
                    ID="lblEmail"
                    runat="server"
                    Text='<%# Eval("Email Address") %>'>
                </asp:Label>
            </ItemTemplate>
        </asp:TemplateField>


        <asp:TemplateField HeaderText="Mobile Number">
            <ItemTemplate>
                <asp:Label
                    ID="lblMobile"
                    runat="server"
                    Text='<%# Eval("Mobile Number") %>'>
                </asp:Label>
            </ItemTemplate>
        </asp:TemplateField>


        <asp:TemplateField HeaderText="Gender">
            <ItemTemplate>
                <asp:Label
                    ID="lblGender"
                    runat="server"
                    Text='<%# Eval("Gender") %>'>
                </asp:Label>
            </ItemTemplate>
        </asp:TemplateField>


        <asp:TemplateField HeaderText="Password">
            <ItemTemplate>
                <asp:Label
                    ID="lblPassword"
                    runat="server"
                    Text='<%# Eval("Password") %>'>
                </asp:Label>
            </ItemTemplate>
        </asp:TemplateField>


        <asp:TemplateField HeaderText="Confirm Password">
            <ItemTemplate>
                <asp:Label
                    ID="lblConfirmPassword"
                    runat="server"
                    Text='<%# Eval("Confirm Password") %>'>
                </asp:Label>
            </ItemTemplate>
        </asp:TemplateField>


        <asp:TemplateField HeaderText="Edit">
            <ItemTemplate>
                <asp:LinkButton
                    ID="btnEdit"
                    runat="server"
                    Text="Edit"
                    CommandName="cmd_edt"
                    CommandArgument='<%# Eval("Id") %>'>
                </asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>


        <asp:TemplateField HeaderText="Delete">
            <ItemTemplate>
                <asp:LinkButton
                    ID="btnDelete"
                    runat="server"
                    Text="Delete"
                    CommandName="cmd_dlt"
                    CommandArgument='<%# Eval("Id") %>'>
                </asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>

    </Columns>

</asp:GridView>

                    </div>

                </div>

            </div>

        </div>

    </div>

</section>

</asp:Content>