<%@ Page Title="" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="OnlineCourse.register" %>
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
                    <span>Register</span>
                </p>

                <h1 class="mb-0 bread">Student Registration</h1>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section bg-light">
    <div class="container">

        <div class="row justify-content-center">

            <div class="col-md-8">

                <div class="bg-white p-5 shadow rounded">

                    <h2 class="text-center mb-4">Create Your Account</h2>

                    <form>

                        <div class="form-group">

    <asp:Label
        ID="lblName"
        runat="server"
        Text="Full Name">
    </asp:Label>

    <asp:TextBox
        ID="txtName"
        runat="server"
        CssClass="form-control"
        placeholder="Enter your full name">
    </asp:TextBox>

</div>

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
        ID="lblPhone"
        runat="server"
        Text="Mobile Number">
    </asp:Label>

    <asp:TextBox
        ID="txtPhone"
        runat="server"
        CssClass="form-control"
        TextMode="Phone"
        placeholder="Enter mobile number">
    </asp:TextBox>

</div>

<div class="form-group">

    <asp:Label
        ID="lblGender"
        runat="server"
        Text="Gender">
    </asp:Label>

    <asp:DropDownList
        ID="ddlGender"
        runat="server"
        CssClass="form-control">

        <asp:ListItem Text="Select Gender" Value=""></asp:ListItem>
        <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
        <asp:ListItem Text="Female" Value="Female"></asp:ListItem>

    </asp:DropDownList>

</div>

<div class="form-group">

    <asp:Label
        ID="lblPassword"
        runat="server"
        Text="Password"></asp:Label>

    <asp:TextBox
        ID="txtPassword"
        runat="server"
        CssClass="form-control"
        TextMode="Password"
        placeholder="Enter password">
    </asp:TextBox>

</div>

<div class="form-group">

    <asp:Label
        ID="lblConfirmpassword"
        runat="server"
        Text="Confirm Password"></asp:Label>

    <asp:TextBox
        ID="txtConfirmPassword"
        runat="server"
        CssClass="form-control"
        TextMode="Password"
        placeholder="Confirm password">
    </asp:TextBox>

</div>

<div class="form-group">

    <asp:Button
        ID="btnRegister"
        runat="server"
        Text="Create Account"
        CssClass="btn btn-success btn-block" OnClick="btnRegister_Click" />

</div>

<hr />

<p class="text-center">

    Already have an account?

    <asp:HyperLink
        ID="lnkLogin"
        runat="server"
        NavigateUrl="~/login.aspx"
        Text="Login Here">
    </asp:HyperLink>

</p>

  <h3 class="text-center">Registered Students</h3>



           <div style="width:95%; margin:auto; overflow-x:auto;">

    <asp:GridView
        ID="gvRegister"
        runat="server"
        AutoGenerateColumns="false"
        CssClass="table table-bordered table-hover"
        Width="100%" OnSelectedIndexChanged="gvRegister_SelectedIndexChanged1" OnRowCommand="gvRegister_RowCommand">

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

                <%--<Columns>
                    <asp:TemplateField HeaderText="Id">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Full Name">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Full Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email Address">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Email Address") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Mobile Number">
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Mobile Number") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Gender">
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Password">
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Password") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Confirm Password">
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("Confirm Password") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Edit">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_edt">Edit</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_dlt">Delete</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField></asp:TemplateField>
                </Columns>--%>

    </asp:GridView>



                       <%-- <div class="form-group">
                            <label>Full Name</label>
                            <input type="text" class="form-control" placeholder="Enter Full Name">
                        </div>

                        <div class="form-group">
                            <label>Email Address</label>
                            <input type="email" class="form-control" placeholder="Enter Email">
                        </div>

                        <div class="form-group">
                            <label>Mobile Number</label>
                            <input type="text" class="form-control" placeholder="Enter Mobile Number">
                        </div>

                        <div class="form-group">
                            <label>Date of Birth</label>
                            <input type="date" class="form-control">
                        </div>

                        <div class="form-group">
                            <label>Gender</label>
                            <select class="form-control">
                                <option>Select Gender</option>
                                <option>Male</option>
                                <option>Female</option>
                                <option>Other</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" class="form-control" placeholder="Enter Password">
                        </div>

                        <div class="form-group">
                            <label>Confirm Password</label>
                            <input type="password" class="form-control" placeholder="Confirm Password">
                        </div>

                        <div class="form-group">
                            <button type="button" class="btn btn-primary btn-block">
                                Register
                            </button>
                        </div>

                    </form>

                    <hr>

                    <p class="text-center">
                        Already have an account?
                        <a href="login.aspx">Login Here</a>
                    </p>

                </div>

            </div>

        </div>--%>

    </div>
</section>
</asp:Content>
