using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace OnlineCourse
{
    public partial class register : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;

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



        protected void btnRegister_Click(object sender, EventArgs e)
        {
            getcon();

            cmd = new SqlCommand( "insert into Registration_tbl " + "([Full Name], [Email Address], [Mobile Number], [Gender], [Password], [Confirm Password]) " +
       "VALUES ('" +
       txtName.Text + "', '" +
       txtEmail.Text + "', '" +
       txtPhone.Text + "', '" +
       ddlGender.SelectedValue + "', '" +
       txtPassword.Text + "', '" +
       txtConfirmPassword.Text + "')",con);

            cmd.ExecuteNonQuery();

            //Response.Write("<script>alert('Registration Successfully');</script>");

            clear();
            fillgrid();
        }

        protected void gvRegister_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void gvRegister_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
  }

