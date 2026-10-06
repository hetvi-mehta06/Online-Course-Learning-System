<%@ Page Title="" Language="C#" MasterPageFile="~/Student.Master" AutoEventWireup="true" CodeBehind="ASPNETExam.aspx.cs" Inherits="OnlineCourse.ASPNETExam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>

.exam-page {
    background: #f5f3ff;
    padding: 60px 0;
    min-height: 100vh;
}

.exam-box {
    background: white;
    padding: 40px;
    border-radius: 15px;
    box-shadow: 0 5px 25px rgba(0,0,0,0.08);
}

.exam-title {
    color: #6c63ff;
    font-weight: 700;
    margin-bottom: 10px;
}

.exam-subtitle {
    color: #777;
    margin-bottom: 30px;
}

.question-box {
    background: #f8f7ff;
    padding: 20px;
    margin-bottom: 20px;
    border-radius: 10px;
}

.question-box h5 {
    color: #333;
    font-weight: 600;
    margin-bottom: 15px;
}

.question-box table {
    width: 100%;
}

.question-box td {
    padding: 6px 0;
}

.btn-submit {
    background: #6c63ff;
    color: white;
    border: none;
    padding: 12px 30px;
    border-radius: 25px;
}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="exam-page">

    <div class="container">

        <div class="exam-box">

            <h2 class="exam-title">
                ASP.NET Web Forms Exam
            </h2>

            <p class="exam-subtitle">
                Select the correct answer for each question.
            </p>

            <hr />

            <!-- Question 1 -->
            <div class="question-box">

                <h5>1. What does ASP.NET stand for?</h5>

                <asp:RadioButtonList ID="q1" runat="server">
                    <asp:ListItem>Active Server Pages .NET</asp:ListItem>
                    <asp:ListItem>Advanced Server Pages Network</asp:ListItem>
                    <asp:ListItem>Application Server Programming Network</asp:ListItem>
                    <asp:ListItem>Active Software Programming .NET</asp:ListItem>
                </asp:RadioButtonList>

            </div>


            <!-- Question 2 -->
            <div class="question-box">

                <h5>2. Which language is commonly used for ASP.NET Web Forms?</h5>

                <asp:RadioButtonList ID="q2" runat="server">
                    <asp:ListItem>C#</asp:ListItem>
                    <asp:ListItem>HTML</asp:ListItem>
                    <asp:ListItem>CSS</asp:ListItem>
                    <asp:ListItem>SQL</asp:ListItem>
                </asp:RadioButtonList>

            </div>


            <!-- Question 3 -->
            <div class="question-box">

                <h5>3. Which file is used to write the C# code for an ASP.NET Web Form?</h5>

                <asp:RadioButtonList ID="q3" runat="server">
                    <asp:ListItem>.aspx.cs</asp:ListItem>
                    <asp:ListItem>.html</asp:ListItem>
                    <asp:ListItem>.css</asp:ListItem>
                    <asp:ListItem>.sql</asp:ListItem>
                </asp:RadioButtonList>

            </div>


            <!-- Question 4 -->
            <div class="question-box">

                <h5>4. Which ASP.NET control is used to display data in rows and columns?</h5>

                <asp:RadioButtonList ID="q4" runat="server">
                    <asp:ListItem>GridView</asp:ListItem>
                    <asp:ListItem>TextBox</asp:ListItem>
                    <asp:ListItem>Label</asp:ListItem>
                    <asp:ListItem>Button</asp:ListItem>
                </asp:RadioButtonList>

            </div>


            <!-- Question 5 -->
            <div class="question-box">

                <h5>5. Which property is used to set the text displayed by a Button?</h5>

                <asp:RadioButtonList ID="q5" runat="server">
                    <asp:ListItem>Text</asp:ListItem>
                    <asp:ListItem>Name</asp:ListItem>
                    <asp:ListItem>Value</asp:ListItem>
                    <asp:ListItem>Caption</asp:ListItem>
                </asp:RadioButtonList>

            </div>


            <asp:Button ID="btnSubmit"
                runat="server"
                Text="Submit Exam"
                CssClass="btn-submit" />

        </div>

    </div>

</section>
</asp:Content>
