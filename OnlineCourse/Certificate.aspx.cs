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
    public partial class Certificate : System.Web.UI.Page
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
            if (Session["student"] == null)
            {
                Response.Redirect("login.aspx");
                return;
            }

            if (Session["CourseID"] == null)
            {
                lblMessage.Text = "Course ID is not available.";
                return;
            }

            getcon();

            string email = Session["student"].ToString();
            int courseid = Convert.ToInt32(Session["CourseID"]);

            da = new SqlDataAdapter("SELECT Registration_tbl.[Full Name], Course_tbl.CourseName, Result_tbl.ExamDate, Result_tbl.ResultID FROM Result_tbl INNER JOIN Registration_tbl ON Result_tbl.StudentID = Registration_tbl.Id INNER JOIN Course_tbl ON Result_tbl.CourseID = Course_tbl.ID WHERE Registration_tbl.[Email Address] = '" + email + "' AND Result_tbl.CourseID = " + courseid, con);

            ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                lblStudentName.Text = ds.Tables[0].Rows[0]["Full Name"].ToString();

                lblCourseName.Text = ds.Tables[0].Rows[0]["CourseName"].ToString();

                lblCompletionDate.Text = Convert.ToDateTime(ds.Tables[0].Rows[0]["ExamDate"]).ToString("dd MMMM yyyy");

                lblCertificateID.Text = "LS" + DateTime.Now.Year + ds.Tables[0].Rows[0]["ResultID"].ToString();
            }
            else
            {
                lblMessage.Text = "Certificate is not available. Please complete your exam first.";
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblAcademy.Text = "LearnSphere";
                lblCertificateTitle.Text = "Certificate of Completion";
                lblSubtitle.Text = "This certificate is proudly presented to";
                lblInstructor.Text = "LearnSphere";

                filldata();
            }
        }
    }
}


//    protected void Page_Load(object sender, EventArgs e)
//    {

//    }
//}
