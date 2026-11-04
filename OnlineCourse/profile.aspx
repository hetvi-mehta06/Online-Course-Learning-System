
<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="OnlineCourse.profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
.student-profile-page {
    min-height: 100vh;
    padding: 100px 0 60px;
    background:
        radial-gradient(circle at 8% 10%, rgba(124,58,237,.20), transparent 28%),
        radial-gradient(circle at 92% 18%, rgba(6,182,212,.13), transparent 25%),
        radial-gradient(circle at 50% 90%, rgba(236,72,153,.10), transparent 30%),
        linear-gradient(135deg,#08051a 0%,#12082b 48%,#08051b 100%);
    position: relative;
    overflow: hidden;
    color: #e5e7eb;
    box-sizing: border-box;
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
    background: rgba(124,58,237,.14);
    animation: profileGlowOne 8s ease-in-out infinite alternate;
}

.student-profile-page::after {
    width: 350px;
    height: 350px;
    right: -150px;
    bottom: 100px;
    background: rgba(6,182,212,.10);
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
    background: linear-gradient(135deg,rgba(32,20,68,.94),rgba(15,9,37,.88));
    border: 1px solid rgba(255,255,255,.09);
    box-shadow: 0 25px 65px rgba(0,0,0,.40), inset 0 1px 0 rgba(255,255,255,.06);
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
    background: rgba(124,58,237,.18);
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
    background: rgba(6,182,212,.10);
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
    color: #fff;
    background: linear-gradient(135deg,#7c3aed,#06b6d4);
    box-shadow: 0 12px 30px rgba(124,58,237,.35),0 0 28px rgba(6,182,212,.15);
}

.profile-title-box h1 {
    margin: 0;
    color: #fff;
    font-size: 31px;
    font-weight: 800;
    letter-spacing: -.5px;
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
    background: rgba(6,182,212,.10);
    border: 1px solid rgba(6,182,212,.28);
    font-size: 13px;
    font-weight: 700;
    white-space: nowrap;
    box-shadow: 0 0 20px rgba(6,182,212,.07);
}

.profile-page {
    display: grid;
    grid-template-columns: minmax(280px,380px) minmax(0,1fr);
    gap: 26px;
    align-items: start;
}

.profile-box {
    min-width: 0;
    padding: 28px;
    margin-bottom: 26px;
    border-radius: 24px;
    background: linear-gradient(145deg,rgba(28,18,59,.94),rgba(13,8,31,.90));
    border: 1px solid rgba(255,255,255,.08);
    box-shadow: 0 25px 60px rgba(0,0,0,.38),inset 0 1px 0 rgba(255,255,255,.05);
    backdrop-filter: blur(18px);
    -webkit-backdrop-filter: blur(18px);
    position: relative;
    overflow: hidden;
    box-sizing: border-box;
}

.profile-box h2 {
    color: #fff;
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
    background: linear-gradient(135deg,#7c3aed,#06b6d4);
    box-shadow: 0 12px 35px rgba(124,58,237,.28);
}

.profile-label {
    display: block;
    margin: 17px 0 8px;
    color: #aeb7d4;
    font-size: 12px;
    font-weight: 800;
    text-transform: uppercase;
    letter-spacing: .6px;
}

.profile-input {
    display: block;
    width: 100%;
    min-height: 44px;
    padding: 11px 13px;
    box-sizing: border-box;
    border-radius: 10px;
    border: 1px solid rgba(139,92,246,.25);
    outline: none;
    background: rgba(255,255,255,.045);
    color: #fff;
    font-size: 14px;
}

.profile-input:focus {
    border-color: #06b6d4;
    box-shadow: 0 0 0 3px rgba(6,182,212,.10);
}

.profile-input option {
    color: #fff;
    background: #12082b;
}

input[type="file"].profile-input {
    padding: 8px;
}

.profile-box > #fuProfilePhoto {
    display: block;
    max-width: 100%;
    margin: 0 auto 12px;
    color: #cbd5e1;
    font-size: 12px;
}

.profile-btn {
    display: inline-block;
    min-height: 42px;
    padding: 11px 17px;
    margin: 12px 5px 0 0;
    border: 1px solid rgba(255,255,255,.10);
    border-radius: 10px;
    background: linear-gradient(135deg,#7c3aed,#2563eb);
    color: #fff;
    font-size: 13px;
    font-weight: 750;
    cursor: pointer;
    transition: .25s ease;
}

.profile-btn:hover {
    transform: translateY(-2px);
    box-shadow: 0 10px 25px rgba(124,58,237,.30);
}

.profile-box > .profile-btn {
    min-width: 95px;
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
    background: rgba(255,255,255,.02);
}

.profile-grid th {
    padding: 14px 12px;
    text-align: left;
    white-space: nowrap;
    color: #fff;
    background: linear-gradient(135deg,#5b21b6,#155e75);
    border: 1px solid rgba(255,255,255,.08);
}

.profile-grid td {
    padding: 12px;
    border: 1px solid rgba(255,255,255,.07);
    vertical-align: middle;
}

.profile-grid tr:hover td {
    background: rgba(124,58,237,.07);
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
    color: #fff;
    font-size: 12px;
    font-weight: 700;
    cursor: pointer;
}

.edit-btn {
    background: linear-gradient(135deg,#7c3aed,#2563eb);
}

.delete-btn {
    background: linear-gradient(135deg,#e11d48,#be123c);
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

/* MAIN PROFILE DESIGN */
.profile-main-grid {
    display: grid;
    grid-template-columns: 340px minmax(0,1fr);
    gap: 26px;
    align-items: start;
}

.profile-side-card,
.profile-info-card {
    padding: 28px;
    border-radius: 24px;
    background: linear-gradient(145deg,rgba(28,18,59,.94),rgba(13,8,31,.90));
    border: 1px solid rgba(255,255,255,.08);
    box-shadow: 0 25px 60px rgba(0,0,0,.38),inset 0 1px 0 rgba(255,255,255,.05);
    backdrop-filter: blur(18px);
    -webkit-backdrop-filter: blur(18px);
    position: relative;
    overflow: hidden;
    box-sizing: border-box;
}

.profile-side-card {
    text-align: center;
    transition: .35s ease;
}

.profile-side-card:hover {
    transform: translateY(-5px);
    border-color: rgba(124,58,237,.30);
    box-shadow: 0 32px 70px rgba(0,0,0,.45),0 0 30px rgba(124,58,237,.08);
}

.profile-side-card::before {
    content: "";
    position: absolute;
    width: 150px;
    height: 150px;
    left: -70px;
    top: -70px;
    border-radius: 50%;
    background: rgba(124,58,237,.18);
    filter: blur(25px);
}

.profile-image-ring {
    width: 190px;
    height: 190px;
    margin: 0 auto 20px;
    padding: 6px;
    border-radius: 50%;
    background: linear-gradient(135deg,#7c3aed,#06b6d4,#ec4899);
    box-shadow: 0 15px 40px rgba(124,58,237,.30),0 0 35px rgba(6,182,212,.15);
    position: relative;
    z-index: 2;
    box-sizing: border-box;
    animation: imageGlow 4s ease-in-out infinite alternate;
}

@keyframes imageGlow {
    from {
        box-shadow: 0 15px 40px rgba(124,58,237,.25),0 0 25px rgba(6,182,212,.10);
    }
    to {
        box-shadow: 0 18px 45px rgba(124,58,237,.38),0 0 35px rgba(6,182,212,.18);
    }
}

.profile-image-ring img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    display: block;
    border-radius: 50%;
    border: 5px solid #110925;
    box-sizing: border-box;
}

.profile-side-card h2 {
    margin: 0;
    color: #fff;
    font-size: 23px;
    font-weight: 800;
    position: relative;
    z-index: 2;
}

.profile-role {
    margin: 7px 0 22px;
    color: #67e8f9;
    font-size: 13px;
    font-weight: 700;
    position: relative;
    z-index: 2;
}

.profile-status {
    display: inline-flex;
    align-items: center;
    gap: 7px;
    padding: 7px 13px;
    margin-bottom: 22px;
    border-radius: 20px;
    color: #86efac;
    background: rgba(34,197,94,.09);
    border: 1px solid rgba(34,197,94,.20);
    font-size: 11px;
    font-weight: 700;
    position: relative;
    z-index: 2;
}

.status-dot {
    width: 7px;
    height: 7px;
    border-radius: 50%;
    background: #22c55e;
    box-shadow: 0 0 10px rgba(34,197,94,.8);
}

.edit-profile-btn {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 8px;
    width: 100%;
    padding: 13px 18px;
    border-radius: 12px;
    color: #fff !important;
    text-decoration: none !important;
    background: linear-gradient(135deg,#7c3aed,#2563eb);
    border: 1px solid rgba(255,255,255,.08);
    box-shadow: 0 10px 25px rgba(124,58,237,.24);
    font-size: 13px;
    font-weight: 750;
    transition: .28s ease;
    box-sizing: border-box;
    position: relative;
    z-index: 2;
}

.edit-profile-btn:hover {
    color: #fff !important;
    transform: translateY(-2px);
    box-shadow: 0 14px 30px rgba(124,58,237,.35),0 0 20px rgba(6,182,212,.12);
}

.profile-info-card::before {
    content: "";
    position: absolute;
    width: 230px;
    height: 230px;
    right: -130px;
    top: -130px;
    border-radius: 50%;
    background: rgba(124,58,237,.10);
    filter: blur(35px);
    pointer-events: none;
}

.section-heading {
    display: flex;
    align-items: center;
    gap: 12px;
    margin-bottom: 24px;
    position: relative;
    z-index: 2;
}

.section-heading-icon {
    width: 42px;
    height: 42px;
    min-width: 42px;
    border-radius: 12px;
    display: flex;
    align-items: center;
    justify-content: center;
    color: #fff;
    background: linear-gradient(135deg,#ec4899,#7c3aed);
    box-shadow: 0 8px 20px rgba(236,72,153,.20);
}

.section-heading h2 {
    margin: 0;
    color: #fff;
    font-size: 21px;
    font-weight: 800;
}

.info-grid {
    display: grid;
    grid-template-columns: repeat(2,minmax(0,1fr));
    gap: 17px;
    position: relative;
    z-index: 2;
}

.info-field {
    padding: 17px;
    min-height: 72px;
    border-radius: 13px;
    background: rgba(255,255,255,.035);
    border: 1px solid rgba(255,255,255,.06);
    transition: .25s ease;
    box-sizing: border-box;
    min-width: 0;
}

.info-field:hover {
    border-color: rgba(124,58,237,.30);
    background: rgba(124,58,237,.07);
    transform: translateY(-2px);
}

.info-field label {
    display: block;
    margin-bottom: 9px;
    color: #8f9ab9;
    font-size: 11px;
    font-weight: 800;
    text-transform: uppercase;
    letter-spacing: .8px;
}

.info-field input {
    width: 100%;
    height: auto;
    padding: 0;
    border: none !important;
    outline: none !important;
    background: transparent !important;
    box-shadow: none !important;
    color: #fff !important;
    font-size: 14px;
    font-weight: 650;
    box-sizing: border-box;
}

.profile-divider {
    height: 1px;
    border: none;
    margin: 30px 0;
    background: linear-gradient(90deg,transparent,rgba(139,92,246,.35),rgba(6,182,212,.35),transparent);
}

.sub-heading {
    margin: 0 0 15px;
    color: #fff;
    font-size: 18px;
    font-weight: 800;
}

.skills-list {
    display: flex;
    flex-wrap: wrap;
    gap: 9px;
}

.skill-tag {
    display: inline-flex;
    align-items: center;
    padding: 8px 13px;
    border-radius: 20px;
    color: #dfe7ff;
    background: rgba(124,58,237,.12);
    border: 1px solid rgba(139,92,246,.25);
    font-size: 12px;
    font-weight: 700;
    transition: .25s ease;
}

.skill-tag:hover {
    transform: translateY(-2px);
    background: rgba(124,58,237,.20);
    border-color: rgba(139,92,246,.45);
}

.skill-cyan {
    color: #a5f3fc;
    background: rgba(6,182,212,.10);
    border-color: rgba(6,182,212,.25);
}

.skill-pink {
    color: #fbcfe8;
    background: rgba(236,72,153,.10);
    border-color: rgba(236,72,153,.25);
}

.skill-orange {
    color: #fed7aa;
    background: rgba(249,115,22,.10);
    border-color: rgba(249,115,22,.25);
}

.skill-green {
    color: #bbf7d0;
    background: rgba(34,197,94,.10);
    border-color: rgba(34,197,94,.25);
}

.learning-stat-grid {
    display: grid;
    grid-template-columns: repeat(4,minmax(0,1fr));
    gap: 13px;
}

.learning-stat {
    padding: 18px 12px;
    text-align: center;
    border-radius: 15px;
    background: rgba(255,255,255,.035);
    border: 1px solid rgba(255,255,255,.06);
    transition: .25s ease;
}

.learning-stat:hover {
    transform: translateY(-4px);
    border-color: rgba(6,182,212,.25);
    background: rgba(6,182,212,.05);
}

.learning-stat i {
    display: block;
    margin-bottom: 9px;
    color: #67e8f9;
    font-size: 19px;
}

.learning-stat-number {
    display: block;
    color: #fff;
    font-size: 23px;
    font-weight: 850;
}

.learning-stat-label {
    display: block;
    margin-top: 4px;
    color: #8f9ab9;
    font-size: 11px;
    font-weight: 650;
}

@media (max-width: 1050px) {
    .profile-page {
        grid-template-columns: 300px minmax(0,1fr);
        gap: 18px;
    }

    .profile-main-grid {
        grid-template-columns: 280px minmax(0,1fr);
    }

    .profile-box {
        padding: 22px;
    }

    .learning-stat-grid {
        grid-template-columns: repeat(2,minmax(0,1fr));
    }
}

@media (max-width: 850px) {
    .profile-page,
    .profile-main-grid {
        grid-template-columns: 1fr;
    }

    .profile-box,
    .profile-side-card {
        width: 100%;
    }

    .profile-side-card {
        max-width: 500px;
        margin: 0 auto;
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

    .profile-box,
    .profile-side-card,
    .profile-info-card {
        padding: 21px;
    }

    .profile-btn {
        margin-right: 0;
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

    .profile-side-card {
        padding: 24px 20px;
    }

    .profile-image-ring {
        width: 145px;
        height: 145px;
    }

    .profile-side-card h2 {
        font-size: 20px;
    }

    .profile-info-card {
        padding: 21px;
    }

    .info-grid {
        grid-template-columns: 1fr;
    }

    .learning-stat-grid {
        grid-template-columns: repeat(2,minmax(0,1fr));
    }

    .learning-stat {
        padding: 15px 8px;
    }
}

@media (prefers-reduced-motion: reduce) {
    .student-profile-page::before,
    .student-profile-page::after,
    .profile-image-ring {
        animation: none !important;
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

        <!-- EDITABLE PROFILE FORM AND GRID -->
        <div class="profile-page">

            <div class="profile-box">

                <asp:Image ID="imgProfile" runat="server"
                    ImageUrl="~/Images/default-profile.png"
                    CssClass="profile-img" />

                <asp:FileUpload ID="fuProfilePhoto" runat="server"
                    CssClass="profile-input" />

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
                    CausesValidation="false"
                    OnClick="btnClear_Click" />

                <br />

                <asp:Label ID="lblmsg" runat="server" ForeColor="Green" />

            </div>

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
                                        CommandArgument='<%# Eval("Id") %>'
                                        CausesValidation="false" />

                                    <asp:Button ID="btnRowDelete" runat="server"
                                        Text="Delete"
                                        CssClass="delete-btn"
                                        CommandName="DeleteProfile"
                                        CommandArgument='<%# Eval("Id") %>'
                                        CausesValidation="false"
                                        OnClientClick="return confirm('Are you sure you want to delete this profile?');" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>

        </div>
        </asp:content>


       <%-- <!-- MAIN PROFILE DESIGN -->
        <div class="profile-main-grid">

            <div class="profile-side-card">

                <div class="profile-image-ring">
                    <img src="images/person_1.jpg" alt="Student Profile" />
                </div>

                <h2>Vaibhavi Raiyani</h2>

                <p class="profile-role">Student</p>

                <div class="profile-status">
                    <span class="status-dot"></span>
                    Active Learner
                </div>

                <a href="#" class="edit-profile-btn">
                    <i class="fa fa-edit"></i>
                    Edit Profile
                </a>

            </div>

            <div class="profile-info-card">

                <div class="section-heading">
                    <div class="section-heading-icon">
                        <i class="fa fa-user"></i>
                    </div>
                    <h2>Personal Information</h2>
                </div>

                <div class="info-grid">

                    <div class="info-field">
                        <label>Full Name</label>
                        <input type="text" value="Vaibhavi Raiyani" readonly />
                    </div>

                    <div class="info-field">
                        <label>Email</label>
                        <input type="text" value="Vaibhavi28@gmail.com" readonly />
                    </div>

                    <div class="info-field">
                        <label>Mobile Number</label>
                        <input type="text" value="+91 987653652" readonly />
                    </div>

                    <div class="info-field">
                        <label>City</label>
                        <input type="text" value="Banglore" readonly />
                    </div>

                    <div class="info-field">
                        <label>Gender</label>
                        <input type="text" value="Female" readonly />
                    </div>

                    <div class="info-field">
                        <label>Date of Birth</label>
                        <input type="text" value="28 July 2005" readonly />
                    </div>

                    <div class="info-field">
                        <label>Joined Date</label>
                        <input type="text" value="20 July 2026" readonly />
                    </div>

                    <div class="info-field">
                        <label>Course Enrolled</label>
                        <input type="text" value="6 Courses" readonly />
                    </div>

                </div>

                <hr class="profile-divider" />

                <h3 class="sub-heading">Skills</h3>

                <div class="skills-list">
                    <span class="skill-tag">HTML</span>
                    <span class="skill-tag skill-green">CSS</span>
                    <span class="skill-tag skill-cyan">JavaScript</span>
                    <span class="skill-tag skill-orange">ASP.NET</span>
                    <span class="skill-tag skill-pink">SQL</span>
                    <span class="skill-tag">Python</span>
                </div>

                <hr class="profile-divider" />

                <h3 class="sub-heading">Learning Statistics</h3>

                <div class="learning-stat-grid">

                    <div class="learning-stat">
                        <i class="fa fa-book"></i>
                        <span class="learning-stat-number">6</span>
                        <span class="learning-stat-label">Courses</span>
                    </div>

                    <div class="learning-stat">
                        <i class="fa fa-play-circle"></i>
                        <span class="learning-stat-number">48</span>
                        <span class="learning-stat-label">Lessons</span>
                    </div>

                    <div class="learning-stat">
                        <i class="fa fa-certificate"></i>
                        <span class="learning-stat-number">2</span>
                        <span class="learning-stat-label">Certificates</span>
                    </div>

                    <div class="learning-stat">
                        <i class="fa fa-line-chart"></i>
                        <span class="learning-stat-number">75%</span>
                        <span class="learning-stat-label">Progress</span>
                    </div>

                </div>

            </div>

        </div>

    </div>
</div>

</asp:Content>--%>
