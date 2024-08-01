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

    public partial class Signup : System.Web.UI.Page
    {

        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();


        protected void Page_Load(object sender, EventArgs e)
        {

            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=vehiclereview;Integrated Security=True";
            con.Open();

        }
        protected void Button1_Clicked(object sender, EventArgs e)
        { 

            SqlCommand cmd = new SqlCommand("insert into users" + "(username,password,email,firstname,lastname)values(@username,@password,@email,@firstname,@lastname)", con);
            cmd.Parameters.AddWithValue("@firstname",TextBox1.Text);
            cmd.Parameters.AddWithValue("@lastname",TextBox2.Text);
            cmd.Parameters.AddWithValue("@email",TextBox3.Text);
            cmd.Parameters.AddWithValue("@username",TextBox4.Text);
            cmd.Parameters.AddWithValue("@password",TextBox5.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("login.aspx");
  
            //Label1.Text = "Success";
          


        }
    }
}
