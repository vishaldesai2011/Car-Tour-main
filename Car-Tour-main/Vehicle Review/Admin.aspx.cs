using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel.DataAnnotations.Schema;
using System.IO;
using System.Drawing;

namespace Vehicle_Review
{

    public partial class Admin : System.Web.UI.Page
    {
        public String s;
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
       

        protected void Page_Load(object sender, EventArgs e)
        {
            var ses = Session["log1"];
            if (ses == null)
            {
                Response.Redirect("Admin_Login.aspx");
            }
            else
            {
                //Db_Connectoion
                con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=vehiclereview;Integrated Security=True";
                con.Open();

                int size = 5;
                //MyArray = new string[] { "Value 1", "Value 2", "Value 3" };
                MyArray = new string[size];
                s = "Hello";
                MyArray.SetValue(s, 0);
                MyArray.SetValue(s, 1);

                result = new string[100];
                SqlCommand cmd = new SqlCommand("SELECT * FROM Company", con);
                SqlDataReader reader = cmd.ExecuteReader();
                int i = 0;
                //while (reader.Read())
                //{

                while (reader.Read())
                {
                    //result[i] = reader.GetString(0); // Replace 0 with the index of the column you want to retrieve
                    string a = reader.GetString(0);
                    result.SetValue(reader.GetString(0), i);
                    DropDownList1.Items.Add(new ListItem(a, a));
                    i++;
                }
                //}
                reader.Close();
                con.Close();


            }

        }
        public string[] MyArray { get; set; }
        public string[] result { get; set; }


        protected void AddCar(object sender, EventArgs e)
        {
                      //Response.Write(imgdata);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Cars" + "(id,Car_Company,Car_Name,Car_Variant,Price,Engine,BHP,Seating_Capacity,Milage,Fule,Drive_Type,City_Milage,Engine_Displacement,Max_Power,Fuel_Tank_Capacity,Ground_Clearance_Unladen,Fuel_Type,No_of_cylinder,Max_Torque,Transmission_Type,Body_Type,Colour,Good_Points,Bad_Points,CarPrice)values(@id,@Car_Company,@Car_Name,@Car_Variant,@Price,@Engine,@BHP,@Seating_Capacity,@Milage,@Fule,@Drive_Type,@City_Milage,@Engine_Displacement,@Max_Power,@Fuel_Tank_Capacity,@Ground_Clearance_Unladen,@Fuel_Type,@No_of_cylinder,@Max_Torque,@Transmission_Type,@Body_Type,@Colour,@Good_Points,@Bad_Points,@CarPrice)", con);
            //SqlCommand cmd = new SqlCommand("insert into Car" + "(Car_Company,Car_Name,Car_Variant,Price,Engine,BHP,Seating_Capacity,Milage,Fule,Drive_Type,City_Milage,Engine_Displacement,Max_Power,Fuel_Tank_Capacity,Ground_Clearance_Unladen,Fuel_Type,No_of_cylinder,Max_Torque,Transmission_Type,Body_Type,Colour,Good_Points,Bad_Points,All_img1,All_img2,All_img3,All_img4,All_img5,Interior_img1,Interior_img2,Interior_img3,Interior_img4,Interior_img5,Interior_img6,Interior_img7,Interior_img8,Interior_img9,Interior_img10,Exterior_Img1,Exterior_Img2,Exterior_Img3,Exterior_Img4,Exterior_Img5,Exterior_Img6,Exterior_Img7,Exterior_Img8,Exterior_Img9,Exterior_Img10)values(@Car_Company,@Car_Name,@Car_Variant,@Price,@Engine,@BHP,@Seating_Capacity,@Milage,@Fule,@Drive_Type,@City_Milage,@Engine_Displacement,@Max_Power,@Fuel_Tank_Capacity,@Ground_Clearance_Unladen,@Fuel_Type,@No_of_cylinder,@Max_Torque,@Transmission_Type,@Body_Type,@Colour,@Good_Points,@Bad_Points,@All_img1,@All_img2,@All_img3,@All_img4,@All_img5,@Interior_img1,@Interior_img2,@Interior_img3,@Interior_img4,@Interior_img5,@Interior_img6,@Interior_img7,@Interior_img8,@Interior_img9,@Interior_img10,@Exterior_Img1,@Exterior_Img2,@Exterior_Img3,@Exterior_Img4,@Exterior_Img5,@Exterior_Img6,@Exterior_Img7,@Exterior_Img8,@Exterior_Img9,@Exterior_Img10)", con);
            cmd.Parameters.AddWithValue("@id",TextBox1.Text+""+TextBox23.Text);
            cmd.Parameters.AddWithValue("@Car_Company", DropDownList1.Text);
            cmd.Parameters.AddWithValue("@Car_Name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Car_Variant", TextBox23.Text);
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
            cmd.Parameters.AddWithValue("@Fuel_Tank_Capacity", TextBox13.Text);
            cmd.Parameters.AddWithValue("@Ground_Clearance_Unladen", TextBox14.Text);
            cmd.Parameters.AddWithValue("@Fuel_Type", TextBox15.Text);
            cmd.Parameters.AddWithValue("@No_of_cylinder", TextBox16.Text);
            cmd.Parameters.AddWithValue("@Max_Torque", TextBox17.Text);
            cmd.Parameters.AddWithValue("@Transmission_Type", TextBox18.Text);
            cmd.Parameters.AddWithValue("@Body_Type", TextBox19.Text);
            cmd.Parameters.AddWithValue("@Colour", TextBox22.Text);
            cmd.Parameters.AddWithValue("@Good_Points", TextBox20.Text);
            cmd.Parameters.AddWithValue("@Bad_Points", TextBox21.Text);
            cmd.Parameters.AddWithValue("@CarPrice", TextBox24.Text);

            //cmd.Parameters.AddWithValue("@All_img1", imagecode);
            //cmd.Parameters.AddWithValue("@All_img2", imagecode);
            //cmd.Parameters.AddWithValue("@All_img3", imagecode);
            //cmd.Parameters.AddWithValue("@All_img4", imagecode);
            //cmd.Parameters.AddWithValue("@All_img5", imagecode);
            //cmd.Parameters.AddWithValue("@Interior_img1", imagecode);
            //cmd.Parameters.AddWithValue("@Interior_img2", imagecode);
            //cmd.Parameters.AddWithValue("@Interior_img3", imagecode);
            //cmd.Parameters.AddWithValue("@Interior_img4", imagecode);
            //cmd.Parameters.AddWithValue("@Interior_img5", imagecode);
            //cmd.Parameters.AddWithValue("@Interior_img6", imagecode);
            //cmd.Parameters.AddWithValue("@Interior_img7", imagecode);
            //cmd.Parameters.AddWithValue("@Interior_img8", imagecode);
            //cmd.Parameters.AddWithValue("@Interior_img9", imagecode);
            //cmd.Parameters.AddWithValue("@Interior_img10", imagecode);
            //cmd.Parameters.AddWithValue("@Exterior_Img1", imagecode);
            //cmd.Parameters.AddWithValue("@Exterior_Img2", imagecode);
            //cmd.Parameters.AddWithValue("@Exterior_Img3", imagecode);
            //cmd.Parameters.AddWithValue("@Exterior_Img4", imagecode);
            //cmd.Parameters.AddWithValue("@Exterior_Img5", imagecode);
            //cmd.Parameters.AddWithValue("@Exterior_Img6", imagecode);
            //cmd.Parameters.AddWithValue("@Exterior_Img7", imagecode);
            //cmd.Parameters.AddWithValue("@Exterior_Img8", imagecode);
            //cmd.Parameters.AddWithValue("@Exterior_Img9", imagecode);
            //cmd.Parameters.AddWithValue("@Exterior_Img10", imagecode);
            try
            {
                cmd.ExecuteNonQuery();
                con.Close();
                //Response.Write("Success Fully Stored");
                AddImage();
            }catch (Exception ex)
            {
                Response.Write("Car Already Exist"+ex);
            }

        }
        protected void ViewImage(object sender, EventArgs e)
        {
            byte[] bytes;
            string filename;
            Response.Write("BTN WORKING.....");
            string query = "select * from check_car where id = 2";
            SqlCommand cmd = new SqlCommand(query);
            cmd.Connection= con;
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            sdr.Read();
            bytes = (byte[])sdr["img"];
            filename = sdr["id"].ToString();
            Image1.ImageUrl = "data:image/jpg;base64,"+Convert.ToBase64String(bytes);


        }
        public void AddImage()
        {


            string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            Stream fs = FileUpload1.PostedFile.InputStream;
            BinaryReader br = new BinaryReader(fs);
            byte[] imagecode = br.ReadBytes((Int32)fs.Length);


            //All Image 2
            string filename1 = Path.GetFileName(FileUpload2.PostedFile.FileName);
            Stream fs1 = FileUpload2.PostedFile.InputStream;
            BinaryReader br1 = new BinaryReader(fs1);
            byte[] imagecode1 = br1.ReadBytes((Int32)fs1.Length);

            //All Image 3
            string filename2 = Path.GetFileName(FileUpload3.PostedFile.FileName);
            Stream fs2 = FileUpload3.PostedFile.InputStream;
            BinaryReader br2 = new BinaryReader(fs2);
            byte[] imagecode2 = br2.ReadBytes((Int32)fs2.Length);

            //All Image 4
            string filename3 = Path.GetFileName(FileUpload4.PostedFile.FileName);
            Stream fs3 = FileUpload4.PostedFile.InputStream;
            BinaryReader br3 = new BinaryReader(fs3);
            byte[] imagecode3 = br3.ReadBytes((Int32)fs3.Length);

            //All Image 5
            string filename4 = Path.GetFileName(FileUpload5.PostedFile.FileName);
            Stream fs4 = FileUpload5.PostedFile.InputStream;
            BinaryReader br4 = new BinaryReader(fs4);
            byte[] imagecode4 = br4.ReadBytes((Int32)fs4.Length);

             //Interior Image 1 to 5

            string inte1 = Path.GetFileName(FileUpload6.PostedFile.FileName);
            Stream fs5 = FileUpload6.PostedFile.InputStream;
            BinaryReader br5 = new BinaryReader(fs5);
            byte[] imagecode5 = br5.ReadBytes((Int32)fs5.Length);

            string inte2 = Path.GetFileName(FileUpload7.PostedFile.FileName);
            Stream fs6 = FileUpload7.PostedFile.InputStream;
            BinaryReader br6 = new BinaryReader(fs6);
            byte[] imagecode6 = br6.ReadBytes((Int32)fs6.Length);

            string inte3 = Path.GetFileName(FileUpload8.PostedFile.FileName);
            Stream fs7 = FileUpload8.PostedFile.InputStream;
            BinaryReader br7 = new BinaryReader(fs7);
            byte[] imagecode7 = br7.ReadBytes((Int32)fs7.Length);

            string inte4 = Path.GetFileName(FileUpload9.PostedFile.FileName);
            Stream fs8 = FileUpload9.PostedFile.InputStream;
            BinaryReader br8 = new BinaryReader(fs8);
            byte[] imagecode8 = br8.ReadBytes((Int32)fs8.Length);

            string inte5 = Path.GetFileName(FileUpload10.PostedFile.FileName);
            Stream fs9 = FileUpload10.PostedFile.InputStream;
            BinaryReader br9 = new BinaryReader(fs9);
            byte[] imagecode9 = br9.ReadBytes((Int32)fs9.Length);

            //Interior image 6 to 10

            string inte6 = Path.GetFileName(FileUpload11.PostedFile.FileName);
            Stream fs10 = FileUpload11.PostedFile.InputStream;
            BinaryReader br10 = new BinaryReader(fs10);
            byte[] imagecode10 = br10.ReadBytes((Int32)fs10.Length);

            string inte7 = Path.GetFileName(FileUpload12.PostedFile.FileName);
            Stream fs11 = FileUpload12.PostedFile.InputStream;
            BinaryReader br11 = new BinaryReader(fs11);
            byte[] imagecode11 = br11.ReadBytes((Int32)fs11.Length);

            string inte8 = Path.GetFileName(FileUpload13.PostedFile.FileName);
            Stream fs12 = FileUpload13.PostedFile.InputStream;
            BinaryReader br12 = new BinaryReader(fs12);
            byte[] imagecode12 = br12.ReadBytes((Int32)fs12.Length);

            string inte9 = Path.GetFileName(FileUpload14.PostedFile.FileName);
            Stream fs13 = FileUpload14.PostedFile.InputStream;
            BinaryReader br13 = new BinaryReader(fs13);
            byte[] imagecode13 = br13.ReadBytes((Int32)fs13.Length);

            string inte10 = Path.GetFileName(FileUpload15.PostedFile.FileName);
            Stream fs14 = FileUpload15.PostedFile.InputStream;
            BinaryReader br14 = new BinaryReader(fs14);
            byte[] imagecode14 = br14.ReadBytes((Int32)fs14.Length);

            //Extarior Image 1 to 5

            string exte1 = Path.GetFileName(FileUpload16.PostedFile.FileName);
            Stream fs15 = FileUpload16.PostedFile.InputStream;
            BinaryReader br15 = new BinaryReader(fs15);
            byte[] imagecode15 = br15.ReadBytes((Int32)fs15.Length);

            string exte2 = Path.GetFileName(FileUpload17.PostedFile.FileName);
            Stream fs16 = FileUpload17.PostedFile.InputStream;
            BinaryReader br16 = new BinaryReader(fs16);
            byte[] imagecode16 = br16.ReadBytes((Int32)fs16.Length);

            string exte3 = Path.GetFileName(FileUpload18.PostedFile.FileName);
            Stream fs17 = FileUpload18.PostedFile.InputStream;
            BinaryReader br17 = new BinaryReader(fs17);
            byte[] imagecode17 = br17.ReadBytes((Int32)fs17.Length);

            string exte4 = Path.GetFileName(FileUpload19.PostedFile.FileName);
            Stream fs18 = FileUpload19.PostedFile.InputStream;
            BinaryReader br18 = new BinaryReader(fs18);
            byte[] imagecode18 = br18.ReadBytes((Int32)fs18.Length);

            string exte5 = Path.GetFileName(FileUpload20.PostedFile.FileName);
            Stream fs19 = FileUpload20.PostedFile.InputStream;
            BinaryReader br19 = new BinaryReader(fs19);
            byte[] imagecode19 = br19.ReadBytes((Int32)fs19.Length);

            //exterior image 6 to 10

            string exte6 = Path.GetFileName(FileUpload21.PostedFile.FileName);
            Stream fs20 = FileUpload21.PostedFile.InputStream;
            BinaryReader br20 = new BinaryReader(fs20);
            byte[] imagecode20 = br20.ReadBytes((Int32)fs20.Length);

            string exte7 = Path.GetFileName(FileUpload22.PostedFile.FileName);
            Stream fs21 = FileUpload22.PostedFile.InputStream;
            BinaryReader br21 = new BinaryReader(fs21);
            byte[] imagecode21 = br21.ReadBytes((Int32)fs21.Length);

            string exte8 = Path.GetFileName(FileUpload23.PostedFile.FileName);
            Stream fs22 = FileUpload23.PostedFile.InputStream;
            BinaryReader br22 = new BinaryReader(fs22);
            byte[] imagecode22 = br22.ReadBytes((Int32)fs22.Length);

            string exte9 = Path.GetFileName(FileUpload24.PostedFile.FileName);
            Stream fs23 = FileUpload24.PostedFile.InputStream;
            BinaryReader br23 = new BinaryReader(fs23);
            byte[] imagecode23 = br23.ReadBytes((Int32)fs23.Length);

            string exte10 = Path.GetFileName(FileUpload25.PostedFile.FileName);
            Stream fs24 = FileUpload25.PostedFile.InputStream;
            BinaryReader br24 = new BinaryReader(fs24);
            byte[] imagecode24 = br24.ReadBytes((Int32)fs24.Length);







            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=vehiclereview;Integrated Security=True";
            con.Open();
            //SqlCommand cmd = new SqlCommand("UPDATE Cars "+ "SET All_img1 = @All_image1,All_img2 = @All_image2,All_img3 = @All_image3,All_img4 = @All_image4,All_img5 = @All_image5,Interior_img1 = @Interior_img1,Interior_img2 = @Interior_img2,Interior_img3 = @Interior_img3,Interior_img4 = @Interior_img4,Interior_img5 = @Interior_img5,Interior_img6 = @Interior_img6,Interior_img7 = @Interior_img7,Interior_img8 = @Interior_img8,Interior_img9 = @Interior_img9,Interior_img10 = @Interior_img10,Exterior_Img1 = @Exterior_Img1,Exterior_Img2 = @Exterior_Img2,Exterior_Img3 = @Exterior_Img3,Exterior_Img4 = @Exterior_Img4,Exterior_Img5 = @Exterior_Img5,Exterior_Img6 = @Exterior_Img6,Exterior_Img7 = @Exterior_Img7,Exterior_Img8 = @Exterior_Img8,Exterior_Img9 = @Exterior_Img9,Exterior_Img10 = @Exterior_Img10 WHERE Car_Name = @Car_Name", con);
            SqlCommand cmd = new SqlCommand("UPDATE Cars "+ "SET All_img1 = @All_image1,All_img2 = @All_image2,All_img3 = @All_image3,All_img4 = @All_image4,All_img5 = @All_image5,Interior_img1 = @Interior_img1,Interior_img2 = @Interior_img2,Interior_img3 = @Interior_img3,Interior_img4 = @Interior_img4,Interior_img5 = @Interior_img5,Interior_img6 = @Interior_img6,Interior_img7 = @Interior_img7,Interior_img8 = @Interior_img8,Interior_img9 = @Interior_img9,Interior_img10 = @Interior_img10,Exterior_Img1 = @Exterior_Img1,Exterior_Img2 = @Exterior_Img2,Exterior_Img3 = @Exterior_Img3,Exterior_Img4 = @Exterior_Img4,Exterior_Img5 = @Exterior_Img5,Exterior_Img6 = @Exterior_Img6,Exterior_Img7 = @Exterior_Img7,Exterior_Img8 = @Exterior_Img8,Exterior_Img9 = @Exterior_Img9,Exterior_Img10 = @Exterior_Img10 WHERE id = @id", con);

            cmd.Parameters.AddWithValue("@All_image1",imagecode);
            cmd.Parameters.AddWithValue("@All_image2", imagecode1);
            cmd.Parameters.AddWithValue("@All_image3", imagecode2);
            cmd.Parameters.AddWithValue("@All_image4", imagecode3);
            cmd.Parameters.AddWithValue("@All_image5", imagecode4);
            cmd.Parameters.AddWithValue("@Interior_img1", imagecode5);
            cmd.Parameters.AddWithValue("@Interior_img2", imagecode6);
            cmd.Parameters.AddWithValue("@Interior_img3", imagecode7);
            cmd.Parameters.AddWithValue("@Interior_img4", imagecode8);
            cmd.Parameters.AddWithValue("@Interior_img5", imagecode9);
            cmd.Parameters.AddWithValue("@Interior_img6", imagecode10);
            cmd.Parameters.AddWithValue("@Interior_img7", imagecode11);
            cmd.Parameters.AddWithValue("@Interior_img8", imagecode12);
            cmd.Parameters.AddWithValue("@Interior_img9", imagecode13);
            cmd.Parameters.AddWithValue("@Interior_img10", imagecode14);
            cmd.Parameters.AddWithValue("@Exterior_Img1", imagecode15);
            cmd.Parameters.AddWithValue("@Exterior_Img2", imagecode16);
            cmd.Parameters.AddWithValue("@Exterior_Img3", imagecode17);
            cmd.Parameters.AddWithValue("@Exterior_Img4", imagecode18);
            cmd.Parameters.AddWithValue("@Exterior_Img5", imagecode19);
            cmd.Parameters.AddWithValue("@Exterior_Img6", imagecode20);
            cmd.Parameters.AddWithValue("@Exterior_Img7", imagecode21);
            cmd.Parameters.AddWithValue("@Exterior_Img8", imagecode22);
            cmd.Parameters.AddWithValue("@Exterior_Img9", imagecode23);
            cmd.Parameters.AddWithValue("@Exterior_Img10", imagecode24);
            //cmd.Parameters.AddWithValue("@Car_Name",TextBox1.Text);
            cmd.Parameters.AddWithValue("@id", TextBox1.Text + "" + TextBox23.Text);

            cmd.ExecuteNonQuery();
            con.Close();
            MSG.Text = "Success";
            InsertCarCount();   
        }
        public void InsertCarCount()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Car_View_Count(id)values(@id)", con);
            cmd.Parameters.AddWithValue("@id",TextBox1.Text + "" + TextBox23.Text);
            cmd.ExecuteNonQuery();
            con.Close();

        }




    }
   

}