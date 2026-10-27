
<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="OnlineCourse.profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>
    .student-profile-page {
        min-height: 100vh;
        padding: 125px 0 85px;
        background:
            radial-gradient(circle at 8% 10%, rgba(124,58,237,0.20), transparent 28%),
            radial-gradient(circle at 92% 18%, rgba(6,182,212,0.13), transparent 25%),
            radial-gradient(circle at 50% 90%, rgba(236,72,153,0.10), transparent 30%),
            linear-gradient(135deg, #08051a 0%, #12082b 48%, #08051b 100%);
        position: relative;
        overflow: hidden;
    }

    .student-profile-page::before,
    .student-profile-page::after {
        content: "";
        position: absolute;
        border-radius: 50%;
        pointer-events: none;
        filter: blur(85px);
    }

    .student-profile-page::before {
        width: 320px;
        height: 320px;
        left: -130px;
        top: 220px;
        background: rgba(124,58,237,0.14);
        animation: profileGlowOne 8s ease-in-out infinite alternate;
    }

    .student-profile-page::after {
        width: 350px;
        height: 350px;
        right: -150px;
        bottom: 100px;
        background: rgba(6,182,212,0.10);
        animation: profileGlowTwo 9s ease-in-out infinite alternate;
    }

    @keyframes profileGlowOne {
        from { transform: translate(0,0) scale(1); }
        to { transform: translate(80px,40px) scale(1.15); }
    }

    @keyframes profileGlowTwo {
        from { transform: translate(0,0) scale(1); }
        to { transform: translate(-70px,-50px) scale(1.12); }
    }

    .profile-inner {
        width: 92%;
        max-width: 1400px;
        margin: 0 auto;
        position: relative;
        z-index: 2;
    }

    .profile-page-header {
        display: flex;
        align-items: center;
        justify-content: space-between;
        gap: 20px;
        padding: 28px 32px;
        margin-bottom: 28px;
        border-radius: 24px;
        background: linear-gradient(135deg, rgba(32,20,68,0.94), rgba(15,9,37,0.88));
        border: 1px solid rgba(255,255,255,0.09);
        box-shadow: 0 25px 65px rgba(0,0,0,0.40), inset 0 1px 0 rgba(255,255,255,0.06);
        backdrop-filter: blur(18px);
        -webkit-backdrop-filter: blur(18px);
        position: relative;
        overflow: hidden;
    }

    .profile-page-header::before {
        content: "";
        position: absolute;
        width: 260px;
        height: 260px;
        left: -120px;
        top: -150px;
        border-radius: 50%;
        background: rgba(124,58,237,0.18);
        filter: blur(40px);
        pointer-events: none;
    }

    .profile-page-header::after {
        content: "";
        position: absolute;
        width: 190px;
        height: 190px;
        right: -65px;
        top: -85px;
        border-radius: 50%;
        background: rgba(6,182,212,0.10);
        filter: blur(20px);
        pointer-events: none;
    }

    .profile-title-box {
        display: flex;
        align-items: center;
        gap: 18px;
        position: relative;
        z-index: 2;
    }

    .profile-title-icon {
        width: 62px;
        height: 62px;
        min-width: 62px;
        border-radius: 19px;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 27px;
        color: #ffffff;
        background: linear-gradient(135deg, #7c3aed, #06b6d4);
        box-shadow: 0 12px 30px rgba(124,58,237,0.35), 0 0 28px rgba(6,182,212,0.15);
    }

    .profile-title-box h1 {
        margin: 0;
        color: #ffffff;
        font-size: 31px;
        font-weight: 800;
        letter-spacing: -0.5px;
    }

    .profile-title-box p {
        margin: 7px 0 0;
        color: #aeb7d4;
        font-size: 14px;
    }

    .student-badge {
        position: relative;
        z-index: 2;
        padding: 10px 17px;
        border-radius: 30px;
        color: #d9faff;
        background: rgba(6,182,212,0.10);
        border: 1px solid rgba(6,182,212,0.28);
        font-size: 13px;
        font-weight: 700;
        white-space: nowrap;
        box-shadow: 0 0 20px rgba(6,182,212,0.07);
    }

    .profile-page {
        display: grid;
        grid-template-columns: minmax(280px, 380px) minmax(0, 1fr);
        gap: 26px;
        align-items: start;
    }

    .profile-box {
        min-width: 0;
        padding: 28px;
        border-radius: 24px;
        background: linear-gradient(145deg, rgba(28,18,59,0.94), rgba(13,8,31,0.90));
        border: 1px solid rgba(255,255,255,0.08);
        box-shadow: 0 25px 60px rgba(0,0,0,0.38), inset 0 1px 0 rgba(255,255,255,0.05);
        backdrop-filter: blur(18px);
        -webkit-backdrop-filter: blur(18px);
        position: relative;
        overflow: hidden;
        box-sizing: border-box;
    }

    .profile-box h2 {
        color: #ffffff;
        font-size: 22px;
        font-weight: 800;
        margin: 0 0 24px;
    }

    .profile-img {
        display: block;
        width: 150px;
        height: 150px;
        object-fit: cover;
        border-radius: 50%;
        padding: 5px;
        margin: 0 auto 22px;
        border: 3px solid #7c3aed;
        background: linear-gradient(135deg, #7c3aed, #06b6d4);
        box-shadow: 0 12px 35px rgba(124,58,237,0.28);
    }

    .profile-label {
        display: block;
        margin: 17px 0 8px;
        color: #aeb7d4;
        font-size: 12px;
        font-weight: 800;
        text-transform: uppercase;
        letter-spacing: 0.6px;
    }

    .profile-input {
        display: block;
        width: 100%;
        min-height: 44px;
        padding: 11px 13px;
        box-sizing: border-box;
        border-radius: 10px;
        border: 1px solid rgba(139,92,246,0.25);
        outline: none;
        background: rgba(255,255,255,0.045);
        color: #ffffff;
        font-size: 14px;
        transition: 0.25s ease;
    }

    .profile-input:focus {
        border-color: #06b6d4;
        box-shadow: 0 0 0 3px rgba(6,182,212,0.10);
    }

    .profile-input option {
        color: #ffffff;
        background: #12082b;
    }

    input[type="file"].profile-input {
        padding: 8px;
    }

    .profile-btn {
        display: inline-block;
        min-height: 42px;
        padding: 11px 17px;
        margin: 12px 5px 0 0;
        border: 1px solid rgba(255,255,255,0.10);
        border-radius: 10px;
        background: linear-gradient(135deg, #7c3aed, #2563eb);
        color: #ffffff;
        font-size: 13px;
        font-weight: 750;
        cursor: pointer;
        transition: 0.25s ease;
    }

    .profile-btn:hover {
        transform: translateY(-2px);
        box-shadow: 0 10px 25px rgba(124,58,237,0.30);
    }

    .profile-box > .profile-btn {
        min-width: 95px;
    }

    .profile-box > #fuProfilePhoto {
        display: block;
        max-width: 100%;
        margin: 0 auto 12px;
        color: #cbd5e1;
        font-size: 12px;
    }

    .grid-scroll {
        width: 100%;
        overflow-x: auto;
        border-radius: 12px;
    }

    .profile-grid {
        width: 100%;
        min-width: 760px;
        border-collapse: collapse;
        color: #e5e7eb;
        font-size: 13px;
        background: rgba(255,255,255,0.02);
    }

    .profile-grid th {
        padding: 14px 12px;
        text-align: left;
        white-space: nowrap;
        color: #ffffff;
        background: linear-gradient(135deg, #5b21b6, #155e75);
        border: 1px solid rgba(255,255,255,0.08);
    }

    .profile-grid td {
        padding: 12px;
        border: 1px solid rgba(255,255,255,0.07);
        vertical-align: middle;
    }

    .profile-grid tr:hover td {
        background: rgba(124,58,237,0.07);
    }

    .profile-grid-img {
        display: block;
        width: 50px;
        height: 50px;
        object-fit: cover;
        border-radius: 50%;
        border: 2px solid #7c3aed;
    }

    .edit-btn,
    .delete-btn {
        padding: 8px 11px;
        margin: 3px;
        border: none;
        border-radius: 7px;
        color: #ffffff;
        font-size: 12px;
        font-weight: 700;
        cursor: pointer;
    }

    .edit-btn {
        background: linear-gradient(135deg, #7c3aed, #2563eb);
    }

    .delete-btn {
        background: linear-gradient(135deg, #e11d48, #be123c);
    }

    .edit-btn:hover,
    .delete-btn:hover {
        filter: brightness(1.15);
    }

    #lblmsg {
        display: block;
        margin-top: 15px;
        color: #86efac !important;
        font-size: 13px;
        overflow-wrap: anywhere;
    }

    @media (max-width: 1050px) {
        .profile-page {
            grid-template-columns: 300px minmax(0, 1fr);
            gap: 18px;
        }

        .profile-box {
            padding: 22px;
        }
    }

    @media (max-width: 850px) {
        .profile-page {
            grid-template-columns: 1fr;
        }

        .profile-box {
            width: 100%;
        }
    }

    @media (max-width: 767px) {
        .student-profile-page {
            padding: 95px 0 60px;
        }

        .profile-inner {
            width: 94%;
        }

        .profile-page-header {
            padding: 22px;
            margin-bottom: 22px;
            border-radius: 20px;
        }

        .profile-title-box {
            gap: 13px;
        }

        .profile-title-icon {
            width: 52px;
            height: 52px;
            min-width: 52px;
            font-size: 22px;
            border-radius: 15px;
        }

        .profile-title-box h1 {
            font-size: 24px;
        }

        .profile-title-box p {
            font-size: 12px;
        }

        .student-badge {
            display: none;
        }

        .profile-box {
            padding: 21px;
        }
    }

    @media (max-width: 480px) {
        .student-profile-page {
            padding-top: 90px;
        }

        .profile-inner {
            width: 92%;
        }

        .profile-page-header {
            padding: 18px;
        }

        .profile-title-box h1 {
            font-size: 21px;
        }

        .profile-title-box p {
            font-size: 11px;
        }

        .profile-img {
            width: 135px;
            height: 135px;
        }

        .profile-box {
            padding: 17px;
        }

        .profile-btn {
            padding: 10px 12px;
            font-size: 12px;
        }
    }
</style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="student-profile-page">
    <div class="profile-inner">

        <!-- PAGE HEADER -->
        <div class="profile-page-header">

            <div class="profile-title-box">
                <div class="profile-title-icon">
                    <i class="fa fa-user"></i>
                </div>

                <div>
                    <h1>My Profile</h1>
                    <p>Manage your personal information and learning profile</p>
                </div>
            </div>

            <div class="student-badge">
                <i class="fa fa-graduation-cap"></i>
                Student Profile
            </div>

        </div>

        <div class="profile-page">

            <!-- PROFILE FORM -->
            <div class="profile-box">

                <asp:Image ID="imgProfile" runat="server"
                    ImageUrl="~/Images/default-profile.png"
                    CssClass="profile-img" />

                <asp:FileUpload ID="fuProfilePhoto" runat="server" />

                <asp:Button ID="btnChangePhoto" runat="server"
                    Text="Change Photo"
                    CssClass="profile-btn"
                    OnClick="btnChangePhoto_Click" />

                <label class="profile-label">Full Name</label>
                <asp:TextBox ID="txtName" runat="server"
                    CssClass="profile-input" />

                <label class="profile-label">Email Address</label>
                <asp:TextBox ID="txtEmail" runat="server"
                    CssClass="profile-input" />

                <label class="profile-label">Mobile Number</label>
                <asp:TextBox ID="txtMobile" runat="server"
                    CssClass="profile-input" />

                <label class="profile-label">Gender</label>
                <asp:DropDownList ID="ddlGender" runat="server"
                    CssClass="profile-input">
                    <asp:ListItem Text="Select Gender" Value="" />
                    <asp:ListItem Text="Male" Value="Male" />
                    <asp:ListItem Text="Female" Value="Female" />
                    <asp:ListItem Text="Other" Value="Other" />
                </asp:DropDownList>

                <label class="profile-label">City</label>
                <asp:TextBox ID="txtCity" runat="server"
                    CssClass="profile-input" />

                <asp:Button ID="btnSave" runat="server"
                    Text="Save"
                    CssClass="profile-btn"
                    OnClick="btnSave_Click" />

                <asp:Button ID="btnEdit" runat="server"
                    Text="Edit"
                    CssClass="profile-btn"
                    OnClick="btnEdit_Click" />

                <asp:Button ID="btnUpdate" runat="server"
                    Text="Update"
                    CssClass="profile-btn"
                    OnClick="btnUpdate_Click" />

                <asp:Button ID="btnClear" runat="server"
                    Text="Clear"
                    CssClass="profile-btn"
                    OnClick="btnClear_Click" />

                <br />

                <asp:Label ID="lblmsg" runat="server" ForeColor="Green" />

            </div>

            <!-- PROFILE DETAILS GRID -->
            <div class="profile-box">

                <h2>Profile Details</h2>

                <div class="grid-scroll">

                    <asp:GridView ID="GridView1" runat="server"
                        AutoGenerateColumns="False"
                        DataKeyNames="Id"
                        CssClass="profile-grid"
                        GridLines="Both"
                        EmptyDataText="No profile records found."
                        OnRowCommand="GridView1_RowCommand">

                        <Columns>

                            <asp:TemplateField HeaderText="ID">
                                <ItemTemplate>
                                    <asp:Label ID="lblID" runat="server"
                                        Text='<%# Eval("Id") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Student Name">
                                <ItemTemplate>
                                    <asp:Label ID="lblName" runat="server"
                                        Text='<%# Eval("FullName") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Email">
                                <ItemTemplate>
                                    <asp:Label ID="lblEmail" runat="server"
                                        Text='<%# Eval("Email") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Mobile">
                                <ItemTemplate>
                                    <asp:Label ID="lblMobile" runat="server"
                                        Text='<%# Eval("Mobile") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Gender">
                                <ItemTemplate>
                                    <asp:Label ID="lblGender" runat="server"
                                        Text='<%# Eval("Gender") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="City">
                                <ItemTemplate>
                                    <asp:Label ID="lblCity" runat="server"
                                        Text='<%# Eval("City") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Photo">
                                <ItemTemplate>
                                    <asp:Image ID="imgGridProfile" runat="server"
                                        ImageUrl='<%# Eval("ProfilePhoto").ToString() == "" ? "~/Images/default-profile.png" : Eval("ProfilePhoto").ToString() %>'
                                        Width="50px" Height="50px"
                                        AlternateText="Profile Photo"
                                        CssClass="profile-grid-img" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Action">
                                <ItemTemplate>
                                    <asp:Button ID="btnRowEdit" runat="server"
                                        Text="Edit"
                                        CssClass="edit-btn"
                                        CommandName="EditProfile"
                                        CommandArgument='<%# Eval("Id") %>' />

                                    <asp:Button ID="btnRowDelete" runat="server"
                                        Text="Delete"
                                        CssClass="delete-btn"
                                        CommandName="DeleteProfile"
                                        CommandArgument='<%# Eval("Id") %>'
                                        OnClientClick="return confirm('Are you sure you want to delete this profile?');" />
                                </ItemTemplate>
                            </asp:TemplateField>

                        </Columns>

                    </asp:GridView>

                </div>
            </div>

        </div>

    </div>
</div>

</asp:Content>
