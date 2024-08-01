using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vehicle_Review
{
    public partial class Contact : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SubMit(object sender, EventArgs e)
        {
            try
            {
                DateTime currentDateTime = DateTime.Now;
                string time = currentDateTime.ToString("yyyy-MM-dd HH:mm:ss");
                con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=vehiclereview;Integrated Security=True";
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Contact(Name,Email,Message,Time)values(@Name,@Email,@Message,@Time)", con);
                cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Email", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Message", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Time", time);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<Script>alert('Success');</script>");
            }catch(Exception ex)
            {
                Response.Redirect("CarTour.aspx");
            }

        }
    }
}