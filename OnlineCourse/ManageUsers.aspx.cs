
using System;
using System.Collections.Generic;
using System.Data;
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
    public partial class ManageUsers : System.Web.UI.Page
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

            da = new SqlDataAdapter("select * from Users_tbl", con);

            ds = new DataSet();
            da.Fill(ds);

            gvUsers.DataSource = ds;
            gvUsers.DataBind();

            con.Close();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            getcon();

            cmd = new SqlCommand("insert into Users_tbl (Name, Email, Course, Status) values ('"
                + txtName.Text + "', '"
                + txtEmail.Text + "', '"
                + txtCourse.Text + "', '"
                + ddlStatus.SelectedValue + "')", con);

            cmd.ExecuteNonQuery();

            con.Close();

            lblMessage.Text = "User Added Successfully";

            clear();
            fillgrid();
        }

        protected void gvUsers_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "cmd_edit")
            {
                ViewState["id"] = id;

                getcon();

                da = new SqlDataAdapter("select * from Users_tbl where ID=" + id, con);

                ds = new DataSet();
                da.Fill(ds);

                txtName.Text = ds.Tables[0].Rows[0]["Name"].ToString();
                txtEmail.Text = ds.Tables[0].Rows[0]["Email"].ToString();
                txtCourse.Text = ds.Tables[0].Rows[0]["Course"].ToString();
                ddlStatus.SelectedValue = ds.Tables[0].Rows[0]["Status"].ToString();

                con.Close();

                lblMessage.Text = "User Details Loaded";
            }

            if (e.CommandName == "cmd_view")
            {
                getcon();

                da = new SqlDataAdapter("select * from Users_tbl where ID=" + id, con);

                ds = new DataSet();
                da.Fill(ds);

                txtName.Text = ds.Tables[0].Rows[0]["Name"].ToString();
                txtEmail.Text = ds.Tables[0].Rows[0]["Email"].ToString();
                txtCourse.Text = ds.Tables[0].Rows[0]["Course"].ToString();
                ddlStatus.SelectedValue = ds.Tables[0].Rows[0]["Status"].ToString();

                con.Close();

                lblMessage.Text = "User Details Loaded";
            }

            if (e.CommandName == "cmd_delete")
            {
                getcon();

                cmd = new SqlCommand("delete from Users_tbl where ID=" + id, con);

                cmd.ExecuteNonQuery();

                con.Close();

                lblMessage.Text = "User Deleted Successfully";

                clear();
                fillgrid();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            getcon();

            cmd = new SqlCommand("update Users_tbl set Name='"
                + txtName.Text + "', Email='"
                + txtEmail.Text + "', Course='"
                + txtCourse.Text + "', Status='"
                + ddlStatus.SelectedValue
                + "' where ID=" + ViewState["id"], con);

            cmd.ExecuteNonQuery();

            con.Close();

            lblMessage.Text = "User Updated Successfully";

            clear();
            fillgrid();
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            clear();
        }

        void clear()
        {
            txtName.Text = "";
            txtEmail.Text = "";
            txtCourse.Text = "";
            ddlStatus.SelectedIndex = 0;


        }

        protected void btnViewUsers_Click(object sender, EventArgs e)
        {
            fillgrid();

            lblMessage.Text = "Users Loaded Successfully";
        }
    }

}
