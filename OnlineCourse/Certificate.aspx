
<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="Certificate.aspx.cs" Inherits="OnlineCourse.Certificate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>

/* =========================================
   LEARNSPHERE - 3D PREMIUM CERTIFICATE
   PROJECT THEME: NAVY + PURPLE + BLUE + CYAN
========================================= */

.lux-cert {
    --navy: #070b1d;
    --navy-light: #101936;
    --purple: #7c3aed;
    --blue: #2563eb;
    --cyan: #06b6d4;
    --light-cyan: #67e8f9;

    position: relative;
    min-height: 100vh;
    overflow: hidden;
    isolation: isolate;
    background:
        radial-gradient(circle at 12% 18%, rgba(124,58,237,.22), transparent 30%),
        radial-gradient(circle at 88% 25%, rgba(6,182,212,.16), transparent 28%),
        radial-gradient(circle at 50% 100%, rgba(37,99,235,.20), transparent 40%),
        var(--navy);
}

/* BACKGROUND AMBIENT LIGHT */

.lux-cert .ambient {
    position: absolute;
    width: 430px;
    height: 430px;
    border-radius: 50%;
    filter: blur(100px);
    opacity: .35;
    pointer-events: none;
    z-index: -1;
}

.ambient.one {
    background: #7c3aed;
    left: -180px;
    top: 250px;
    animation: ambientMove1 10s ease-in-out infinite alternate;
}

.ambient.two {
    background: #06b6d4;
    right: -180px;
    top: 450px;
    animation: ambientMove2 12s ease-in-out infinite alternate;
}

/* HERO SECTION */

.lux-hero {
    position: relative;
    height: 330px;
    overflow: hidden;
    background:
        linear-gradient(120deg,
            rgba(7,11,29,.97),
            rgba(35,20,85,.91),
            rgba(5,65,100,.88)),
        url('images/bg_2.jpg');

    background-size: cover;
    background-position: center;
    border-bottom: 1px solid rgba(103,232,249,.18);
}

.lux-hero::before {
    content: "";
    position: absolute;
    inset: 0;
    background:
        radial-gradient(circle at 50% 50%,
            rgba(124,58,237,.25),
            transparent 45%);
    animation: heroGlow 5s ease-in-out infinite alternate;
}

.lux-hero::after {
    content: "";
    position: absolute;
    width: 550px;
    height: 550px;
    left: 50%;
    top: -400px;
    transform: translateX(-50%);
    border-radius: 50%;
    border: 1px solid rgba(103,232,249,.16);
    box-shadow:
        0 0 60px rgba(6,182,212,.12),
        inset 0 0 60px rgba(124,58,237,.12);
}

.lux-hero-content {
    position: relative;
    z-index: 5;
    height: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    text-align: center;
    padding: 20px;
}

.lux-small-title {
    color: #67e8f9;
    font-size: 13px;
    font-weight: 800;
    letter-spacing: 7px;
    text-transform: uppercase;
    text-shadow: 0 0 20px rgba(6,182,212,.55);
    animation: heroSmall 1s ease-out both;
}

.lux-hero h1 {
    margin: 18px 0 0;
    color: #ffffff;
    font-size: 55px;
    font-weight: 900;
    letter-spacing: 1px;
    text-shadow:
        0 5px 0 rgba(0,0,0,.25),
        0 12px 35px rgba(124,58,237,.55);
    animation: heroEnter 1.2s cubic-bezier(.17,.67,.25,1) both;
}

/* PARTICLES */

.fireworks,
.gold-dust {
    position: absolute;
    inset: 0;
    overflow: hidden;
    pointer-events: none;
}

.fireworks {
    z-index: 4;
}

.gold-dust {
    z-index: 3;
}

.firework {
    position: absolute;
    width: 8px;
    height: 8px;
}

.firework.left {
    left: 15%;
    top: 42%;
}

.firework.right {
    right: 15%;
    top: 42%;
}

.firework.center {
    left: 50%;
    top: 20%;
}

.firework span {
    position: absolute;
    width: 6px;
    height: 6px;
    border-radius: 50%;
    background: #67e8f9;
    box-shadow: 0 0 12px #06b6d4;
    transform: rotate(calc(var(--r) * 1deg)) translateY(-10px);
    animation: fireParticle 2s ease-out infinite;
}

.firework span:nth-child(1) { --r: 0; }
.firework span:nth-child(2) { --r: 30; }
.firework span:nth-child(3) { --r: 60; }
.firework span:nth-child(4) { --r: 90; }
.firework span:nth-child(5) { --r: 120; }
.firework span:nth-child(6) { --r: 150; }
.firework span:nth-child(7) { --r: 180; }
.firework span:nth-child(8) { --r: 210; }
.firework span:nth-child(9) { --r: 240; }
.firework span:nth-child(10) { --r: 270; }
.firework span:nth-child(11) { --r: 300; }
.firework span:nth-child(12) { --r: 330; }

.gold-dust span {
    position: absolute;
    top: -10px;
    width: 4px;
    height: 4px;
    border-radius: 50%;
    background: #67e8f9;
    box-shadow:
        0 0 8px #06b6d4,
        0 0 18px rgba(103,232,249,.8);
    animation: dustFall 6s linear infinite;
}

.gold-dust span:nth-child(1) { left: 5%; animation-delay: .2s; }
.gold-dust span:nth-child(2) { left: 12%; animation-delay: 1.1s; }
.gold-dust span:nth-child(3) { left: 20%; animation-delay: 2s; }
.gold-dust span:nth-child(4) { left: 28%; animation-delay: .7s; }
.gold-dust span:nth-child(5) { left: 36%; animation-delay: 1.7s; }
.gold-dust span:nth-child(6) { left: 45%; animation-delay: .4s; }
.gold-dust span:nth-child(7) { left: 55%; animation-delay: 2.3s; }
.gold-dust span:nth-child(8) { left: 63%; animation-delay: 1.3s; }
.gold-dust span:nth-child(9) { left: 72%; animation-delay: .8s; }
.gold-dust span:nth-child(10) { left: 80%; animation-delay: 2.1s; }
.gold-dust span:nth-child(11) { left: 89%; animation-delay: .5s; }
.gold-dust span:nth-child(12) { left: 96%; animation-delay: 1.8s; }

/* CERTIFICATE STAGE */

.lux-stage {
    position: relative;
    z-index: 5;
    padding: 95px 15px 120px;
    perspective: 1800px;
}

/* MAIN 3D CERTIFICATE */

.lux-certificate {
    position: relative;
    max-width: 1080px;
    margin: auto;
    padding: 75px 80px;
    border-radius: 18px;

    background:
        radial-gradient(circle at 10% 10%, rgba(124,58,237,.08), transparent 35%),
        radial-gradient(circle at 90% 90%, rgba(6,182,212,.09), transparent 35%),
        linear-gradient(145deg, #ffffff, #f5f7ff 55%, #eef4ff);

    border: 1px solid rgba(255,255,255,.9);

    box-shadow:
        0 55px 100px rgba(0,0,0,.55),
        0 25px 65px rgba(124,58,237,.20),
        0 10px 35px rgba(6,182,212,.12),
        inset 0 0 45px rgba(37,99,235,.04);

    transform-style: preserve-3d;

    animation:
        certificateReveal 1.5s cubic-bezier(.16,.8,.25,1) both,
        certificateFloat 7s ease-in-out 1.6s infinite;

    transition:
        box-shadow .5s ease,
        border-color .5s ease;
}

/* ANIMATED NEON BORDER */

.lux-certificate::before {
    content: "";
    position: absolute;
    inset: -5px;
    z-index: -2;
    border-radius: 22px;

    background: linear-gradient(
        120deg,
        #7c3aed,
        #2563eb,
        #06b6d4,
        #67e8f9,
        #7c3aed
    );

    background-size: 300% 300%;
    animation: luxuryBorder 6s linear infinite;
}

.lux-certificate::after {
    content: "";
    position: absolute;
    inset: -17px;
    z-index: -3;
    border-radius: 28px;
    border: 1px solid rgba(103,232,249,.20);
    box-shadow: 0 0 35px rgba(124,58,237,.14);
}

.lux-certificate:hover {
    box-shadow:
        0 75px 130px rgba(0,0,0,.62),
        0 35px 80px rgba(124,58,237,.30),
        0 15px 45px rgba(6,182,212,.20);
}

/* INNER FRAME */

.gold-frame {
    position: absolute;
    inset: 20px;
    border: 2px solid transparent;
    border-radius: 8px;
    pointer-events: none;

    background:
        linear-gradient(#ffffff, #ffffff) padding-box,
        linear-gradient(135deg, #7c3aed, #2563eb, #06b6d4) border-box;

    box-shadow:
        inset 0 0 35px rgba(124,58,237,.06);
}

.gold-frame::after {
    content: "";
    position: absolute;
    inset: 9px;
    border: 1px solid rgba(37,99,235,.18);
    border-radius: 5px;
}

/* CORNER ORNAMENTS */

.ornament {
    position: absolute;
    width: 100px;
    height: 100px;
    z-index: 4;
    filter: drop-shadow(0 0 8px rgba(124,58,237,.20));
}

.ornament::before,
.ornament::after {
    content: "";
    position: absolute;
    border-color: #7c3aed;
}

.ornament::before {
    width: 65px;
    height: 65px;
    border-top: 3px solid;
    border-left: 3px solid;
    border-radius: 25px 0 0 0;
}

.ornament::after {
    width: 30px;
    height: 30px;
    left: 12px;
    top: 12px;
    border-top: 2px solid;
    border-left: 2px solid;
    border-radius: 15px 0 0 0;
}

.ornament.tl {
    top: 35px;
    left: 35px;
}

.ornament.tr {
    top: 35px;
    right: 35px;
    transform: rotate(90deg);
}

.ornament.bl {
    bottom: 35px;
    left: 35px;
    transform: rotate(-90deg);
}

.ornament.br {
    bottom: 35px;
    right: 35px;
    transform: rotate(180deg);
}

/* CERTIFICATE CONTENT */

.lux-content {
    position: relative;
    z-index: 10;
    text-align: center;
    transform-style: preserve-3d;
}

.lux-academy {
    display: block;
    color: #6d28d9;
    font-size: 17px;
    font-weight: 900;
    letter-spacing: 7px;
    text-transform: uppercase;
    text-shadow: 0 3px 15px rgba(124,58,237,.15);
    transform: translateZ(40px);
    animation: contentUp 1s ease-out .4s both;
}

/* CERTIFICATE TITLE */

.lux-title {
    display: block;
    margin: 15px 0 0;
    font-size: 70px;
    font-weight: 900;
    letter-spacing: 1px;

    background: linear-gradient(
        120deg,
        #4c1d95,
        #7c3aed,
        #2563eb,
        #0891b2
    );

    -webkit-background-clip: text;
    background-clip: text;
    color: transparent;

    filter: drop-shadow(0 8px 15px rgba(124,58,237,.16));

    animation: titleLuxury 1.3s cubic-bezier(.15,.75,.25,1) .2s both;
}

.lux-subtitle {
    display: block;
    margin-top: 8px;
    font-size: 16px;
    color: #64748b;
    font-weight: 700;
    letter-spacing: 7px;
    text-transform: uppercase;
    animation: contentUp 1s ease-out .7s both;
}

/* STUDENT NAME */

.lux-presented {
    margin-top: 45px;
    color: #64748b;
    font-size: 16px;
    letter-spacing: 1px;
}

.lux-student {
    display: block;
    margin: 12px 0 20px;
    font-size: 48px;
    font-weight: 900;

    background: linear-gradient(120deg, #4c1d95, #2563eb, #0891b2);
    -webkit-background-clip: text;
    background-clip: text;
    color: transparent;

    filter: drop-shadow(0 5px 12px rgba(37,99,235,.15));

    animation: studentLuxury 1.3s cubic-bezier(.15,.8,.25,1) .9s both;
}

/* COURSE DETAILS */

.lux-course-label {
    color: #64748b;
    font-size: 16px;
}

.lux-course {
    display: block;
    margin-top: 10px;
    font-size: 31px;
    font-weight: 900;
    color: #172554;
    animation: contentUp 1s ease-out 1.15s both;
}

/* 3D MEDALLION */

.medallion {
    position: relative;
    width: 125px;
    height: 125px;
    margin: 35px auto 22px;
    border-radius: 50%;

    background:
        radial-gradient(circle at 30% 25%, #ffffff, transparent 25%),
        radial-gradient(circle at 35% 30%, #a78bfa, #7c3aed 45%, #312e81 100%);

    border: 5px double #c4b5fd;

    box-shadow:
        0 18px 30px rgba(76,29,149,.25),
        0 0 35px rgba(124,58,237,.22),
        inset 0 5px 12px rgba(255,255,255,.45),
        inset 0 -10px 20px rgba(0,0,0,.25);

    animation: medalFloat 4s ease-in-out 2.6s infinite;
}

.medallion::before {
    content: "";
    position: absolute;
    inset: 10px;
    border-radius: 50%;
    border: 2px solid rgba(255,255,255,.65);
}

.medallion::after {
    content: "";
    position: absolute;
    inset: -10px;
    border-radius: 50%;
    border: 1px dashed rgba(124,58,237,.45);
}

.medallion i {
    position: absolute;
    left: 50%;
    top: 42%;
    transform: translate(-50%,-50%);
    color: #ffffff;
    font-size: 40px;
    font-style: normal;
    text-shadow: 0 3px 12px rgba(0,0,0,.35);
}

.medallion span {
    position: absolute;
    left: 50%;
    bottom: 17px;
    transform: translateX(-50%);
    color: white;
    font-size: 9px;
    font-weight: 900;
    letter-spacing: 2px;
    white-space: nowrap;
}

/* DIVIDER */

.lux-divider {
    width: 240px;
    max-width: 80%;
    height: 3px;
    margin: 28px auto;

    background: linear-gradient(
        90deg,
        transparent,
        #7c3aed,
        #06b6d4,
        #7c3aed,
        transparent
    );

    border-radius: 10px;
    box-shadow: 0 0 15px rgba(124,58,237,.25);

    animation: dividerReveal 1s ease-out 1.2s both;
}

/* DATE AND CERTIFICATE INFORMATION */

.lux-details {
    margin-top: 25px;
    color: #64748b;
    font-size: 15px;
    animation: contentUp 1s ease-out 1.35s both;
}

.lux-details p {
    margin: 9px 0;
}

.lux-details strong {
    color: #1e1b4b;
    font-weight: 800;
}

.lux-details span {
    color: #334155;
}

/* SIGNATURE */

.lux-signatures {
    margin-top: 45px;
}

.signature-line {
    width: 190px;
    max-width: 80%;
    margin: auto auto 10px;
    border-top: 2px solid #64748b;
}

.signature-title {
    color: #64748b;
    font-size: 12px;
    font-weight: 900;
    letter-spacing: 2px;
    text-transform: uppercase;
}

/* BUTTONS */

.lux-buttons {
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 20px;
    width: 100%;
    margin: 45px auto 0;
    flex-wrap: wrap;
}

.lux-btn {
    display: inline-block;
    padding: 16px 32px;
    margin: 5px;
    border: 1px solid rgba(255,255,255,.2);
    border-radius: 50px;

    color: white !important;
    font-size: 14px;
    font-weight: 800;
    letter-spacing: .5px;
    text-decoration: none !important;
    cursor: pointer;

    transition: all .35s ease;
}

.lux-btn:hover {
    transform: translateY(-6px) scale(1.04);
    color: white !important;
}

.download-btn {
    background: linear-gradient(135deg, #7c3aed, #2563eb);
    box-shadow:
        0 12px 30px rgba(124,58,237,.35),
        inset 0 1px 0 rgba(255,255,255,.25);
}

.download-btn:hover {
    box-shadow:
        0 18px 40px rgba(124,58,237,.50),
        0 0 25px rgba(6,182,212,.20);
}

.back-btn {
    background: linear-gradient(135deg, #0891b2, #2563eb);
    box-shadow: 0 12px 30px rgba(6,182,212,.25);
}

.back-btn:hover {
    box-shadow: 0 18px 40px rgba(6,182,212,.40);
}

/* ANIMATIONS */

@keyframes certificateReveal {
    0% {
        opacity: 0;
        transform: perspective(1800px) rotateX(35deg) rotateY(-25deg) translateY(150px) scale(.72);
    }

    55% {
        opacity: 1;
        transform: perspective(1800px) rotateX(-5deg) rotateY(5deg) translateY(-15px) scale(1.025);
    }

    100% {
        opacity: 1;
        transform: perspective(1800px) rotateX(0) rotateY(0) translateY(0) scale(1);
    }
}

@keyframes certificateFloat {
    0%, 100% {
        transform: perspective(1800px) rotateX(0) rotateY(0) translateY(0);
    }

    50% {
        transform: perspective(1800px) rotateX(1deg) rotateY(-1deg) translateY(-9px);
    }
}

@keyframes luxuryBorder {
    0% { background-position: 0% 50%; }
    50% { background-position: 100% 50%; }
    100% { background-position: 0% 50%; }
}

@keyframes heroEnter {
    0% {
        opacity: 0;
        transform: perspective(700px) rotateX(60deg) translateY(70px);
    }

    100% {
        opacity: 1;
        transform: perspective(700px) rotateX(0) translateY(0);
    }
}

@keyframes heroSmall {
    0% { opacity: 0; transform: translateY(-25px); }
    100% { opacity: 1; transform: translateY(0); }
}

@keyframes heroGlow {
    from { opacity: .5; transform: scale(1); }
    to { opacity: 1; transform: scale(1.15); }
}

@keyframes contentUp {
    0% {
        opacity: 0;
        transform: translateY(35px) translateZ(0);
    }

    100% {
        opacity: 1;
        transform: translateY(0) translateZ(40px);
    }
}

@keyframes titleLuxury {
    0% {
        opacity: 0;
        transform: perspective(700px) rotateX(75deg) translateZ(-100px) translateY(50px) scale(.75);
    }

    100% {
        opacity: 1;
        transform: perspective(700px) rotateX(0) translateZ(70px) translateY(0) scale(1);
    }
}

@keyframes studentLuxury {
    0% {
        opacity: 0;
        transform: translateZ(-100px) rotateX(30deg) scale(.55);
    }

    70% {
        opacity: 1;
        transform: translateZ(80px) rotateX(-3deg) scale(1.08);
    }

    100% {
        opacity: 1;
        transform: translateZ(60px) rotateX(0) scale(1);
    }
}

@keyframes medalFloat {
    0%, 100% {
        transform: translateY(0) rotateY(0);
    }

    50% {
        transform: translateY(-8px) rotateY(10deg);
    }
}

@keyframes dividerReveal {
    0% { width: 0; opacity: 0; }
    100% { width: 240px; opacity: 1; }
}

@keyframes fireParticle {
    0% {
        opacity: 1;
        transform: rotate(calc(var(--r) * 1deg)) translateY(0) scale(.3);
    }

    60% {
        opacity: 1;
        transform: rotate(calc(var(--r) * 1deg)) translateY(-115px) scale(1);
    }

    100% {
        opacity: 0;
        transform: rotate(calc(var(--r) * 1deg)) translateY(-175px) scale(.05);
    }
}

@keyframes dustFall {
    0% { top: -10px; opacity: 0; transform: rotate(0); }
    15% { opacity: .9; }
    100% { top: 105%; opacity: 0; transform: rotate(360deg); }
}

@keyframes ambientMove1 {
    from { transform: translate(0,0); }
    to { transform: translate(150px,100px); }
}

@keyframes ambientMove2 {
    from { transform: translate(0,0); }
    to { transform: translate(-150px,-90px); }
}

/* RESPONSIVE */

@media(max-width: 768px) {

    .lux-hero {
        height: 270px;
    }

    .lux-hero h1 {
        font-size: 36px;
    }

    .lux-small-title {
        font-size: 10px;
        letter-spacing: 3px;
    }

    .lux-stage {
        padding: 60px 18px 80px;
    }

    .lux-certificate {
        padding: 55px 25px;
    }

    .lux-title {
        font-size: 43px;
    }

    .lux-subtitle {
        font-size: 12px;
        letter-spacing: 3px;
    }

    .lux-student {
        font-size: 31px;
    }

    .lux-course {
        font-size: 23px;
    }

    .lux-academy {
        font-size: 12px;
        letter-spacing: 4px;
    }

    .gold-frame {
        inset: 12px;
    }

    .ornament {
        transform: scale(.60);
    }

    .ornament.tr {
        transform: rotate(90deg) scale(.60);
    }

    .ornament.bl {
        transform: rotate(-90deg) scale(.60);
    }

    .ornament.br {
        transform: rotate(180deg) scale(.60);
    }

    .lux-buttons .lux-btn {
        width: 100%;
        max-width: 270px;
    }
}

@media(max-width: 480px) {

    .lux-hero h1 {
        font-size: 29px;
    }

    .lux-certificate {
        padding: 50px 20px;
    }

    .lux-title {
        font-size: 34px;
    }

    .lux-student {
        font-size: 25px;
    }

    .lux-course {
        font-size: 19px;
    }

    .lux-presented,
    .lux-course-label {
        font-size: 13px;
    }

    .lux-details {
        font-size: 12px;
    }

    .medallion {
        width: 105px;
        height: 105px;
    }
}

/* PRINT CERTIFICATE */

@media print {

    @page {
        size: landscape;
        margin: 10mm;
    }

    body * {
        visibility: hidden !important;
    }

    #certificatePrint,
    #certificatePrint * {
        visibility: visible !important;
    }

    #certificatePrint {
        position: absolute !important;
        left: 0 !important;
        top: 0 !important;
        width: 100% !important;
        background: #ffffff !important;
        color: #172554 !important;
    }

    .lux-cert,
    .lux-stage,
    .lux-certificate {
        background: #ffffff !important;
        box-shadow: none !important;
        animation: none !important;
        transform: none !important;
    }

    .lux-certificate {
        border: 3px solid #7c3aed !important;
    }

    .lux-buttons,
    .lux-hero,
    .ambient,
    .fireworks,
    .gold-dust {
        display: none !important;
    }

    .lux-certificate::before,
    .lux-certificate::after {
        display: none !important;
    }

    .gold-frame,
    .ornament {
        visibility: visible !important;
    }

    .lux-title,
    .lux-student {
        -webkit-text-fill-color: #4c1d95 !important;
        color: #4c1d95 !important;
    }
}

/* REDUCED MOTION */

@media(prefers-reduced-motion: reduce) {

    .lux-cert *,
    .lux-cert *::before,
    .lux-cert *::after {
        animation: none !important;
        transition: none !important;
    }
}
}
</style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="lux-cert">

    <div class="ambient one"></div>
    <div class="ambient two"></div>

    <section class="lux-hero">

        <div class="gold-dust">
            <span></span><span></span><span></span><span></span>
            <span></span><span></span><span></span><span></span>
            <span></span><span></span><span></span><span></span>
        </div>

        <div class="fireworks">

            <div class="firework left">
                <span></span><span></span><span></span><span></span>
                <span></span><span></span><span></span><span></span>
                <span></span><span></span><span></span><span></span>
            </div>

            <div class="firework right">
                <span></span><span></span><span></span><span></span>
                <span></span><span></span><span></span><span></span>
                <span></span><span></span><span></span><span></span>
            </div>

            <div class="firework center">
                <span></span><span></span><span></span><span></span>
                <span></span><span></span><span></span><span></span>
                <span></span><span></span><span></span><span></span>
            </div>

        </div>

        <div class="lux-hero-content">
            <div class="lux-small-title">LEARN • GROW • ACHIEVE</div>
            <h1>My Course Certificate</h1>
        </div>

    </section>

    <section class="lux-stage">

        <div class="container">

            <asp:Panel ID="pnlCertificate" runat="server" CssClass="lux-certificate">

                <div class="gold-frame"></div>

                <div class="ornament tl"></div>
                <div class="ornament tr"></div>
                <div class="ornament bl"></div>
                <div class="ornament br"></div>

                <div class="lux-content" id="certificatePrint">

                    <asp:Label ID="lblAcademy" runat="server"
                        Text="LEARNSPHERE ACADEMY"
                        CssClass="lux-academy"></asp:Label>

                    <div class="lux-divider"></div>

                    <asp:Label ID="lblCertificateTitle" runat="server"
                        Text="CERTIFICATE"
                        CssClass="lux-title"></asp:Label>

                    <asp:Label ID="lblSubtitle" runat="server"
                        Text="OF COMPLETION"
                        CssClass="lux-subtitle"></asp:Label>

                    <p class="lux-presented">This certificate is proudly presented to</p>

                    <asp:Label ID="lblStudentName" runat="server"
                        Text="Vaibhavi Raiyani"
                        CssClass="lux-student"></asp:Label>

                    <div class="lux-divider"></div>

                    <p class="lux-course-label">For successfully completing the course</p>

                    <asp:Label ID="lblCourseName" runat="server"
                        Text="ASP.NET Web Forms"
                        CssClass="lux-course"></asp:Label>

                    <div class="medallion">
                        <i>★</i>
                        <span>EXCELLENCE</span>
                    </div>

                    <div class="lux-details">

                        <p>
                            <strong>Instructor:</strong>
                            <asp:Label ID="lblInstructor" runat="server"
                                Text="Tony Garret"></asp:Label>
                        </p>

                        <p>
                            <strong>Completion Date:</strong>
                            <asp:Label ID="lblCompletionDate" runat="server"
                                Text="25 July 2026"></asp:Label>
                        </p>

                        <p>
                            <strong>Certificate ID:</strong>
                            <asp:Label ID="lblCertificateID" runat="server"
                                Text="LS20260001"></asp:Label>
                        </p>

                    </div>

                    <div class="lux-signatures">
                        <div class="signature-line"></div>
                        <div class="signature-title">LearnSphere Academy</div>
                    </div>

                </div>

                <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>

            </asp:Panel>

            <div class="lux-buttons">

                <asp:Button ID="btnDownload" runat="server"
                    Text="Download Certificate"
                    CssClass="lux-btn download-btn"
                    CausesValidation="false"
                    OnClientClick="window.print(); return false;" />

                <asp:Button ID="btnBack" runat="server"
                    Text="Back to Courses"
                    CssClass="lux-btn back-btn"
                    CausesValidation="false"
                    PostBackUrl="~/MyCourses.aspx" />

            </div>

        </div>

    </section>

</div>

</asp:Content>
