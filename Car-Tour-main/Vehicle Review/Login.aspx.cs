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
    public partial class Login : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        String NoOfVisitor;
        int visitor;
        String vis;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=vehiclereview;Integrated Security=True";
            con.Open();
            Session["log"] = null;
            Session["username"] = null;
        }
        protected void Button2_Clicked(object sender, EventArgs e)
        {
              
            Session["username"] = TextBox1.Text;
            Session["password"] = TextBox2.Text;
            cmd.CommandText = "select * from users where username='" + TextBox1.Text + "'and password='" + TextBox2.Text + "'";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "users");
            if (ds.Tables[0].Rows.Count > 0)
            {
                //Response.Write("Login Success");
                Session["log"] = "true";
                Session["username"] = TextBox1.Text;
                //Response.Redirect("CarTour.aspx");
                ////ReadData();
                //lbl.Text = "Success";
                if (Session["request"] != null)
                {
                    object sessionValue = Session["request"];
                    Response.Redirect("index.aspx?CAR=" + sessionValue);
                }
                else
                {
                    Count_Past_Visitors();
                    counter();
                    counter_month();
                    Response.Redirect("CarTour.aspx");
                }
            }
            else
            {
                lbl.Text = "Please Enter valid Username and Password";
            }
        }
        public void Count_Past_Visitors()
        {

            SqlCommand cmd = new SqlCommand("SELECT * FROM Visitor_Count Where id = 'ALL'", con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                NoOfVisitor = reader.GetString(1);
            }
            con.Close();
        }
        public void counter()
        {
            visitor = Int16.Parse(NoOfVisitor);
            visitor++;
            con.Open();
            SqlCommand cmd = new SqlCommand("Update Visitor_Count Set visitors=@visitors where id='ALL'", con);
            cmd.Parameters.AddWithValue("@visitors", visitor);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void counter_month()
        {

            int currentMonth = DateTime.Now.Month;
            String mon = currentMonth.ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Visitor_Count Where Month = @Month", con);
            cmd.Parameters.AddWithValue("@Month", mon);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                vis = reader.GetString(1);
            }
            reader.Close();
            con.Close();

            int vi = Int16.Parse(vis);
            vi++;
            con.Open();
            cmd = new SqlCommand("Update Visitor_Count Set visitors=@visitors where Month=@Month", con);
            cmd.Parameters.AddWithValue("@Month", mon);
            cmd.Parameters.AddWithValue("@visitors", vi.ToString());
            cmd.ExecuteNonQuery();
            con.Close();



        }
        //private void ReadData()
        //{
        //    Session["log"] = "true";
        //}
    }

}