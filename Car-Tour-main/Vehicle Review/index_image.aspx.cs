using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Runtime.Remoting.Messaging;

namespace Vehicle_Review
{
    public partial class index_image : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=vehiclereview;Integrated Security=True";
            con.Open();
            string id = Request.QueryString["image"];
            URLL = id;
            if (id == null)
            {

                Response.Redirect("CarTour.aspx");
            }
            else
            {
                try
                {
                 getImage(id);   
                }
                catch(Exception ex)
                {
                    Response.Redirect("CarTour.aspx");
                }
            }

        }
        public void getImage(String id)
        {
            byte[] bytes1;
            byte[] bytes2;
            byte[] bytes3;
            byte[] bytes4;
            byte[] bytes5;
            byte[] bytes6;
            byte[] bytes7;
            byte[] bytes8;
            byte[] bytes9;
            byte[] bytes10;
            byte[] bytes11;
            byte[] bytes12;
            byte[] bytes13;
            byte[] bytes14;
            byte[] bytes15;
            byte[] bytes16;
            byte[] bytes17;
            byte[] bytes18;
            byte[] bytes19;
            byte[] bytes20;
            SqlCommand cmd = new SqlCommand("SELECT * FROM Cars where id=@id", con);
            cmd.Parameters.AddWithValue("@id", id);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                bytes1 = (byte[])reader["Exterior_Img1"];
                Image1.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(bytes1);

                bytes2 = (byte[])reader["Exterior_Img2"];
                Image2.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(bytes2);

                bytes3= (byte[])reader["Exterior_Img3"];
                Image3.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(bytes3);

                bytes4 = (byte[])reader["Exterior_Img4"];
                Image4.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(bytes4);

                bytes5 = (byte[])reader["Exterior_Img5"];
                Image5.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(bytes5);

                bytes6 = (byte[])reader["Exterior_Img6"];
                Image6.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(bytes6);

                bytes7 = (byte[])reader["Exterior_Img7"];
                Image7.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(bytes7);

                bytes8 = (byte[])reader["Exterior_Img8"];
                Image8.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(bytes8);

                bytes9 = (byte[])reader["Exterior_Img9"];
                Image9.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(bytes9);

                bytes10 = (byte[])reader["Exterior_Img10"];
                Image10.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(bytes10);


                //Exterior Image

                bytes11 = (byte[])reader["Interior_img1"];
                Image11.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(bytes11);

                bytes12 = (byte[])reader["Interior_img2"];
                Image12.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(bytes12);

                bytes13 = (byte[])reader["Interior_img3"];
                Image13.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(bytes13);

                bytes14 = (byte[])reader["Interior_img4"];
                Image14.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(bytes14);

                bytes15 = (byte[])reader["Interior_img5"];
                Image15.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(bytes15);

                bytes16 = (byte[])reader["Interior_img6"];
                Image16.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(bytes16);

                bytes17 = (byte[])reader["Interior_img7"];
                Image17.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(bytes17);

                bytes18 = (byte[])reader["Interior_img8"];
                Image18.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(bytes18);

                bytes19 = (byte[])reader["Interior_img9"];
                Image19.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(bytes19);

                bytes20 = (byte[])reader["Interior_img10"];
                Image20.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(bytes20);
            }
            reader.Close();
            con.Close();
        }
        public string URLL { get; set; }

    }
}