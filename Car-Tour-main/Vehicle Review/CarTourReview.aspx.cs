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
    public partial class CarTourReview : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        String first_name;
        String last_name;
        String uname;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            var ses = Session["log"];

            if (ses != null)
            {
                if (ses.ToString() == "true")
                {
                    //Response.Write("OKK");
                    uname = Session["username"].ToString();

                    string id = Request.QueryString["car"];
                    getCarname(id);
                    fetch_name(Session["username"].ToString());
                   
                }

            }
            else
            {
                Response.Redirect("login.aspx");
            }



        }
        protected void Submit1(object sender, EventArgs e)
        {
            //try
            //{
                DateTime currentDateTime = DateTime.Now;
                string time = currentDateTime.ToString("yyyy-MM-dd HH:mm:ss");
                //Response.Write(Title.Text + " " + Description.Text + " " + Rating.Text);
                con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=vehiclereview;Integrated Security=True";
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Reviews(id,uid,fname,lname,title,text,rating,date)values(@id,@uid,@fname,@lname,@title,@text,@rating,@date)", con);
                cmd.Parameters.AddWithValue("@id", Request.QueryString["car"]);
                cmd.Parameters.AddWithValue("@uid", uname);
                cmd.Parameters.AddWithValue("@fname",first_name);
                cmd.Parameters.AddWithValue("@lname", last_name);
                cmd.Parameters.AddWithValue("@title", Title.Text);
                cmd.Parameters.AddWithValue("@text", Description.Text);
                cmd.Parameters.AddWithValue("@rating", Rating.Text);
                cmd.Parameters.AddWithValue("@date", time);
                cmd.ExecuteNonQuery();

            //}
            //catch(Exception ex)
            //{
            Response.Redirect("index.aspx?CAR="+Request.QueryString["car"] + "") ;
            //}


        }
        public void getCarname(string carname)
        {
            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=vehiclereview;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Cars where id=@id", con);
            cmd.Parameters.AddWithValue("@id", carname);
            SqlDataReader reader = cmd.ExecuteReader();
            byte[] bytes1;
            while (reader.Read())
            {
                bytes1 = (byte[])reader["All_img1"];
                Image1.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(bytes1);
                String car = reader.GetString(2);
                String variant = reader.GetString(3);
                CARNAME.Text = car + " " + variant;

            }
            reader.Close();
            con.Close();
        }
        public void fetch_name(string users)
        {


            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=vehiclereview;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM users where username=@username", con);
            cmd.Parameters.AddWithValue("@username", users);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                first_name = reader.GetString(3);
                last_name = reader.GetString(4);
            }
            reader.Close();
            con.Close();

        }

    }
}

    