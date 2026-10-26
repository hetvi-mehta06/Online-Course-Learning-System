<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ManageFeedback.aspx.cs" Inherits="OnlineCourse.ManageFeedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        .feedback-page {
            padding: 40px 0;
            background: #f5f7fa;
        }

        .feedback-card {
            background: #ffffff;
            padding: 28px;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.08);
            margin-bottom: 30px;
        }

        .feedback-card h3 {
            color: #222;
            font-weight: 600;
            margin-bottom: 25px;
        }

        .feedback-grid {
            width: 100%;
            background: #ffffff;
            border-collapse: collapse;
        }

        .feedback-grid th {
            background: #343a40;
            color: #ffffff;
            padding: 14px;
            text-align: center;
        }

        .feedback-grid td {
            padding: 12px;
            vertical-align: middle;
            text-align: center;
            color: #444;
        }

        .feedback-grid tr:hover td {
            background: #f8fafc;
        }

        .feedback-grid .btn {
            margin: 3px;
        }

        .feedback-stat {
            background: #ffffff;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.08);
            margin-bottom: 30px;
        }

        .feedback-stat h3 {
            font-weight: 600;
            margin-bottom: 25px;
        }

        .feedback-stat p {
            color: #444;
            margin-bottom: 18px;
        }

        .feedback-actions {
            background: #ffffff;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.08);
        }

        .feedback-actions h3 {
            font-weight: 600;
            margin-bottom: 25px;
        }

        .feedback-actions .btn {
            margin-bottom: 12px;
        }

        .rating {
            color: #f0ad4e;
            font-weight: 600;
        }

        .feedback-message {
            display: block;
            margin-top: 15px;
            font-weight: 600;
        }

        .feedback-top {
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
            gap: 15px;
        }

        @media (max-width: 768px) {
            .feedback-card {
                padding: 15px;
                overflow-x: auto;
            }

            .feedback-grid {
                min-width: 750px;
            }
        }
    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Hero Banner -->

    <section class="hero-wrap hero-wrap-2"
        style="background-image:url('images/bg_2.jpg');">

        <div class="overlay"></div>

        <div class="container">
            <div class="row no-gutters slider-text align-items-end justify-content-center">
                <div class="col-md-9 text-center pb-5">

                    <h1 class="bread">Manage Feedback</h1>

                    <p class="breadcrumbs">
                        Admin Panel / Manage Feedback
                    </p>

                </div>
            </div>
        </div>
    </section>


    <section class="feedback-page">

        <div class="container">

            <div class="feedback-card">

    <h3>Add Student Feedback</h3>

    <div class="row">

        <div class="col-md-6">
            <label>Student Name</label>
            <asp:TextBox ID="txtStudentName" runat="server"
                CssClass="form-control"
                placeholder="Enter student name">
            </asp:TextBox>
        </div>

        <div class="col-md-6">
            <label>Course Name</label>
            <asp:TextBox ID="txtCourseName" runat="server"
                CssClass="form-control"
                placeholder="Enter course name">
            </asp:TextBox>
        </div>

        <div class="col-md-6">
            <label>Rating (1 to 5)</label>
            <asp:TextBox ID="txtRating" runat="server"
                TextMode="Number"
                CssClass="form-control"
                placeholder="Enter rating">
            </asp:TextBox>
        </div>

        <div class="col-md-6">
            <label>Feedback</label>
            <asp:TextBox ID="txtFeedback" runat="server"
                CssClass="form-control"
                placeholder="Enter feedback">
            </asp:TextBox>
        </div>

    </div>

    <asp:Button ID="btnSave" runat="server"
        Text="Save Feedback"
        CssClass="btn btn-success"
        OnClick="btnSave_Click" />

    <asp:Button ID="btnUpdate" runat="server"
        Text="Update Feedback"
        CssClass="btn btn-primary"
        OnClick="btnUpdate_Click" />

    <asp:Button ID="btnClear" runat="server"
        Text="Clear"
        CssClass="btn btn-secondary"
        CausesValidation="false"
        OnClick="btnClear_Click" />

</div>

            <!-- Feedback Grid -->

            <div class="feedback-card">

                <div class="feedback-top">

                    <h3>Student Feedback</h3>

                    <asp:Button ID="btnExport" runat="server"
                        Text="Export Feedback"
                        CssClass="btn btn-success"
                        CausesValidation="false"
                        OnClick="btnExport_Click" />

                </div>

                <asp:GridView ID="gvFeedback" runat="server"
                    AutoGenerateColumns="False"
                    CssClass="table table-bordered table-hover feedback-grid"
                    GridLines="None"
                    OnRowCommand="gvFeedback_RowCommand"
                    EmptyDataText="No feedback found.">

                    <Columns>

                        <asp:TemplateField HeaderText="ID">
                            <ItemTemplate>
                                <asp:Label ID="lblID" runat="server"
                                    Text='<%# Eval("ID") %>'>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="Student Name">
                            <ItemTemplate>
                                <asp:Label ID="lblStudentName" runat="server"
                                    Text='<%# Eval("StudentName") %>'>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="Course">
                            <ItemTemplate>
                                <asp:Label ID="lblCourseName" runat="server"
                                    Text='<%# Eval("CourseName") %>'>
                                </asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="Rating">
                            <ItemTemplate>

                                <asp:Label ID="lblRating" runat="server"
                                    CssClass="rating"
                                    Text='<%# Eval("Rating") %>'>
                                </asp:Label>

                            </ItemTemplate>
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="Feedback">
                            <ItemTemplate>

                                <asp:Label ID="lblFeedback" runat="server"
                                    Text='<%# Eval("Feedback") %>'>
                                </asp:Label>

                            </ItemTemplate>
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="Action">
                            <ItemTemplate>

                                <asp:LinkButton ID="btnView" runat="server"
                                    Text="View"
                                    CommandName="cmd_view"
                                    CommandArgument='<%# Eval("ID") %>'
                                    CausesValidation="false"
                                    CssClass="btn btn-primary btn-sm">
                                </asp:LinkButton>

                                <asp:LinkButton ID="btnDelete" runat="server"
                                    Text="Delete"
                                    CommandName="cmd_delete"
                                    CommandArgument='<%# Eval("ID") %>'
                                    CausesValidation="false"
                                    CssClass="btn btn-danger btn-sm"
                                    OnClientClick="return confirm('Are you sure you want to delete this feedback?');">
                                </asp:LinkButton>

                            </ItemTemplate>
                        </asp:TemplateField>

                    </Columns>

                </asp:GridView>

                <asp:Label ID="lblMessage" runat="server"
                    CssClass="feedback-message">
                </asp:Label>

            </div>


            <!-- Feedback Statistics -->

            <div class="row">

                <div class="col-md-6">

                    <div class="feedback-stat">

                        <h3>Feedback Statistics</h3>

                        <p>
                            <strong>Total Feedback:</strong>
                            <asp:Label ID="lblTotalFeedback" runat="server"
                                Text="0">
                            </asp:Label>
                        </p>

                        <p>
                            <strong>Average Rating:</strong>
                            <asp:Label ID="lblAverageRating" runat="server"
                                Text="0">
                            </asp:Label>
                            / 5
                        </p>

                        <p>
                            <strong>5 Star Reviews:</strong>
                            <asp:Label ID="lblFiveStar" runat="server"
                                Text="0">
                            </asp:Label>
                        </p>

                        <p>
                            <strong>4 Star Reviews:</strong>
                            <asp:Label ID="lblFourStar" runat="server"
                                Text="0">
                            </asp:Label>
                        </p>

                        <p>
                            <strong>3 Star Reviews:</strong>
                            <asp:Label ID="lblThreeStar" runat="server"
                                Text="0">
                            </asp:Label>
                        </p>

                        

                    </div>

                </div>


                <!-- Quick Actions -->

                <div class="col-md-6">

                    <div class="feedback-actions">

                        <h3>Quick Actions</h3>

                        <asp:Button ID="btnManageUsers" runat="server"
                            Text="Manage Users"
                            CssClass="btn btn-success btn-block"
                            CausesValidation="false"
                            PostBackUrl="~/ManageUsers.aspx" />

                        <asp:Button ID="btnManageCourses" runat="server"
                            Text="Manage Courses"
                            CssClass="btn btn-info btn-block"
                            CausesValidation="false"
                            PostBackUrl="~/ManageCourses.aspx" />

                        <asp:Button ID="btnManageEnrollments" runat="server"
                            Text="Manage Enrollments"
                            CssClass="btn btn-warning btn-block"
                            CausesValidation="false"
                            PostBackUrl="~/ManageEnrollments.aspx" />

                        <asp:Button ID="btnDashboard" runat="server"
                            Text="Go to Dashboard"
                            CssClass="btn btn-secondary btn-block"
                            CausesValidation="false"
                            PostBackUrl="~/Dashboard.aspx" />

                    </div>

                </div>

            </div>

        </div>

    </section>

</asp:Content>