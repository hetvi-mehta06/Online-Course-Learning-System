<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="logout.aspx.cs" Inherits="OnlineCourse.logout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>

    /* ===============================
       LOGOUT PAGE - PREMIUM UI
       =============================== */

    .logout-page {
        min-height: 100vh;
        padding: 70px 15px;

        display: flex;
        align-items: center;
        justify-content: center;

        position: relative;
        overflow: hidden;

        background:
            radial-gradient(circle at 10% 15%, rgba(124, 58, 237, 0.22), transparent 30%),
            radial-gradient(circle at 90% 20%, rgba(6, 182, 212, 0.16), transparent 30%),
            radial-gradient(circle at 50% 100%, rgba(236, 72, 153, 0.12), transparent 35%),
            #08091b;
    }


    /* Decorative Glow */

    .logout-page::before,
    .logout-page::after {
        content: "";
        position: absolute;
        border-radius: 50%;
        pointer-events: none;
    }

    .logout-page::before {
        width: 300px;
        height: 300px;

        left: -150px;
        top: 80px;

        background: rgba(124, 58, 237, 0.15);

        box-shadow:
            0 0 120px rgba(124, 58, 237, 0.28);
    }

    .logout-page::after {
        width: 260px;
        height: 260px;

        right: -120px;
        bottom: 80px;

        background: rgba(6, 182, 212, 0.12);

        box-shadow:
            0 0 110px rgba(6, 182, 212, 0.22);
    }


    .logout-container {
        width: 100%;
        max-width: 650px;

        position: relative;
        z-index: 2;
    }


    /* Main Glass Card */

    .logout-card {
        position: relative;

        padding: 55px 45px;

        text-align: center;

        border-radius: 30px;

        background: rgba(17, 20, 45, 0.82);

        border: 1px solid rgba(255, 255, 255, 0.10);

        box-shadow:
            0 30px 80px rgba(0, 0, 0, 0.48),
            inset 0 1px 0 rgba(255, 255, 255, 0.08);

        backdrop-filter: blur(22px);
        -webkit-backdrop-filter: blur(22px);
    }


    /* Top Glow Line */

    .logout-card::before {
        content: "";

        position: absolute;

        top: 0;
        left: 8%;

        width: 84%;
        height: 2px;

        border-radius: 20px;

        background:
            linear-gradient(
                90deg,
                transparent,
                #8b5cf6,
                #22d3ee,
                #ec4899,
                transparent
            );

        box-shadow:
            0 0 18px rgba(34, 211, 238, 0.6),
            0 0 30px rgba(139, 92, 246, 0.5);
    }


    /* Logout Icon */

    .logout-icon {
        width: 82px;
        height: 82px;

        margin: 0 auto 25px;

        display: flex;
        align-items: center;
        justify-content: center;

        border-radius: 50%;

        font-size: 34px;

        color: #67e8f9;

        background:
            linear-gradient(
                135deg,
                rgba(139, 92, 246, 0.25),
                rgba(34, 211, 238, 0.14)
            );

        border: 1px solid rgba(103, 232, 249, 0.25);

        box-shadow:
            0 0 35px rgba(34, 211, 238, 0.12),
            inset 0 0 25px rgba(139, 92, 246, 0.10);
    }


    /* Title */

    .logout-title {
        margin: 0 0 15px;

        font-size: 30px;
        font-weight: 800;

        background:
            linear-gradient(
                90deg,
                #ffffff,
                #c4b5fd,
                #67e8f9
            );

        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;

        background-clip: text;
    }


    /* Message */

    .logout-message {
        margin: 0 auto;

        max-width: 480px;

        color: #aeb6d0;

        font-size: 15px;

        line-height: 1.8;
    }

    .logout-message strong {
        color: #67e8f9;
    }


    /* Divider */

    .logout-divider {
        width: 80px;
        height: 2px;

        margin: 25px auto;

        border: none;

        border-radius: 10px;

        background:
            linear-gradient(
                90deg,
                #8b5cf6,
                #22d3ee
            );

        box-shadow:
            0 0 12px rgba(34, 211, 238, 0.35);
    }


    /* Buttons */

    .logout-actions {
        display: flex;

        justify-content: center;

        gap: 14px;

        flex-wrap: wrap;

        margin-top: 30px;
    }


    .logout-btn {
        min-width: 155px;

        padding: 13px 24px;

        border-radius: 13px;

        text-decoration: none !important;

        font-size: 14px;

        font-weight: 700;

        transition:
            transform 0.3s ease,
            box-shadow 0.3s ease,
            background 0.3s ease;
    }


    /* Login Button */

    .login-btn {
        color: #ffffff;

        background:
            linear-gradient(
                135deg,
                #7c3aed,
                #8b5cf6,
                #06b6d4
            );

        box-shadow:
            0 12px 28px rgba(124, 58, 237, 0.30);
    }

    .login-btn:hover {
        color: #ffffff;

        transform: translateY(-3px);

        box-shadow:
            0 18px 35px rgba(124, 58, 237, 0.42),
            0 0 25px rgba(6, 182, 212, 0.18);
    }


    /* Home Button */

    .home-btn {
        color: #cbd5e1;

        background: rgba(255, 255, 255, 0.045);

        border: 1px solid rgba(255, 255, 255, 0.12);
    }

    .home-btn:hover {
        color: #ffffff;

        background: rgba(103, 232, 249, 0.08);

        border-color: rgba(103, 232, 249, 0.30);

        transform: translateY(-3px);

        box-shadow:
            0 12px 25px rgba(0, 0, 0, 0.25);
    }


    /* Small Footer Text */

    .logout-note {
        margin-top: 28px;

        color: #68718e;

        font-size: 12px;
    }


    /* ===============================
       RESPONSIVE
       =============================== */

    @media (max-width: 600px) {

        .logout-page {
            padding: 45px 15px;
        }

        .logout-card {
            padding: 40px 22px;

            border-radius: 24px;
        }

        .logout-icon {
            width: 70px;
            height: 70px;

            font-size: 28px;
        }

        .logout-title {
            font-size: 25px;
        }

        .logout-message {
            font-size: 14px;
        }

        .logout-actions {
            flex-direction: column;
        }

        .logout-btn {
            width: 100%;
        }
    }

</style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<section class="logout-page">

    <div class="logout-container">

        <div class="logout-card">

            <!-- Logout Icon -->

            <div class="logout-icon">
                ✓
            </div>


            <!-- Title -->

            <h2 class="logout-title">
                Logged Out Successfully
            </h2>


            <!-- Message -->

            <p class="logout-message">
                You have been logged out successfully.
                Thank you for using <strong>LearnSphere</strong>.
            </p>


            <hr class="logout-divider" />


            <!-- Buttons -->

            <div class="logout-actions">

                <a href="login.aspx"
                   class="logout-btn login-btn">
                    Login Again
                </a>

                <a href="index.aspx"
                   class="logout-btn home-btn">
                    Go to Home
                </a>

            </div>


            <div class="logout-note">
                We hope to see you again soon ✨
            </div>

        </div>

    </div>

</section>

</asp:Content>