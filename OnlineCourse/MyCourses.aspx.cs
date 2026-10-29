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
    public partial class MyCourses : System.Web.UI.Page
    {

        SqlConnection con; // for connection class
        SqlDataAdapter da; // for container
        DataSet ds; // for select
        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void fillgrid()
        {
            getcon();

            da = new SqlDataAdapter("select ID, CourseName, CategoryID, Price, Status from Course_tbl", con);
            ds = new DataSet();
            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();

            if (ds.Tables[0].Rows.Count == 0)
            {
                lblmsg.Text = "You have not enrolled in any courses yet.";
            }
            else
            {
                lblmsg.Text = "";
            }

            con.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillgrid();
            }
        }
    }
}
