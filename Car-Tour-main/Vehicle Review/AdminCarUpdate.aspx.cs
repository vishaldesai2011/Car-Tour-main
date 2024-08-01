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
    public partial class AdminCarUpdate : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            var ses = Session["log1"];
            if (ses == null)
            {
                Response.Redirect("Admin_Login.aspx");
            }
            else
            {

                if (Request.QueryString["CAR"] == null || Request.QueryString["CAR"].Length == 0)
                {
                    Response.Redirect("Admin.aspx");
                }
                else
                {
                    id = Request.QueryString["CAR"];
                    Company1();
                    //getCarData(id);

                }
            }


        }
        public void Company1()
        {
            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=vehiclereview;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Company", con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                //result[i] = reader.GetString(0); // Replace 0 with the index of the column you want to retrieve
                string a = reader.GetString(0);
                DropDownList1.Items.Add(new ListItem(a, a));

            }
            reader.Close();
            con.Close();
        }
        public void getCarData(string id)
        {
            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=vehiclereview;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Cars where id=@id", con);
            cmd.Parameters.AddWithValue("@id", id);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                String car = reader.GetString(2);
                TextBox1.Text = car;
                TextBox23.Text = reader.GetString(3);
                TextBox2.Text = reader.GetString(4);
                TextBox3.Text = reader.GetString(5);
                TextBox4.Text = reader.GetString(6);
                TextBox5.Text = reader.GetString(7);
                TextBox6.Text = reader.GetString(8);
                TextBox7.Text = reader.GetString(9);
                TextBox8.Text = reader.GetString(10);
                TextBox9.Text = reader.GetString(11);
                TextBox10.Text = reader.GetString(12);
                TextBox11.Text = reader.GetString(13);
                TextBox12.Text = reader.GetString(7);
                TextBox13.Text = reader.GetString(14);
                TextBox14.Text = reader.GetString(15);
                TextBox15.Text = reader.GetString(16);
                TextBox16.Text = reader.GetString(17);
                TextBox17.Text = reader.GetString(18);
                TextBox18.Text = reader.GetString(19);
                TextBox19.Text = reader.GetString(20);
                TextBox22.Text = reader.GetString(21);
                TextBox20.Text = reader.GetString(23);
                TextBox21.Text = reader.GetString(22);
                TextBox24.Text = reader.GetString(49);










            }
            con.Close();
            reader.Close();

        }
        protected void UPDATE(object sender, EventArgs e)
        {
            try
            {

                UpdateCar();
            } catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        public void UpdateCar() {
            String id = Request.QueryString["CAR"];
            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=vehiclereview;Integrated Security=True";
            string query = "UPDATE Cars SET " +
    "Price=@Price, Engine=@Engine, BHP=@BHP, Seating_Capacity=@Seating_Capacity, Milage=@Milage, " +
    "Fule=@Fule, Drive_Type=@Drive_Type, City_Milage=@City_Milage, Engine_Displacement=@Engine_Displacement, " +
    "Max_Power=@Max_Power, Ground_Clearance_Unladen=@Ground_Clearance_Unladen, No_of_cylinder=@No_of_cylinder, " +
    "Max_Torque=@Max_Torque, Transmission_Type=@Transmission_Type,Fuel_Tank_Capacity = @Fuel_Tank_Capacity,Fuel_Type=@Fuel_Type,Body_Type=@Body_Type, Colour=@Colour, " +
    "Good_Points=@Good_Points, Bad_Points=@Bad_Points, CarPrice=@CarPrice " +
    "WHERE id=@id";

            // Create a new SqlCommand object
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.Parameters.AddWithValue("@Price", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Engine", TextBox3.Text);
            cmd.Parameters.AddWithValue("@BHP", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Seating_Capacity", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Milage", TextBox6.Text);
            cmd.Parameters.AddWithValue("@Fule", TextBox7.Text);
            cmd.Parameters.AddWithValue("@Drive_Type", TextBox8.Text);
            cmd.Parameters.AddWithValue("@City_Milage", TextBox9.Text);
            cmd.Parameters.AddWithValue("@Engine_Displacement", TextBox10.Text);
            cmd.Parameters.AddWithValue("@Max_Power", TextBox11.Text);
            cmd.Parameters.AddWithValue("@Ground_Clearance_Unladen", TextBox14.Text);
            //cmd.Parameters.AddWithValue("@Fuel_Tank_Capacity", TextBox13.Text);
            //cmd.Parameters.AddWithValue("@Fuel_Type", TextBox15.Text);
            cmd.Parameters.AddWithValue("@No_of_cylinder", TextBox16.Text);
            cmd.Parameters.AddWithValue("@Max_Torque", TextBox17.Text);
            cmd.Parameters.AddWithValue("@Transmission_Type", TextBox18.Text);
            cmd.Parameters.AddWithValue("@Fuel_Tank_Capacity", TextBox13.Text);
            cmd.Parameters.AddWithValue("@Fuel_Type", TextBox15.Text);
            cmd.Parameters.AddWithValue("@Body_Type", TextBox19.Text);
            cmd.Parameters.AddWithValue("@Colour", TextBox22.Text);
            cmd.Parameters.AddWithValue("@Good_Points", TextBox20.Text);
            cmd.Parameters.AddWithValue("@Bad_Points", TextBox21.Text);
            cmd.Parameters.AddWithValue("@CarPrice", TextBox24.Text);
            cmd.Parameters.AddWithValue("@id", id);
            //SqlCommand cmd = new SqlCommand("UPDATE Cars " + "SET Price = @Price Where id = @id", con);

            // Add parameters to the command object


            cmd.ExecuteNonQuery();

            con.Close();
            suc.Text = "SUCCESS";
            Response.Redirect("ShowCars.aspx");
            // Execute the update query

        }
        protected void GETdata(object sender, EventArgs e)
        {
            getCarData(Request.QueryString["CAR"]);

        }


        // Create a new SqlCommand object
        //SqlCommand cmd = new SqlCommand(query, con);
        //cmd.Parameters.AddWithValue("@Price", TextBox2.Text);
        //cmd.Parameters.AddWithValue("@Engine", TextBox3.Text);
        //cmd.Parameters.AddWithValue("@BHP", TextBox4.Text);
        //cmd.Parameters.AddWithValue("@Seating_Capacity", TextBox5.Text);
        //cmd.Parameters.AddWithValue("@Milage", TextBox6.Text);
        //cmd.Parameters.AddWithValue("@Fule", TextBox7.Text);
        //cmd.Parameters.AddWithValue("@Drive_Type", TextBox8.Text);
        //cmd.Parameters.AddWithValue("@City_Milage", TextBox9.Text);
        //cmd.Parameters.AddWithValue("@Engine_Displacement", TextBox10.Text);
        //cmd.Parameters.AddWithValue("@Max_Power", TextBox11.Text);
        //cmd.Parameters.AddWithValue("@Ground_Clearance_Unladen", TextBox14.Text);
        //cmd.Parameters.AddWithValue("@Fuel_Tank_Capacity", TextBox13.Text);
        //cmd.Parameters.AddWithValue("@Fuel_Type", TextBox15.Text);
        //cmd.Parameters.AddWithValue("@No_of_cylinder", TextBox16.Text);
        //cmd.Parameters.AddWithValue("@Max_Torque", TextBox17.Text);
        //cmd.Parameters.AddWithValue("@Transmission_Type", TextBox18.Text);
        //cmd.Parameters.AddWithValue("@Body_Type", TextBox19.Text);
        //cmd.Parameters.AddWithValue("@Colour", TextBox22.Text);
        //cmd.Parameters.AddWithValue("@Good_Points", TextBox20.Text);
        //cmd.Parameters.AddWithValue("@Bad_Points", TextBox21.Text);
        //cmd.Parameters.AddWithValue("@CarPrice", TextBox24.Text);
        //cmd.Parameters.AddWithValue("@id", id);





        //Response.Redirect("Admin.aspx");


    }
    
}