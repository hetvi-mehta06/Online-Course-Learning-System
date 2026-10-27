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
    public partial class ManageCourses : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;

        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getcon();
                fillcategory();
                fillgrid();
                con.Close();
            }
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        // CATEGORY DROPDOWN

        void fillcategory()
        {
            da = new SqlDataAdapter("select * from Category_tbl", con);

            ds = new DataSet();
            da.Fill(ds);

            ddlCourse.DataSource = ds;
            ddlCourse.DataTextField = "CategoryName";
            ddlCourse.DataValueField = "ID";
            ddlCourse.DataBind();

            ddlCourse.Items.Insert(0, new ListItem("-- Select Course --", "0"));
        }

        // DISPLAY DATA

        void fillgrid()
        {
            da = new SqlDataAdapter("select * from Course_tbl", con);
            ds = new DataSet();
            da.Fill(ds);
            gvCourses.DataSource = ds;
            gvCourses.DataBind();
        }

        // CLEAR DATA

        void clear()
        {
            txtCourseName.Text = "";
            ddlCourse.SelectedIndex = 0;
            txtPrice.Text = "";
            ddlStatus.SelectedIndex = 0;


        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            getcon();

            cmd = new SqlCommand("insert into Course_tbl values('" + txtCourseName.Text + "','" + ddlCourse.SelectedValue + "','" + txtPrice.Text + "','" + ddlStatus.SelectedValue + "')", con);

            cmd.ExecuteNonQuery();

            con.Close();

            clear();

            getcon();
            fillgrid();
            con.Close();

            lblMessage.Text = "Course added successfully";
        }

        protected void gvCourses_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "cmd_edit")
            {
                ViewState["id"] = id;

                getcon();

                da = new SqlDataAdapter("select * from Course_tbl where ID='" + ViewState["id"] + "'", con);

                ds = new DataSet();
                da.Fill(ds);

                txtCourseName.Text = ds.Tables[0].Rows[0]["CourseName"].ToString();
                ddlCourse.SelectedValue = ds.Tables[0].Rows[0]["CategoryID"].ToString();
                txtPrice.Text = ds.Tables[0].Rows[0]["Price"].ToString();
                ddlStatus.SelectedValue = ds.Tables[0].Rows[0]["Status"].ToString();

                con.Close();
            }
            else if (e.CommandName == "cmd_delete")
            {
                getcon();

                cmd = new SqlCommand("delete from Course_tbl where ID='" + id + "'", con);

                cmd.ExecuteNonQuery();

                con.Close();

                clear();

                getcon();
                fillgrid();
                con.Close();

                lblMessage.Text = "Course deleted successfully";
            }

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            getcon();

            cmd = new SqlCommand("update Course_tbl set CourseName='" + txtCourseName.Text + "',CategoryID='" + ddlCourse.SelectedValue + "',Price='" + txtPrice.Text + "',Status='" + ddlStatus.SelectedValue + "' where ID='" + ViewState["id"] + "'", con);

            cmd.ExecuteNonQuery();

            con.Close();

            clear();

            getcon();
            fillgrid();
            con.Close();

            lblMessage.Text = "Course updated successfully";

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            clear();
            lblMessage.Text = "";

        }
    }
}