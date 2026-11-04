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
    public partial class course : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;

        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void fillgrid()
        {
            getcon();

            da = new SqlDataAdapter("select ID, CourseName, CategoryID, Price, Status from Course_tbl", con);

            ds = new DataSet();
            da.Fill(ds);

            rptCourses.DataSource = ds;
            rptCourses.DataBind();

            con.Close();
        }

        void filldata()
        {
            getcon();

            da = new SqlDataAdapter("select * from Course_tbl where ID = " + Session["CourseID"].ToString(), con);

            ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                lblSelectedCourse.Text = ds.Tables[0].Rows[0]["CourseName"].ToString();
                lblCategory.Text = ds.Tables[0].Rows[0]["CategoryID"].ToString();
                lblStatus.Text = ds.Tables[0].Rows[0]["Status"].ToString();
                lblPrice.Text = "₹" + ds.Tables[0].Rows[0]["Price"].ToString();
            }

            da = new SqlDataAdapter("select VideoURL from Videos_tbl where CourseID = " + Session["CourseID"].ToString() + " and Status = 'Published'", con);
            DataSet dsVideo = new DataSet();
            da.Fill(dsVideo);

            if (dsVideo.Tables[0].Rows.Count > 0)
            {
                courseVideo.Attributes["src"] = dsVideo.Tables[0].Rows[0]["VideoURL"].ToString();
            }

            pnlCourseDetails.Visible = true;

            con.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillgrid();
            }
        }

        protected void rptCourses_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

            if (e.CommandName == "details")
            {
                Session["CourseID"] = e.CommandArgument.ToString();

                Response.Redirect("CourseDetails.aspx");
            

            filldata();
            }
        }
    }
}