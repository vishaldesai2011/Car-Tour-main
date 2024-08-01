using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vehicle_Review
{
    public partial class Admin_Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["log1"] = null;

        }
        protected void Login(object sender, EventArgs e)
        {

            //log();
            if (TextBox1.Text == "Admin")
            {
                if (TextBox2.Text == "Admin@123")
                {
                    Session["log1"] = "true1";
                    Response.Redirect("Admin.aspx");
                    Response.Write("Success");
                }
            }
            else
            {
                Response.Redirect("Admin_Login.aspx");
            }

        }
        public void log()
        {
            if(TextBox1.Text == "Admin" & TextBox2.Text == "Admin@123")
            {
                Session["log1"] = "true1";
                Response.Redirect("Admin.aspx");
            }
            else
            {
                Response.Redirect("Admin_Login.aspx");
            }
        }
    }
}