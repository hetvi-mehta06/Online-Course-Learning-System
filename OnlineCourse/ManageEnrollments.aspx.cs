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

    public partial class ManageEnrollments : System.Web.UI.Page
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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillgrid();
            }
        }

        void fillgrid()
        {
            getcon();

            da = new SqlDataAdapter("select * from Enrollments_tbl", con);

            ds = new DataSet();
            da.Fill(ds);

            gvEnrollments.DataSource = ds;
            gvEnrollments.DataBind();

            con.Close();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            getcon();

            cmd = new SqlCommand(
                "insert into Enrollments_tbl (StudentName, CourseName, EnrollDate, Progress, CertificateStatus) values ('"
                + txtStudentName.Text + "', '"
                + txtCourseName.Text + "', '"
                + txtEnrollDate.Text + "', "
                + txtProgress.Text + ", '"
                + ddlCertificate.SelectedValue + "')", con);

            cmd.ExecuteNonQuery();

            con.Close();

            lblMessage.Text = "Enrollment Added Successfully";

            clear();
            fillgrid();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            getcon();

            cmd = new SqlCommand(
                "update Enrollments_tbl set StudentName='"
                + txtStudentName.Text + "', CourseName='"
                + txtCourseName.Text + "', EnrollDate='"
                + txtEnrollDate.Text + "', Progress="
                + txtProgress.Text + ", CertificateStatus='"
                + ddlCertificate.SelectedValue
                + "' where ID=" + ViewState["id"], con);

            cmd.ExecuteNonQuery();

            con.Close();

            lblMessage.Text = "Enrollment Updated Successfully";

            clear();
            fillgrid();
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            clear();
        }

        void clear()
        {
            txtStudentName.Text = "";
            txtCourseName.Text = "";
            txtEnrollDate.Text = "";
            txtProgress.Text = "";
            ddlCertificate.SelectedIndex = 0;


        }

        protected void btnViewAll_Click(object sender, EventArgs e)
        {
            fillgrid();

            lblMessage.Text = "Enrollments Loaded Successfully";
        }

        protected void gvEnrollments_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "cmd_edit")
            {
                ViewState["id"] = id;

                getcon();

                da = new SqlDataAdapter("select * from Enrollments_tbl where ID=" + id, con);

                ds = new DataSet();
                da.Fill(ds);

                txtStudentName.Text = ds.Tables[0].Rows[0]["StudentName"].ToString();
                txtCourseName.Text = ds.Tables[0].Rows[0]["CourseName"].ToString();
                txtEnrollDate.Text = Convert.ToDateTime(ds.Tables[0].Rows[0]["EnrollDate"]).ToString("yyyy-MM-dd");
                txtProgress.Text = ds.Tables[0].Rows[0]["Progress"].ToString();
                ddlCertificate.SelectedValue = ds.Tables[0].Rows[0]["CertificateStatus"].ToString();

                con.Close();

                lblMessage.Text = "Enrollment Details Loaded";
            }

            if (e.CommandName == "cmd_view")
            {
                getcon();

                da = new SqlDataAdapter("select * from Enrollments_tbl where ID=" + id, con);

                ds = new DataSet();
                da.Fill(ds);

                txtStudentName.Text = ds.Tables[0].Rows[0]["StudentName"].ToString();
                txtCourseName.Text = ds.Tables[0].Rows[0]["CourseName"].ToString();
                txtEnrollDate.Text = Convert.ToDateTime(ds.Tables[0].Rows[0]["EnrollDate"]).ToString("yyyy-MM-dd");
                txtProgress.Text = ds.Tables[0].Rows[0]["Progress"].ToString();
                ddlCertificate.SelectedValue = ds.Tables[0].Rows[0]["CertificateStatus"].ToString();

                con.Close();

                lblMessage.Text = "Enrollment Details Loaded";
            }

            if (e.CommandName == "cmd_delete")
            {
                getcon();

                cmd = new SqlCommand("delete from Enrollment_tbl where ID=" + id, con);

                cmd.ExecuteNonQuery();

                con.Close();

                lblMessage.Text = "Enrollment Deleted Successfully";

                clear();
                fillgrid();
            }
        }
    }
}


