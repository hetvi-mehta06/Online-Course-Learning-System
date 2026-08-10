<%@ Page Title="" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="categories.aspx.cs" Inherits="OnlineCourse.categories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_2.jpg');">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-center">
            <div class="col-md-9 ftco-animate pb-5 text-center">
                <p class="breadcrumbs">
                    <span class="mr-2">
                        <a href="index.aspx">Home <i class="fa fa-chevron-right"></i></a>
                    </span>
                    <span>Categories</span>
                </p>

                <h1 class="mb-0 bread">Course Categories</h1>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section bg-light">
    <div class="container">

        <div class="row justify-content-center mb-5">
            <div class="col-md-8 text-center">
                <h2>Browse Categories</h2>
                <p>Select a category and explore available courses.</p>
            </div>
        </div>

        <div class="row">

            <div class="col-md-3 d-flex align-items-stretch ftco-animate">
                <div class="services text-center p-4 bg-white">
                    <span class="fa fa-laptop fa-3x text-primary mb-3"></span>
                    <h3><a href="course.aspx">Web Development</a></h3>
                </div>
            </div>

            <div class="col-md-3 d-flex align-items-stretch ftco-animate">
                <div class="services text-center p-4 bg-white">
                    <span class="fa fa-code fa-3x text-primary mb-3"></span>
                    <h3><a href="course.aspx">Programming</a></h3>
                </div>
            </div>

            <div class="col-md-3 d-flex align-items-stretch ftco-animate">
                <div class="services text-center p-4 bg-white">
                    <span class="fa fa-database fa-3x text-primary mb-3"></span>
                    <h3><a href="course.aspx">Database</a></h3>
                </div>
            </div>

            <div class="col-md-3 d-flex align-items-stretch ftco-animate">
                <div class="services text-center p-4 bg-white">
                    <span class="fa fa-mobile fa-3x text-primary mb-3"></span>
                    <h3><a href="course.aspx">Mobile Development</a></h3>
                </div>
            </div>

            <div class="col-md-3 d-flex align-items-stretch ftco-animate mt-4">
                <div class="services text-center p-4 bg-white">
                    <span class="fa fa-paint-brush fa-3x text-primary mb-3"></span>
                    <h3><a href="course.aspx">Graphic Design</a></h3>
                </div>
            </div>

            <div class="col-md-3 d-flex align-items-stretch ftco-animate mt-4">
                <div class="services text-center p-4 bg-white">
                    <span class="fa fa-cloud fa-3x text-primary mb-3"></span>
                    <h3><a href="course.aspx">Cloud Computing</a></h3>
                </div>
            </div>

            <div class="col-md-3 d-flex align-items-stretch ftco-animate mt-4">
                <div class="services text-center p-4 bg-white">
                    <span class="fa fa-shield fa-3x text-primary mb-3"></span>
                    <h3><a href="course.aspx">Cyber Security</a></h3>
                </div>
            </div>

            <div class="col-md-3 d-flex align-items-stretch ftco-animate mt-4">
                <div class="services text-center p-4 bg-white">
                    <span class="fa fa-cogs fa-3x text-primary mb-3"></span>
                    <h3><a href="course.aspx">Artificial Intelligence</a></h3>
                </div>
            </div>

        </div>

    </div>
</section>

</asp:Content>
