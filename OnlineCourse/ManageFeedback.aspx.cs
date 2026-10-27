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
    public partial class ManageFeedback : System.Web.UI.Page
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

            da = new SqlDataAdapter(
                "select * from Feedback_tbl", con);

            ds = new DataSet();
            da.Fill(ds);

            gvFeedback.DataSource = ds;
            gvFeedback.DataBind();

            con.Close();
        }


        protected void btnSave_Click(object sender, EventArgs e)
        {
            getcon();

            cmd = new SqlCommand(
                "insert into Feedback_tbl (StudentName, CourseName, Rating, Feedback) values ('"
                + txtStudentName.Text + "', '"
                + txtCourseName.Text + "', '"
                + txtRating.Text + "', '"
                + txtFeedback.Text + "')", con);

            cmd.ExecuteNonQuery();
            con.Close();

            lblMessage.Text = "Feedback Added Successfully";

            clear();
            fillgrid();
        }

        protected void gvFeedback_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "cmd_edit")
            {
                ViewState["id"] = id;

                getcon();

                da = new SqlDataAdapter(
                    "select * from Feedback_tbl where ID=" + id, con);

                ds = new DataSet();
                da.Fill(ds);

                txtStudentName.Text = ds.Tables[0].Rows[0]["StudentName"].ToString();
                txtCourseName.Text = ds.Tables[0].Rows[0]["CourseName"].ToString();
                txtRating.Text = ds.Tables[0].Rows[0]["Rating"].ToString();
                txtFeedback.Text = ds.Tables[0].Rows[0]["Feedback"].ToString();

                con.Close();

                lblMessage.Text = "Feedback Details Loaded";
            }

            if (e.CommandName == "cmd_view")
            {
                getcon();

                da = new SqlDataAdapter(
                    "select * from Feedback_tbl where ID=" + id, con);

                ds = new DataSet();
                da.Fill(ds);

                txtStudentName.Text = ds.Tables[0].Rows[0]["StudentName"].ToString();
                txtCourseName.Text = ds.Tables[0].Rows[0]["CourseName"].ToString();
                txtRating.Text = ds.Tables[0].Rows[0]["Rating"].ToString();
                txtFeedback.Text = ds.Tables[0].Rows[0]["Feedback"].ToString();

                con.Close();

                lblMessage.Text = "Feedback Details Loaded";
            }

            if (e.CommandName == "cmd_delete")
            {
                getcon();

                cmd = new SqlCommand(
                    "delete from Feedback_tbl where ID=" + id, con);

                cmd.ExecuteNonQuery();

                con.Close();

                lblMessage.Text = "Feedback Deleted Successfully";

                clear();
                fillgrid();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            getcon();

            cmd = new SqlCommand(
                "update Feedback_tbl set StudentName='"
                + txtStudentName.Text + "', CourseName='"
                + txtCourseName.Text + "', Rating='"
                + txtRating.Text + "', Feedback='"
                + txtFeedback.Text
                + "' where ID=" + ViewState["id"], con);

            cmd.ExecuteNonQuery();

            con.Close();

            lblMessage.Text = "Feedback Updated Successfully";

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
            txtRating.Text = "";
            txtFeedback.Text = "";


        }

        protected void btnExport_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "Export feature can be added later.";
        }
    }
}