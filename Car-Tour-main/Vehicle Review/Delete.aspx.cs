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
    public partial class Delete : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=vehiclereview;Integrated Security=True";
            con.Open();

          

            string id = Request.QueryString["CAR"];

            if (!string.IsNullOrEmpty(id))
            {
                // use the id value
                Response.Write(id);
                SqlCommand cmd = new SqlCommand("Delete from Cars where id = @id",con);
                cmd.Parameters.AddWithValue("@id", id);
                //SqlDataReader reader = cmd.ExecuteReader();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("ShowCars.aspx");
            }
            else
            {
                Response.Redirect("ShowCars.aspx");
                // handle the case where the id parameter is missing or empty
            }

        }
    }
}