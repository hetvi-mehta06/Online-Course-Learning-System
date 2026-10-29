
﻿

﻿using System;
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
    public partial class profile : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;

        int studentId;

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
                filldata();
                fillgrid();
            }
        }

        void fillgrid()
        {
            getcon();

            cmd = new SqlCommand(
                "select * from Profile_tbl where StudentId=" + studentId, con);

            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();

            con.Close();
        }

        void filldata()
        {
            getcon();

            cmd = new SqlCommand(
                "select * from Profile_tbl where StudentId=" + studentId, con);

            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                txtName.Text = ds.Tables[0].Rows[0]["FullName"].ToString();
                txtEmail.Text = ds.Tables[0].Rows[0]["Email"].ToString();
                txtMobile.Text = ds.Tables[0].Rows[0]["Mobile"].ToString();
                ddlGender.SelectedValue = ds.Tables[0].Rows[0]["Gender"].ToString();
                txtCity.Text = ds.Tables[0].Rows[0]["City"].ToString();
                imgProfile.ImageUrl = ds.Tables[0].Rows[0]["ProfilePhoto"].ToString();
            }

            con.Close();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            getcon();

            string photo = imgProfile.ImageUrl;

            cmd = new SqlCommand(
                "insert into Profile_tbl (StudentId, FullName, Email, Mobile, Gender, City, ProfilePhoto) values (" +
                studentId + ", '" + txtName.Text + "', '" + txtEmail.Text +
                "', '" + txtMobile.Text + "', '" + ddlGender.SelectedValue +
                "', '" + txtCity.Text + "', '" + photo + "')", con);

            cmd.ExecuteNonQuery();
            con.Close();

            lblmsg.Text = "Profile Saved Successfully!";

            filldata();
            fillgrid();
            clear();
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            txtName.Enabled = true;
            txtEmail.Enabled = true;
            txtMobile.Enabled = true;
            ddlGender.Enabled = true;
            txtCity.Enabled = true;

            lblmsg.Text = "You can edit your profile now.";
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            getcon();

            cmd = new SqlCommand(
                "update Profile_tbl set FullName='" + txtName.Text +
                "', Email='" + txtEmail.Text +
                "', Mobile='" + txtMobile.Text +
                "', Gender='" + ddlGender.SelectedValue +
                "', City='" + txtCity.Text +
                "', ProfilePhoto='" + imgProfile.ImageUrl +
                "' where StudentId=" + studentId, con);

            cmd.ExecuteNonQuery();
            con.Close();

            lblmsg.Text = "Profile Updated Successfully!";

            filldata();
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
            txtMobile.Text = "";
            ddlGender.SelectedIndex = 0;
            txtCity.Text = "";
            lblmsg.Text = "";
        }

        protected void btnChangePhoto_Click(object sender, EventArgs e)
        {
            if (fuProfilePhoto.HasFile)
            {
                string ext = System.IO.Path.GetExtension(
                    fuProfilePhoto.FileName).ToLower();

                if (ext == ".jpg" || ext == ".jpeg" || ext == ".png")
                {
                    string folder = Server.MapPath("~/Images/");

                    if (!System.IO.Directory.Exists(folder))
                    {
                        System.IO.Directory.CreateDirectory(folder);
                    }

                    string fileName = System.Guid.NewGuid().ToString() + ext;

                    fuProfilePhoto.SaveAs(folder + fileName);

                    string photoPath = "~/Images/" + fileName;

                    imgProfile.ImageUrl = photoPath;
                    Session["ProfilePhoto"] = photoPath;

                    lblmsg.Text = "Photo Changed Successfully!";
                }
                else
                {
                    lblmsg.Text = "Please select JPG or PNG image.";
                }
            }
            else
            {
                lblmsg.Text = "Please select a photo first.";
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EditProfile")
            {
                int id = Convert.ToInt32(e.CommandArgument);

                getcon();

                cmd = new SqlCommand(
                    "select * from Profile_tbl where Id=" + id +
                    " and StudentId=" + studentId, con);

                da = new SqlDataAdapter(cmd);
                ds = new DataSet();
                da.Fill(ds);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    txtName.Text = ds.Tables[0].Rows[0]["FullName"].ToString();
                    txtEmail.Text = ds.Tables[0].Rows[0]["Email"].ToString();
                    txtMobile.Text = ds.Tables[0].Rows[0]["Mobile"].ToString();
                    ddlGender.SelectedValue = ds.Tables[0].Rows[0]["Gender"].ToString();
                    txtCity.Text = ds.Tables[0].Rows[0]["City"].ToString();
                    imgProfile.ImageUrl = ds.Tables[0].Rows[0]["ProfilePhoto"].ToString();

                    txtName.Enabled = true;
                    txtEmail.Enabled = true;
                    txtMobile.Enabled = true;
                    ddlGender.Enabled = true;
                    txtCity.Enabled = true;

                    lblmsg.Text = "Edit your profile and click Update.";
                }

                con.Close();
            }

            if (e.CommandName == "DeleteProfile")
            {
                int id = Convert.ToInt32(e.CommandArgument);

                getcon();

                cmd = new SqlCommand(
                    "delete from Profile_tbl where Id=" + id +
                    " and StudentId=" + studentId, con);

                cmd.ExecuteNonQuery();
                con.Close();

                lblmsg.Text = "Profile Deleted Successfully!";

                filldata();
                fillgrid();
            }
        }
    }
}
