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
    public partial class register : System.Web.UI.Page
    {
        SqlConnection con; // for connection class
        SqlDataAdapter da; // for container
        DataSet ds; // for select
        SqlCommand cmd; // for insert,update,delete

        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            fillgrid();
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void fillgrid()
        {
            getcon();
            da = new SqlDataAdapter("select * from Registration_tbl", con);
            ds = new DataSet();
            da.Fill(ds);
            gvRegister.DataSource = ds;
            gvRegister.DataBind();
        }

        void clear()
        {
            txtName.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
            ddlGender.SelectedIndex = -1;
            txtPassword.Text = "";
            txtConfirmPassword.Text = "";
        }

        // Fill Data for Update
        void filldata()
        {
            getcon();

            da = new SqlDataAdapter(
                "select * from Registration_tbl where Id='"
                + ViewState["id"] + "'", con);

            ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                txtName.Text =
                    ds.Tables[0].Rows[0]["Full Name"].ToString();

                txtEmail.Text =
                    ds.Tables[0].Rows[0]["Email Address"].ToString();

                txtPhone.Text =
                    ds.Tables[0].Rows[0]["Mobile Number"].ToString();

                ddlGender.SelectedValue =
                    ds.Tables[0].Rows[0]["Gender"].ToString();

                txtPassword.Text =
                    ds.Tables[0].Rows[0]["Password"].ToString();

                txtConfirmPassword.Text =
                    ds.Tables[0].Rows[0]["Confirm Password"].ToString();
            }

            con.Close();
        }



        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (btnRegister.Text == "Register")
            {
                getcon();

                cmd = new SqlCommand(
                    "insert into Registration_tbl " +
                    "([Full Name],[Email Address],[Mobile Number],Gender,Password,[Confirm Password]) " +
                    "values('" +
                    txtName.Text + "','" +
                    txtEmail.Text + "','" +
                    txtPhone.Text + "','" +
                    ddlGender.SelectedValue + "','" +
                    txtPassword.Text + "','" +
                    txtConfirmPassword.Text + "')", con);

                cmd.ExecuteNonQuery();

                con.Close();

                clear();
                fillgrid();
            }
            else
            {
                // Update
                getcon();

                cmd = new SqlCommand(
                    "update Registration_tbl set " +
                    "[Full Name]='" + txtName.Text + "', " +
                    "[Email Address]='" + txtEmail.Text + "', " +
                    "[Mobile Number]='" + txtPhone.Text + "', " +
                    "Gender='" + ddlGender.SelectedValue + "', " +
                    "Password='" + txtPassword.Text + "', " +
                    "[Confirm Password]='" + txtConfirmPassword.Text + "' " +
                    "where Id='" + ViewState["id"] + "'", con);

                cmd.ExecuteNonQuery();

                con.Close();

                clear();
                fillgrid();

                btnRegister.Text = "Register";
            }
        }

        protected void gvRegister_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void gvRegister_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void gvRegister_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "cmd_edt")
            {
                int id = Convert.ToInt32(e.CommandArgument);

                ViewState["id"] = id;

                btnRegister.Text = "Update";

                filldata();
            }
            else if (e.CommandName == "cmd_dlt")
            {
                getcon();

                cmd = new SqlCommand(
                    "delete from Registration_tbl where Id='" +
                    e.CommandArgument.ToString() + "'", con);

                cmd.ExecuteNonQuery();

                con.Close();

                fillgrid();
                clear();

                btnRegister.Text = "Register";
            }
        }

    }
}
  

