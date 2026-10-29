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
    public partial class ManageCategories : System.Web.UI.Page
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
                fillgrid();

            }
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        // Display Data in GridView
        void fillgrid()
        {
            getcon();

            da = new SqlDataAdapter(
                "SELECT * from Category_tbl", con);


            ds = new DataSet();
            da.Fill(ds);

            gvCategories.DataSource = ds;
            gvCategories.DataBind();
        }

        // Clear Form
        void clear()
        {
            txtCategoryID.Text = "";
            txtCategoryName.Text = "";
            txtTotalCourses.Text = "0";
            ddlStatus.SelectedIndex = 0;
        }


        // Fill Data for Update
        void filldata()
        {
            getcon();

            da = new SqlDataAdapter(
                "select * from Category_tbl where ID='" +
                ViewState["id"] + "'", con);

            ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                txtCategoryID.Text =
                    ds.Tables[0].Rows[0]["ID"].ToString();

                txtCategoryName.Text =
                    ds.Tables[0].Rows[0]["CategoryName"].ToString();

                txtTotalCourses.Text =
                    ds.Tables[0].Rows[0]["TotalCourses"].ToString();

                ddlStatus.SelectedValue =
                    ds.Tables[0].Rows[0]["Status"].ToString();
            }

            con.Close();
        }
        

        protected void btnSave_Click(object sender, EventArgs e)
        {
            getcon();

            cmd = new SqlCommand(
                "insert into Category_tbl " +
                "(CategoryName, TotalCourses, Status) values('" +
                txtCategoryName.Text + "','" +
                txtTotalCourses.Text + "','" +
                ddlStatus.SelectedValue + "')", con);

            cmd.ExecuteNonQuery();

            con.Close();

            getcon();
            fillgrid();
            con.Close();

            clear();

            lblMessage.Text = "Category added successfully!";
        }

        protected void gvCategories_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_edit")
            {
                int id = Convert.ToInt32(e.CommandArgument);

                ViewState["id"] = id;

                filldata();
            }
            else if (e.CommandName == "cmd_delete")
            {
                getcon();

                cmd = new SqlCommand(
                    "delete from Category_tbl where ID='" +
                    e.CommandArgument.ToString() + "'", con);

                cmd.ExecuteNonQuery();

                con.Close();

                getcon();
                fillgrid();
                con.Close();

                clear();

                lblMessage.Text = "Category deleted successfully!";
            }

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            getcon();

            cmd = new SqlCommand(
                "update Category_tbl set " +
                "CategoryName='" + txtCategoryName.Text + "', " +
                "TotalCourses='" + txtTotalCourses.Text + "', " +
                "Status='" + ddlStatus.SelectedValue + "' " +
                "where ID='" + ViewState["id"] + "'", con);

            cmd.ExecuteNonQuery();

            con.Close();

            getcon();
            fillgrid();
            con.Close();

            clear();

            lblMessage.Text = "Category updated successfully!";
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            clear();

            lblMessage.Text = "";
        }


        protected void gvCategories_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

    }
}