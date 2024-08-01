using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Vehicle_Review
{
    public partial class CarCompany : System.Web.UI.Page
    {
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
                con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=vehiclereview;Integrated Security=True";
                con.Open();

                TableRow headerRow = new TableRow();
                TableCell headerCell0 = new TableCell();
                headerCell0.Text = "<font color='039BE5'>No.</font>";
                headerRow.Cells.Add(headerCell0);
                TableCell headerCell1 = new TableCell();
                headerCell1.Text = "<font color='039BE5'>Company</font>";
                headerRow.Cells.Add(headerCell1);
                TableCell headerCell2 = new TableCell();
                headerCell2.Text = "<font color='039BE5'>Logo</font>";
                headerRow.Cells.Add(headerCell2);
                TableCell headerCell3 = new TableCell();
                headerCell3.Text = "<font color='039BE5'>Action</font>";
                headerRow.Cells.Add(headerCell3);
                myTable.Rows.Add(headerRow);
                SqlCommand cmd = new SqlCommand("SELECT * FROM Company", con);
                SqlDataReader reader = cmd.ExecuteReader();
                int n = 0;
                while (reader.Read())
                {
                    n++;
                    String ns = n.ToString();
                    String company = reader.GetString(0);
                    byte[] bytes1;
                    bytes1 = (byte[])reader["Company_logo"];
                    string url = "data:image/jpg;base64," + Convert.ToBase64String(bytes1);
                    //Image1.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(bytes1);
                    TableRow dataRow1 = new TableRow();
                    TableCell dataCell0 = new TableCell();
                    dataCell0.Text = ns;
                    dataRow1.Cells.Add(dataCell0);
                    TableCell dataCell1 = new TableCell();
                    dataCell1.Text = company;
                    dataRow1.Cells.Add(dataCell1);
                    TableCell dataCell2 = new TableCell();
                    dataCell2.Text = "<img id='img' src='" + url + "' width='100' height='100'/>";
                    dataRow1.Cells.Add(dataCell2);
                    TableCell dataCell3 = new TableCell();
                    dataCell3.Text = "<a href='DeleteCompany.aspx?Com=" + reader.GetString(0) + "'><font color='red'>Delete</font></a>";
                    dataRow1.Cells.Add(dataCell3);
                    myTable.Rows.Add(dataRow1);
                }
                con.Close();


            }
        }
        protected void Register(object sender, EventArgs e)
        {
            string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            Stream fs = FileUpload1.PostedFile.InputStream;
            BinaryReader br = new BinaryReader(fs);
            byte[] imagecode = br.ReadBytes((Int32)fs.Length);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Company" + "(Company,Company_logo)values(@Company,@Company_logo)", con);
            cmd.Parameters.AddWithValue("@Company",TextBox1.Text);
            cmd.Parameters.AddWithValue("@Company_logo", imagecode);
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch(Exception)
            {
                Label1.Text= "Alrady Exist";
            }
            con.Close();
            Label1.Text = "Company Successfully Registerd";
             //remove();
        }

    }
}