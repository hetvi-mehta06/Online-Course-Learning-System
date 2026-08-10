
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineCourse
{
    public partial class ManageUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindUsers();
            }
        }

        private void BindUsers()
        {
            DataTable dt = new DataTable();

            dt.Columns.Add("ID");
            dt.Columns.Add("Name");
            dt.Columns.Add("Email");
            dt.Columns.Add("Course");
            dt.Columns.Add("Status");

            dt.Rows.Add("1", "Rahul Patel", "rahul@gmail.com", "HTML & CSS", "Active");
            dt.Rows.Add("2", "Priya Shah", "priya@gmail.com", "ASP.NET", "Active");
            dt.Rows.Add("3", "Meet Joshi", "meet@gmail.com", "Python", "Pending");
            dt.Rows.Add("4", "Riya Mehta", "riya@gmail.com", "Java Programming", "Active");
            dt.Rows.Add("5", "Dhruv Patel", "dhruv@gmail.com", "JavaScript", "Active");
            dt.Rows.Add("6", "Neha Shah", "neha@gmail.com", "Database Management", "Active");
            dt.Rows.Add("7", "Amit Patel", "amit@gmail.com", "Python Programming", "Pending");
            dt.Rows.Add("8", "Krishna Joshi", "krishna@gmail.com", "ASP.NET Web Forms", "Active");

            gvUsers.DataSource = dt;
            gvUsers.DataBind();
        }
    }
}

        