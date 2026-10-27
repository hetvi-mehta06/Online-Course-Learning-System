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
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con; // for connection class
        SqlDataAdapter da; // for container
        DataSet ds; // for select
        SqlCommand cmd; // for insert,update,delete

        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (!(string.IsNullOrEmpty(txtEmail.Text)) && !(string.IsNullOrEmpty(txtPassword.Text)))
            {

                cmd = new SqlCommand("select count(*) from Registration_tbl where [Email Address] = '" + txtEmail.Text + "' and Password = '" + txtPassword.Text + "'", con);

                int i = Convert.ToInt16(cmd.ExecuteScalar());

                if (i > 0)
                {
                    Session["student"] = txtEmail.Text;

                    Response.Redirect("StudentDashboard.aspx");
                }
                else
                {
                    Response.Write("Invalid username and password");
                }
            }
        }
    }
}