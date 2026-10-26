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
    public partial class ManageVideos : System.Web.UI.Page
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
                fillcourse();
                fillgrid();
            }
        }

        void fillcourse()
        {
            getcon();

            da = new SqlDataAdapter("select * from Course_tbl", con);
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

            da = new SqlDataAdapter(
                "select Videos_tbl.ID, VideoTitle, CourseName, Duration, " +
                "Videos_tbl.VideoURL, Videos_tbl.Status " +
                "from Videos_tbl inner join Course_tbl " +
                "on Videos_tbl.CourseID = Course_tbl.ID", con);

            ds = new DataSet();
            da.Fill(ds);

            gvVideos.DataSource = ds;
            gvVideos.DataBind();

            con.Close();


        }

        protected void btnManageFeedback_Click(object sender, EventArgs e)
        {

        }

        protected void btnManageEnrollments_Click(object sender, EventArgs e)
        {

        }

        protected void btnManageCategories_Click(object sender, EventArgs e)
        {

        }

        protected void btnManageCourses_Click(object sender, EventArgs e)
        {

        }

        protected void btnAddNewVideo_Click(object sender, EventArgs e)
        {

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            getcon();

            cmd = new SqlCommand(
                "update Videos_tbl set VideoTitle='"
                + txtVideoTitle.Text + "', CourseID='"
                + ddlCourse.SelectedValue + "', Duration='"
                + txtDuration.Text + "', VideoURL='"
                + txtVideoURL.Text + "', Status='"
                + ddlStatus.SelectedValue
                + "' where ID=" + ViewState["id"], con);

            cmd.ExecuteNonQuery();
            con.Close();

            lblMessage.Text = "Video Updated Successfully";

            clear();
            fillgrid();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            getcon();

            cmd = new SqlCommand(
                "insert into Videos_tbl (VideoTitle, CourseID, Duration, VideoURL, Status) values ('"
                + txtVideoTitle.Text + "', '"
                + ddlCourse.SelectedValue + "', '"
                + txtDuration.Text + "', '"
                + txtVideoURL.Text + "', '"
                + ddlStatus.SelectedValue + "')", con);

            cmd.ExecuteNonQuery();
            con.Close();

            lblMessage.Text = "Video Added Successfully";

            clear();
            fillgrid();

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            clear();
        }

        void clear()
        {
            txtVideoTitle.Text = "";
            txtDuration.Text = "";
            txtVideoURL.Text = "";
            ddlCourse.SelectedIndex = 0;
            ddlStatus.SelectedIndex = 0;

        }

        protected void gvVideos_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "cmd_edit")
            {
                ViewState["id"] = id;

                getcon();

                da = new SqlDataAdapter(
                    "select * from Videos_tbl where ID=" + id, con);

                ds = new DataSet();
                da.Fill(ds);

                txtVideoTitle.Text = ds.Tables[0].Rows[0]["VideoTitle"].ToString();
                ddlCourse.SelectedValue = ds.Tables[0].Rows[0]["CourseID"].ToString();
                txtDuration.Text = ds.Tables[0].Rows[0]["Duration"].ToString();
                txtVideoURL.Text = ds.Tables[0].Rows[0]["VideoURL"].ToString();
                ddlStatus.SelectedValue = ds.Tables[0].Rows[0]["Status"].ToString();

                con.Close();
            }

            if (e.CommandName == "cmd_delete")
            {
                getcon();

                cmd = new SqlCommand(
                    "delete from Videos_tbl where ID=" + id, con);

                cmd.ExecuteNonQuery();
                con.Close();

                lblMessage.Text = "Video Deleted Successfully";

                fillgrid();
                clear();
            }
            }
        }

    }
