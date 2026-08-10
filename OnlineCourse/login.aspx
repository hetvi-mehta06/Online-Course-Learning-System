<%@ Page Title="" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="OnlineCourse.login" %>
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
                    <span>Login</span>
                </p>

                <h1 class="mb-0 bread">Student Login</h1>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section bg-light">
    <div class="container">

        <div class="row justify-content-center">

            <div class="col-md-6">

                <div class="bg-white p-5 shadow rounded">

                    <h2 class="text-center mb-4">Login to LearnSphere</h2>

                    <form>

               <div class="form-group">

    <asp:Label
        ID="lblEmail"
        runat="server"
        Text="Email Address">
    </asp:Label>

    <asp:TextBox
        ID="txtEmail"
        runat="server"
        CssClass="form-control"
        TextMode="Email"
        placeholder="Enter your email">
    </asp:TextBox>

</div>

<div class="form-group">

    <asp:Label
        ID="lblPassword"
        runat="server"
        Text="Password">
    </asp:Label>

    <asp:TextBox
        ID="txtPassword"
        runat="server"
        CssClass="form-control"
        TextMode="Password"
        placeholder="Enter your password">
    </asp:TextBox>

</div>

<div class="form-group text-right">

    <asp:HyperLink
        ID="lnkForgot"
        runat="server"
        NavigateUrl="#"
        Text="Forgot Password?">
    </asp:HyperLink>

</div>

<div class="form-group">

    <asp:Button
        ID="btnLogin"
        runat="server"
        Text="Login"
        CssClass="btn btn-primary btn-block" />

</div>

<hr />

<p class="text-center">

    Don't have an account?

    <asp:HyperLink
        ID="lnkRegister"
        runat="server"
        NavigateUrl="~/register.aspx"
        Text="Register Now">
    </asp:HyperLink>

</p>

                        <%--<div class="form-group">--%>



                         <%--   <label>Email Address</label>
                            <input type="email" class="form-control" placeholder="Enter your email">
                        </div>

                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" class="form-control" placeholder="Enter your password">
                        </div>

                        <div class="form-group text-right">
                            <a href="#">Forgot Password?</a>
                        </div>

                        <div class="form-group">
                            <button type="button" class="btn btn-primary btn-block">
                                Login
                            </button>
                        </div>--%>

                    <%--</form>

                    <hr>

                    <p class="text-center">
                        Don't have an account?
                        <a href="register.aspx">Register Now</a>
                    </p>

                </div>--%>

            </div>

        </div>

    </div>
</section>

</asp:Content>
