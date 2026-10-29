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
            getcon();

            da = new SqlDataAdapter("select * from Course_tbl", con);
            ds = new DataSet();
            da.Fill(ds);

            con.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblAcademy.Text = "LearnSphere";
                lblCertificateTitle.Text = "Certificate of Completion";
                lblSubtitle.Text = "This certificate is proudly presented to";
                lblStudentName.Text = "Hetvi Mehta";
                lblCourseName.Text = "ASP.NET Web Forms";
                lblInstructor.Text = "LearnSphere";
                lblCompletionDate.Text = DateTime.Now.ToString("dd MMMM yyyy");
                lblCertificateID.Text = "LS20260001";
            }
        }
    }
}


    //    protected void Page_Load(object sender, EventArgs e)
    //    {

    //    }
    //}
