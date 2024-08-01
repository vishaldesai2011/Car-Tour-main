using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Services.Description;
using System.Drawing;
using System.Xml.Linq;

namespace Vehicle_Review
{
    public partial class index : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        int view;
        string users;
        String first_name;
        String last_name;
        int num1 = 0;
        string cid;
        int len = 0;
        int lor = 0;
        float r = 0;
        float output;
        protected void Page_Load(object sender, EventArgs e)
        {

            

            //StringWriter stringWriter = new StringWriter();
            //Server.Execute("Layout.aspx", stringWriter);
            //string output = stringWriter.ToString();
            //Response.Write(output);
            var ses = Session["log"];
            if (ses != null)
            {
                object sessionValue = Session["log"];
                if (sessionValue == "true")
                {
                    try
                    {
                         
                        Car();
                        
                        //GetComment(Request.QueryString["CAR"]);
                        var user = Session["username"];
                        users = user.ToString();
                        Session["username"] = user;
                        Session["log"] = "true";
                        cid = Request.QueryString["CAR"];
                        Getlen(cid);
                        //countComment(cid);
                        //Response.Write(len);
                        
                        GetComment(Request.QueryString["CAR"]);
                        ReviewsCount();
                        GetReviews();
                        countTotalRating();
                        AverageReview();
                        con.Close(); 
                        //Response.Write(lor);


                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine(ex.Message);
                        Response.Redirect("CarTour.aspx");
                    }
                    //try
                    //{
                    //    CarCount();
                    //    UpdateCarCount();
                    //}
                    //catch {
                    //    System.Console.WriteLine("Error");
                    //}
                }
            }
            else
            {
                Response.Redirect("https://localhost:44359/login.aspx");
            }
            //con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=vehiclereview;Integrated Security=True";
            //con.Open();



        }

        protected void Button1_Clicked(object sender, EventArgs e)
        {
            Response.Write("Click");
        }
        public void Car()
        {
            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=vehiclereview;Integrated Security=True";
            con.Open();
            string id = Request.QueryString["CAR"];
            URl = Request.QueryString["CAR"];
            SqlCommand cmd = new SqlCommand("SELECT * FROM Cars where id=@id", con);
            cmd.Parameters.AddWithValue("@id",id);
            SqlDataReader reader = cmd.ExecuteReader();
            byte[] bytes1;
            byte[] bytes2;
            byte[] bytes3;
            byte[] bytes4;
            byte[] bytes5;
            while (reader.Read())
            {
                String Car = reader.GetString(2);
                String Varient = reader.GetString(3);
                Car1.Text = Car + Varient;
                KeySpec.Text = Car + Varient;
                spec.Text= Car + Varient;   
                Review_CarName.Text = Car + Varient;

                String c = reader.GetString(4);
                Price.Text = c + "<font color='#4169e1' size='2'>Get On Road Price</font>";

                String engine = reader.GetString(5);
                Engine.Text = engine;
                eng.Text = engine;
                String bhp = reader.GetString(6);
                BHP.Text = bhp;
                bhhp.Text = bhp;
                String setting = reader.GetString(7);
                Setting.Text = setting;
                set.Text = setting;
                String milage = reader.GetString(8);
                Milage.Text = milage;
                mil.Text = milage;
                String fule = reader.GetString(9);
                Fule.Text = fule;
                ful.Text = fule;
                String drive = reader.GetString(10);
                DriveType.Text = drive;
                String CityMilage  = reader.GetString(11);
                cm.Text = CityMilage;
                String Ed= reader.GetString(12);
                ed.Text = Ed;
                String MaxPower = reader.GetString(13);
                mp.Text = MaxPower; 
                sit.Text = setting;
                String fule_c = reader.GetString(14);
                ftc.Text = fule_c;
                type.Text = drive;
                String Ground_C = reader.GetString(15);
                GC.Text = Ground_C;
                String Ft = reader.GetString(16);
                Ftype.Text = Ft;
                String No_Cylinder = reader.GetString(17);
                NC.Text = No_Cylinder;
                String MAX_TORQ = reader.GetString(18);
                Max_T.Text = MAX_TORQ;
                String Transmision_T = reader.GetString(19);
                TT.Text = Transmision_T;
                String Body_T = reader.GetString(20);
                bt.Text = Body_T;
                String gp = reader.GetString(22);
                String bp = reader.GetString(23);
                CARPRICE.Text = reader.GetString(49);
                COMCAR.Text = Car + Varient;
                MyArray = gp.Split(',');
                MyArray1 = bp.Split(',');
                bytes1 = (byte[])reader["All_img1"];
                Image1.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(bytes1);
                bytes2 = (byte[])reader["All_img2"];
                Image2.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(bytes2);
                bytes3 = (byte[])reader["All_img3"];
                Image3.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(bytes3);
                bytes4 = (byte[])reader["All_img4"];
                Image4.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(bytes4);
                bytes5 = (byte[])reader["All_img5"];
                Image5.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(bytes5);
                //Response.Write(a + b + c);


            }
            reader.Close();
            con.Close();
            try
            {
                CarCount();
                UpdateCarCount();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message+"Error in 156 & 157 function call");
            }

        }
        public void CarCount()
        {
            string id = Request.QueryString["CAR"];
            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=vehiclereview;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Car_View_Count where id=@id", con);
            cmd.Parameters.AddWithValue("@id", id);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                view = reader.GetInt32(0);
            }
            reader.Close();
            con.Close();



        }
        public void UpdateCarCount()
        {
            view++;
            string id = Request.QueryString["CAR"];
            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=vehiclereview;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand("UPDATE Car_View_Count SET count = @count where id = @id", con);
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@count", view);
            cmd.ExecuteNonQuery();
            con.Close();



        }
        public void COMMENT(object sender, EventArgs e)
        {
            fetch_name();
            DateTime currentDateTime = DateTime.Now;
            string time = currentDateTime.ToString("yyyy-MM-dd HH:mm:ss");
            string id = Request.QueryString["CAR"];
            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=vehiclereview;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Comments(user_id,first_name,last_name,comment,time,carid)values(@userid,@first_name,@last_name,@comment,@time,@carid)", con);

            cmd.Parameters.AddWithValue("@userid",users);
            cmd.Parameters.AddWithValue("@first_name",first_name);
            cmd.Parameters.AddWithValue("@last_name", last_name);
            cmd.Parameters.AddWithValue("@comment", COMM.Text);
            cmd.Parameters.AddWithValue("@time",time);
            cmd.Parameters.AddWithValue("@carid", id);
            try
            {
                cmd.ExecuteNonQuery();
                con.Close();
                string c = Request.QueryString["CAR"];
                Response.Redirect("index.aspx?CAR=" + c + "");
                //Response.Write("Success Fully Stored");
            }
            catch (Exception ex)
            {
                Response.Write("Car Already Exist" + ex);
            }

        }
        public string[] MyArray { get; set; }
        public string[] MyArray1 { get; set; }

        public string URl { get; set; }

        public void fetch_name()
        {


            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=vehiclereview;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM users where username=@username", con);
            cmd.Parameters.AddWithValue("@username",users);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                first_name = reader.GetString(3);
                last_name = reader.GetString(4);
            }
            reader.Close();
            con.Close();

        }
        public void Getlen(String carid1)
        {
            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=vehiclereview;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Comments where carid=@carid", con);
            cmd.Parameters.AddWithValue("@carid", carid1);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                len++;
            }
            reader.Close();
            con.Close();
        }

        public void GetComment(String carid)
        {
            fname = new string[len];
            //lname = new string[num];
            time1 = new string[len];
            commnet = new string[len];

            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=vehiclereview;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Comments where carid=@carid",con);
            cmd.Parameters.AddWithValue("@carid", carid);
            SqlDataReader reader = cmd.ExecuteReader();
            int n = 0;
            while (reader.Read())
            {
                
                string full = reader.GetString(1) + " " + reader.GetString(2);
                fname.SetValue(full,n);
                time1.SetValue(reader.GetString(4),n);
                commnet.SetValue(reader.GetString(3),n);
                n++;
            }
            reader.Close();
            con.Close();
        }

        public void countComment(String cid1)
        {
            string connectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=vehiclereview;Integrated Security=True";
            string query = "SELECT * FROM Comments where carid = "+cid1+"";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                connection.Open();

                len = (int)command.ExecuteScalar();
                Console.WriteLine("Number of rows: " + len);

                connection.Close();
            }


        }
        public void ReviewsCount()
        {
            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=vehiclereview;Integrated Security=True";
            con.Open();
            String c = Request.QueryString["CAR"];
            SqlCommand cmd = new SqlCommand("SELECT * FROM Reviews where id=@id", con);
            cmd.Parameters.AddWithValue("@id", c);
            SqlDataReader reader = cmd.ExecuteReader();
            
            while (reader.Read())
            {
                lor++;
            }
            NOF_REVIEW.Text = lor.ToString();
            reader.Close();
            con.Close();


        }
        public void GetReviews()
        {
            review = new string[lor];
            title1 = new string[lor];
            time2 = new string[lor];
            fname1 = new string[lor];
            lname1 = new string[lor];
            rating1 = new string[lor];

            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=vehiclereview;Integrated Security=True";
            con.Open();
            String c = Request.QueryString["CAR"];
            SqlCommand cmd = new SqlCommand("SELECT * FROM Reviews where id=@id", con);
            cmd.Parameters.AddWithValue("@id", c);
            SqlDataReader reader = cmd.ExecuteReader();
            int n = 0;
            while (reader.Read())
            {
                title1.SetValue(reader.GetString(2), n);
                review.SetValue(reader.GetString(3), n);
                rating1.SetValue(reader.GetString(4), n);
                time2.SetValue(reader.GetString(5), n);
                fname1.SetValue(reader.GetString(6), n);
                lname1.SetValue(reader.GetString(7), n);
                n++;
            }
            reader.Close();
            con.Close();

        }
        public void countTotalRating()
        {
            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=vehiclereview;Integrated Security=True";
            con.Open();
            String c = Request.QueryString["CAR"];
            SqlCommand cmd = new SqlCommand("SELECT * FROM Reviews where id=@id", con);
            cmd.Parameters.AddWithValue("@id", c);
            SqlDataReader reader = cmd.ExecuteReader();
          
            while (reader.Read())
            {
                String ratt = reader.GetString(4);
                float rat = (float)Convert.ToDouble(ratt);
                r += rat;
            }
            
        }
        public void AverageReview()
        {
            try
            {
                if (lor == 0)
                {
                    Averages = "0.0";
                }
                else
                {
                    output = r / lor;
                    Averages = output.ToString("F1");
                }
            }catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                Response.Redirect("CarTour.aspx");


            }

        }

        public string[] fname { get; set; }
        public string[] lname { get; set; }
        public string[] time1 { get; set; }
        public string[] commnet { get; set; }
        public string[] review { get; set; }
        public string[] time2 { get; set; }
        public string[] fname1 { get; set; }
        public string[] lname1 { get; set; }
        public string[] rating1 { get; set;}
        public string[] title1 { get; set; }
        public string Averages { get; set; }







    }
}   