using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// add new namspace

using System.Data.SqlClient;
using System.Data;
using System.Configuration;



namespace OnlineCourse
{
    public partial class TakeExam : System.Web.UI.Page
    {

        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;

        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        // DISPLAY QUESTIONS
        void fillgrid()
        {
            getcon();

            int courseid = Convert.ToInt32(Session["CourseID"]);

            da = new SqlDataAdapter(
                "select * from Quiz_tbl where CourseID='" + courseid + "'", con);

            ds = new DataSet();
            da.Fill(ds);

            dlQuestions.DataSource = ds;
            dlQuestions.DataBind();

            con.Close();

            if (ds.Tables[0].Rows.Count == 0)
            {
                lblMessage.Text = "No questions available for this course.";
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["CourseID"] != null)
                {
                    fillgrid();
                }
                else
                {
                    lblMessage.Text = "Please select a course first.";
                }
            }
        }
        // SUBMIT EXAM
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int totalQuestions = 0;
            int correctAnswers = 0;
            int totalMarks = 0;
            int obtainedMarks = 0;

            for (int i = 0; i < dlQuestions.Items.Count; i++)
            {
                DataListItem item = dlQuestions.Items[i];

                RadioButton rb1 = (RadioButton)item.FindControl("rbOption1");
                RadioButton rb2 = (RadioButton)item.FindControl("rbOption2");
                RadioButton rb3 = (RadioButton)item.FindControl("rbOption3");
                RadioButton rb4 = (RadioButton)item.FindControl("rbOption4");

                HiddenField hfAnswer = (HiddenField)item.FindControl("hfCorrectAnswer");
                HiddenField hfMarks = (HiddenField)item.FindControl("hfMarks");

                totalQuestions++;

                int marks = Convert.ToInt32(hfMarks.Value);
                totalMarks = totalMarks + marks;

                string answer = rb1.Checked ? "A" :
                                rb2.Checked ? "B" :
                                rb3.Checked ? "C" :
                                rb4.Checked ? "D" : "";

                if (answer == hfAnswer.Value)
                {
                    correctAnswers++;
                    obtainedMarks = obtainedMarks + marks;
                }
            }

            int courseid = Convert.ToInt32(Session["CourseID"]);

            getcon();

            cmd = new SqlCommand("insert into Result_tbl (StudentID, CourseID, TotalQuestions, CorrectAnswers, TotalMarks, ObtainedMarks, ExamDate) select Id, '" + courseid + "', '" + totalQuestions + "', '" + correctAnswers + "', '" + totalMarks + "', '" + obtainedMarks + "', GETDATE() from Registration_tbl where [Email Address] = '" + Session["student"] + "'", con);

            cmd.ExecuteNonQuery();

            con.Close();

            lblMessage.Text = "Exam Submitted Successfully!<br/>" +
                "Total Questions: " + totalQuestions +
                " | Correct Answers: " + correctAnswers +
                " | Obtained Marks: " + obtainedMarks +
                " / " + totalMarks;
        }
    }
}




