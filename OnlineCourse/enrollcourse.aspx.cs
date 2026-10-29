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
    public partial class enrollcourse : System.Web.UI.Page
    {


        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getcon();
                fillcourse();
                fillgrid();
            }
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void fillcourse()
        {
            getcon();

            da = new SqlDataAdapter("select ID, CourseName from Course_tbl", con);
            ds = new DataSet();
            da.Fill(ds);

            ddlCourse.DataSource = ds;
            ddlCourse.DataTextField = "CourseName";
            ddlCourse.DataValueField = "ID";
            ddlCourse.DataBind();

            con.Close();
        }

        void fillgrid()
        {
            getcon();

            da = new SqlDataAdapter("select * from Enrollments_tbl", con);

            ds = new DataSet();
            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();

            con.Close();
        }

        protected void btnEnroll_Click(object sender, EventArgs e)
        {
            getcon();

            cmd = new SqlCommand("insert into Enrollments_tbl (StudentName, CourseName, EnrollDate, Progress, CertificateStatus) values ('" + txtStudentName.Text + "', '" + ddlCourse.SelectedItem.Text + "', '" + txtEnrollDate.Text + "', '0', 'Pending')", con);

            cmd.ExecuteNonQuery();

            con.Close();

            lblmsg.Text = "Course enrolled successfully!";

            fillgrid();
        }


        //protected void Page_Load(object sender, EventArgs e)
        //{


        //}
    }
}