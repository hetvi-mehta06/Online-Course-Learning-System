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
    public partial class StudentDashboard : System.Web.UI.Page
    {
        SqlConnection con; // for connection class
        SqlDataAdapter da; // for container
        DataSet ds; // for select
        SqlCommand cmd; // for insert,update,delete

        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["student"] != null)
            {
                getcon();
                fillstudent();
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        void fillstudent()
        {
            da = new SqlDataAdapter("select * from Registration_tbl where [Email Address] = '" + Session["student"] + "'", con);
            ds = new DataSet();
            da.Fill(ds);

            string nm = ds.Tables[0].Rows[0]["Full Name"].ToString();

            lblName.Text = "Welcome " + nm; 
        }


        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
    }
}



