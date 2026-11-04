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
    public partial class Exam : System.Web.UI.Page
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

        void fillgrid()
        {
            getcon();

            da = new SqlDataAdapter("SELECT ID, CourseName FROM Course_tbl", con);

            ds = new DataSet();

            da.Fill(ds);

            dlCourses.DataSource = ds;
            dlCourses.DataBind();

            con.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillgrid();
            }
        }

        protected void dlCourses_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "StartExam")
            {
                Session["CourseID"] = e.CommandArgument.ToString();

                Response.Redirect("TakeExam.aspx");
            }
        }
    }
}