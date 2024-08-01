using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Web.Script.Serialization;
using System.IO;
using System.Threading;
using System.Reflection;

namespace Vehicle_Review
{
    public partial class CarTour : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        string b;
        int len;
       



        protected void Page_Load(object sender, EventArgs e)
        {
            //lblusername.Text = Session["username"].ToString();
            if (Session["username"] != null)
            {
                lblusername.Text = Session["username"].ToString();
            }
            else
            {
                lblusername.Text = "Login";
            }
            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=vehiclereview;Integrated Security=True";
            con.Open();
            MyArray = new string[200];

            SqlCommand cmd = new SqlCommand("SELECT * FROM Cars", con);
            SqlDataReader reader = cmd.ExecuteReader();
            int i = 0;
            //string filePath = "C:\\Users\\DHRUV\\source\\repos\\Project\\Vehicle Review\\Vehicle Review\\CSS\\cars.txt";
            //string textToWrite = "Hello, world!";
            //using (StreamWriter writer = new StreamWriter(filePath))
            //{
            // Write the text to the file
            try
            {
                while (reader.Read())
                {
                    string a = reader.GetString(0);
                    b += a + ",";
                    //writer.WriteLine(b);

                    MyArray.SetValue(a, i);
                    i++;
                }
                Label1.Text = b;
                con.Close();
                CompanyShow();
               

            }
            catch(Exception ex)
            {
                Response.Redirect("login.aspx");
            }


        }
        public string[] MyArray { get; set; }
        public string[] MyCompany { get; set; }
        public string[] MyCompanyLogo { get; set; }

        protected void Search1(object sender, EventArgs e)
        {
       
            try
            {
                Response.Redirect("index.aspx?CAR="+myInput.Text);

                //Response.Write("i am working 1");

               
            }
            catch
            {

                Response.Redirect("CarTourCompany.aspx?id="+myInput.Text);

            }
        }

      
        public void CompanyShow()
        {
            con.Open();
            //con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=vehiclereview;Integrated Security=True";
            //con.Open();
            countCompany();
            MyCompany = new string[len];
            MyCompanyLogo = new string[len];
            SqlCommand cmd = new SqlCommand("SELECT * FROM Company", con);
            SqlDataReader reader = cmd.ExecuteReader();
            int i = 0;
            byte[] bytes1;
            while (reader.Read())
            {
                String Com_name = reader.GetString(0);
                //MyCompany.SetValue(Com_name, i);
                
                bytes1 = (byte[])reader["Company_logo"];
                string url = "data:image/jpg;base64," + Convert.ToBase64String(bytes1);
                MyCompany.SetValue(Com_name, i);
                MyCompanyLogo.SetValue(url, i);
                i++;
            }
            con.Close();
        }

        public void countCompany()
        {
            string connectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=vehiclereview;Integrated Security=True";
            string query = "SELECT COUNT(*) FROM Company";
            using (SqlConnection connection = new SqlConnection(connectionString)) 
            {
                SqlCommand command = new SqlCommand(query, connection);
                connection.Open();

                len = (int)command.ExecuteScalar();
                Console.WriteLine("Number of rows: " + len);

                connection.Close();
            }


        }
       


    }
}