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
    public partial class Admin_Dashbord : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        String val;
        int users=0;



        protected void Page_Load(object sender, EventArgs e)
        {

            var ses = Session["log1"];
            if (ses == null)
            {
                Response.Redirect("Admin_Login.aspx");
            }
            else
            {
                con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=vehiclereview;Integrated Security=True";
                con.Open();
                visitors = new string[12];

                readView();
                usercount();
                carscount();
                TopCarView();
                ReviewsCount();
            }

        }
        public void readView()
        {
            
            SqlCommand cmd = new SqlCommand("SELECT * FROM Visitor_Count", con);
            SqlDataReader reader = cmd.ExecuteReader();
            while(reader.Read())
            {
                //String jan = reader.GetString(10);
                //String feb = reader.GetString(11);
                //String mar = reader.GetString(0);
                //string apr = reader.GetString(1);
                //string may = reader.GetString(2);
                //string june = reader.GetString(3);
                //string july = reader.GetString(4);
                //string aug = reader.GetString(5);
                //string sep = reader.GetString(6);
                //string oct = reader.GetString(7);
                //string nov = reader.GetString(8);
                //string dec = reader.GetString(9);

                //DATA.Text = jan+","+feb+","+ mar + "," + apr + "," + may + "," + june + "," + july + "," + aug + "," + sep + "," + oct + "," +nov+"," + dec;
                String vis = reader.GetString(1);
                val += vis+",";
            }
            DATA.Text = val;
            reader.Close();
        }
        public void usercount()
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM users", con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                users++;
            }
            USERS1.Text = users.ToString();
            reader.Close();
        }

        public void carscount()
        {
            int cars = 0;
            SqlCommand cmd = new SqlCommand("SELECT * FROM Cars", con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                cars++;
            }
            CARS1.Text = cars.ToString();
            reader.Close();
        }

        public void ReviewsCount()
        {
            int Rev = 0;
            SqlCommand cmd = new SqlCommand("SELECT * FROM Reviews", con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                Rev++;
            }
            REVS.Text = Rev.ToString();
            reader.Close();
        }
        public void TopCarView()
        {
            string car_name = "";
            String car_count = "";
            SqlCommand cmd = new SqlCommand("SELECT count,id FROM Car_View_Count ORDER BY count DESC", con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                car_name += reader.GetString(1) + ",";
                car_count += reader.GetInt32(0).ToString() + ",";

            }
            reader.Close();
            CARV.Text = car_name;
            COUNT.Text = car_count;


        }
        public string[] visitors { get; set; }
        //public string[] CARVIEW { get; set; }

    }
}