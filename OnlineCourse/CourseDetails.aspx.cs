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
    public partial class CourseDetails : System.Web.UI.Page
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

        void filldata()
        {
            getcon();

            da = new SqlDataAdapter("select * from Course_tbl where ID = " + Session["CourseID"].ToString(), con);

            ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                lblCourseTitle.InnerText = ds.Tables[0].Rows[0]["CourseName"].ToString();

                lblCourseName.InnerText = ds.Tables[0].Rows[0]["CourseName"].ToString();

                lblCategory.Text = ds.Tables[0].Rows[0]["CategoryID"].ToString();

                lblPrice.Text = "₹" + ds.Tables[0].Rows[0]["Price"].ToString();

                lblStatus.Text = ds.Tables[0].Rows[0]["Status"].ToString();
            }

            con.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["CourseID"] != null)
                {
                    filldata();
                }
                else
                {
                    Response.Redirect("course.aspx");
                }
            }
        }
    }
}