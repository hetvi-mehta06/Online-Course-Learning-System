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
    public partial class videolesson : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void fillgrid()
        {
            getcon();

            da = new SqlDataAdapter(
                "select ID, VideoTitle, CourseID, Duration, VideoURL, Status from Videos_tbl where Status='Published'",
                con);

            ds = new DataSet();
            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();

            con.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillgrid();
            }

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "WatchVideo")
            {
                getcon();

                cmd = new SqlCommand(
                    "select VideoURL from Videos_tbl where ID=" +
                    Convert.ToInt32(e.CommandArgument), con);

                da = new SqlDataAdapter(cmd);
                ds = new DataSet();
                da.Fill(ds);

                con.Close();

                if (ds.Tables[0].Rows.Count > 0)
                {
                    string url = ds.Tables[0].Rows[0]["VideoURL"].ToString();

                    if (url != "")
                    {
                        hlSelectedVideo.NavigateUrl = url;
                        hlSelectedVideo.Visible = true;
                        hlSelectedVideo.Text = "Open Video";

                        lblmsg.Text = "Video is ready. Click Open Video to watch.";
                    }
                    else
                    {
                        hlSelectedVideo.Visible = false;
                        lblmsg.Text = "Video URL is not available.";
                    }
                }
                else
                {
                    hlSelectedVideo.Visible = false;
                    lblmsg.Text = "Video URL not found.";
                }
            }
        }
    }
}
    
