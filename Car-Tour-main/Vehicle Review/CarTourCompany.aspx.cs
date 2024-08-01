using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using static System.Net.Mime.MediaTypeNames;

namespace Vehicle_Review
{
    public partial class CarTourCompany : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        int len;
        public String Cname;
       
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {

            var ses = Session["log"];
            if (ses != null)
            {
                object sessionValue = Session["log"];
                if (sessionValue == "true")
                {
                    con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=vehiclereview;Integrated Security=True";
                    con.Open();

                    id = Request.QueryString["id"];

                    //if (!string.IsNullOrEmpty(id))
                    //{
                    CarModels();
                }
            }
            else
            {
                Response.Redirect("https://localhost:44359/login.aspx");
            }
           
            //}
            //else
            //{
            //    Response.Redirect("CarTour.aspx");
                // handle the case where the id parameter is missing or empty
            //}
        }
           

        public string[] Img{ get; set; }

        public string[] CarNAME { get; set; }
        public string[] MILAGE { get; set; }
        public string[] PRICE { get; set; }
        public string[] ID { get; set; }




        public void CarModels()
        {
            try
            {
                countCars();
            }
            catch(Exception ex)
            {
                Response.Redirect("CarTour.aspx");
            }
            SqlCommand cmd = new SqlCommand("SELECT * FROM Cars Where Car_Company=@Car_Company", con);
            cmd.Parameters.AddWithValue("@Car_Company", id);
            SqlDataReader reader = cmd.ExecuteReader();
            byte[] bytes1;
            Img = new string[len];
            CarNAME = new string[len];
            MILAGE = new string[len];
            PRICE = new string[len];
            ID = new string[len];


            int n = 0;
            while (reader.Read())
            {
                String id = reader.GetString(0);
                String company = reader.GetString(2);
                String Carname = reader.GetString(3);
                String Price = reader.GetString(4);
                String Milage = reader.GetString(8);
                //Response.Write(id);
                ID.SetValue(id, n);
                PRICE.SetValue(Price, n);
                Cname = company+" "+Carname;
                CarNAME.SetValue(company + " " + Carname, n);
                MILAGE.SetValue(Milage, n);
                COMP.Text = reader.GetString(1);
                bytes1 = (byte[])reader["All_img1"];
                String url = "data:image/jpg;base64," + Convert.ToBase64String(bytes1);
                Img.SetValue(url, n);
                n++;
            }
            //Response.Write(id);

        }

        public void countCars()
        {
            string connectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=vehiclereview;Integrated Security=True";
            string query = "SELECT COUNT(*) FROM Cars where Car_Company=@Car_Company";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Car_Company", id);
                connection.Open();

                len = (int)command.ExecuteScalar();
                Console.WriteLine("Number of rows: " + len);
                connection.Close();
            }


        }
    }

}