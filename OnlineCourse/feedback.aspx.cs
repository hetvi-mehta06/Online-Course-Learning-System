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
    public partial class feedback : System.Web.UI.Page
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

        void filldata()
        {
            getcon();

            da = new SqlDataAdapter("select * from Feedback_tbl", con);
            ds = new DataSet();
            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();

            con.Close();
        }

        void fillcourse()
        {
            getcon();

            da = new SqlDataAdapter("select * from Course_tbl", con);
            ds = new DataSet();
            da.Fill(ds);

            ddlCourse.DataSource = ds;
            ddlCourse.DataTextField = "CourseName";
            ddlCourse.DataValueField = "CourseName";
            ddlCourse.DataBind();

            con.Close();
        }

        void clear()
        {
            txtStudentName.Text = "";
            ddlCourse.SelectedIndex = 0;
            ddlRating.SelectedIndex = 0;
            txtFeedback.Text = "";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillcourse();
                filldata();
            }

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            getcon();

            cmd = new SqlCommand("insert into Feedback_tbl (StudentName, CourseName, Rating, Feedback) values ('" + txtStudentName.Text + "', '" + ddlCourse.SelectedValue + "', '" + ddlRating.SelectedValue + "', '" + txtFeedback.Text + "')", con);
            cmd.ExecuteNonQuery();

            con.Close();

            lblmsg.Text = "Feedback submitted successfully.";

            filldata();
            clear();
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            clear();
            lblmsg.Text = "";
        }
    }
}