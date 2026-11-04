using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient; // for connection class
using System.Data; // for dataset
using System.Configuration; // for connection string 

namespace OnlineCourse
{
    public partial class MyNotes : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void fillcourse()
        {
            getcon();

            da = new SqlDataAdapter(
                "SELECT ID, CourseName FROM Course_tbl", con);

            ds = new DataSet();
            da.Fill(ds);

            ddlCourse.DataSource = ds;
            ddlCourse.DataTextField = "CourseName";
            ddlCourse.DataValueField = "ID";
            ddlCourse.DataBind();

            ddlCourse.Items.Insert(0, new ListItem("-- Select Course --", "0"));

            con.Close();
        }

        void fillvideo()
        {
            getcon();

            string courseid = ddlCourse.SelectedValue;

            da = new SqlDataAdapter(
                "SELECT ID, VideoTitle FROM Videos_tbl WHERE CourseID = " + courseid, con);

            ds = new DataSet();
            da.Fill(ds);

            ddlVideo.DataSource = ds;
            ddlVideo.DataTextField = "VideoTitle";
            ddlVideo.DataValueField = "ID";
            ddlVideo.DataBind();

            ddlVideo.Items.Insert(0, new ListItem("-- Select Video --", "0"));

            con.Close();
        }

        void fillnotes()
        {
            getcon();

            da = new SqlDataAdapter(
                "SELECT Course_tbl.CourseName, Videos_tbl.VideoTitle, " +
                "PersonalNotes_tbl.NoteText, PersonalNotes_tbl.CreatedDate " +
                "FROM PersonalNotes_tbl " +
                "INNER JOIN Course_tbl ON PersonalNotes_tbl.CourseID = Course_tbl.ID " +
                "INNER JOIN Videos_tbl ON PersonalNotes_tbl.VideoID = Videos_tbl.ID " +
                "ORDER BY PersonalNotes_tbl.NoteID DESC", con);

            ds = new DataSet();
            da.Fill(ds);

            gvNotes.DataSource = ds;
            gvNotes.DataBind();

            con.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {
                fillcourse();

                ddlVideo.Items.Clear();
                ddlVideo.Items.Insert(0, new ListItem("-- Select Video --", "0"));

                fillnotes();
            }
        }

        protected void ddlCourse_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlVideo.Items.Clear();

            if (ddlCourse.SelectedIndex > 0)
            {
                fillvideo();
            }
            else
            {
                ddlVideo.Items.Insert(0, new ListItem("-- Select Video --", "0"));
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (ddlCourse.SelectedIndex == 0 ||
                ddlVideo.SelectedIndex == 0 ||
                txtNotes.Text == "")
            {
                lblMessage.Text = "Please select course, video and enter your notes.";
                return;
            }

            getcon();

            cmd = new SqlCommand(
                "INSERT INTO PersonalNotes_tbl " +
                "(StudentID, CourseID, VideoID, NoteText, CreatedDate) " +
                "VALUES (0, " + ddlCourse.SelectedValue + ", " +
                ddlVideo.SelectedValue + ", '" +
                txtNotes.Text.Replace("'", "''") + "', GETDATE())", con);

            cmd.ExecuteNonQuery();

            con.Close();

            txtNotes.Text = "";

            lblMessage.Text = "Notes saved successfully!";

            fillnotes();
        }
    }
}
