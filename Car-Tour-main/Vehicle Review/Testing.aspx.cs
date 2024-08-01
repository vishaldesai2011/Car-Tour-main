using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vehicle_Review
{
    public partial class Testing : System.Web.UI.Page
    {
        public String s;
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=vehiclereview;Integrated Security=True";
            con.Open();
        }
        protected void Button12(object sender, EventArgs e)
        {

            //SqlCommand cmd = new SqlCommand("SELECT * FROM Cars Where Car_Name = @Car_Name",con);
            //cmd.Parameters.AddWithValue("@Car_Name",TextBox1.Text);
            //SqlDataReader reader = cmd.ExecuteReader();
            //while (reader.Read())
            //{
            //    // Access data using reader["COLUMN_NAME"] or reader.GetXXX() methods
            //     //= reader.GetInt32(0);
            //    string Coname = reader.GetString(1);
            //    String CarName = reader.GetString(2);
            //    Label1.Text = Coname+","+CarName;
            //    // ...
            //}
            //reader.Close();
            //con.Close();

            //Label1.Text = 


        }

    }
}