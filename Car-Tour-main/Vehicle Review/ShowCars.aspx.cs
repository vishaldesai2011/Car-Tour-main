using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

namespace Vehicle_Review
{
    public partial class ShowCars : System.Web.UI.Page
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
                try
                {
                    showCars();
                }
                catch (Exception ex)
                {
                    Response.Redirect("Admin.aspx");
                }
            }
        }
        public void showCars()
        {

            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=vehiclereview;Integrated Security=True";
            con.Open();

            SqlCommand cmd = new SqlCommand("SELECT * FROM Cars", con);
            SqlDataReader reader = cmd.ExecuteReader();
            int i = 0;
            //while (reader.Read())
            //{

            TableRow headerRow = new TableRow();
            TableCell headerCell0 = new TableCell();
            headerCell0.Text = "<font color='039BE5'>No.</font>";
            headerRow.Cells.Add(headerCell0);
            TableCell headerCell1 = new TableCell();
            headerCell1.Text = "<font color='039BE5'>Company</font>";
            headerRow.Cells.Add(headerCell1);
            TableCell headerCell2 = new TableCell();
            headerCell2.Text = "<font color='039BE5'>Car Name</font>";
            headerRow.Cells.Add(headerCell2);
            myTable.Rows.Add(headerRow);
            TableCell headerCell3 = new TableCell();
            headerCell3.Text = "<font color='039BE5'>Car Variant</font>";
            headerRow.Cells.Add(headerCell3);
            myTable.Rows.Add(headerRow);
            TableCell headerCell4 = new TableCell();
            headerCell4.Text = "<font color='039BE5'>Price</font>";
            headerRow.Cells.Add(headerCell4);
            TableCell headerCell5 = new TableCell();
            headerCell5.Text = "<font color='039BE5'>Engine</font>";
            headerRow.Cells.Add(headerCell5);
            TableCell headerCell6 = new TableCell();
            headerCell6.Text = "<font color='039BE5'>BHP</font>";
            headerRow.Cells.Add(headerCell6);
            TableCell headerCell7 = new TableCell();
            headerCell7.Text = "<font color='039BE5'>Seating Capacity</font>";
            headerRow.Cells.Add(headerCell7);
            TableCell headerCell8 = new TableCell();
            headerCell8.Text = "<font color='039BE5'>Milage</font>";
            headerRow.Cells.Add(headerCell8);
            TableCell headerCell9 = new TableCell();
            headerCell9.Text = "<font color='039BE5'>Drive Type</font>";
            headerRow.Cells.Add(headerCell9);
            TableCell headerCell10 = new TableCell();
            headerCell10.Text = "<font color='039BE5'>Action</font>";
            headerRow.Cells.Add(headerCell10);
            TableCell headerCell11 = new TableCell();
            headerCell11.Text = "<font color='039BE5'>Action</font>";
            headerRow.Cells.Add(headerCell11);
            myTable.Rows.Add(headerRow);
            int num = 0;
            while (reader.Read())
            {
                num++;
                String n = num.ToString();
                //result[i] = reader.GetString(0); // Replace 0 with the index of the column you want to retrieve
                string CC = reader.GetString(1);
                String Cn = reader.GetString(2);
                String cv = reader.GetString(3);
                String p = reader.GetString(4);
                String E = reader.GetString(5);
                String Bhp = reader.GetString(6);
                String mi = reader.GetString(8);
                String sit = reader.GetString(9);
                String dt = reader.GetString(10);
                String id = reader.GetString(0);



                TableRow dataRow1 = new TableRow();
                TableCell dataCell0 = new TableCell();
                dataCell0.Text = n;
                dataRow1.Cells.Add(dataCell0);
                TableCell dataCell1 = new TableCell();
                dataCell1.Text = CC;
                dataRow1.Cells.Add(dataCell1);
                TableCell dataCell2 = new TableCell();
                dataCell2.Text = Cn;
                dataRow1.Cells.Add(dataCell2);
                TableCell dataCell3 = new TableCell();
                dataCell3.Text = cv;
                dataRow1.Cells.Add(dataCell3);
                TableCell dataCell4 = new TableCell();
                dataCell4.Text = p;
                dataRow1.Cells.Add(dataCell4);
                TableCell dataCell5 = new TableCell();
                dataCell5.Text = E;
                dataRow1.Cells.Add(dataCell5);
                TableCell dataCell6 = new TableCell();
                dataCell6.Text = Bhp;
                dataRow1.Cells.Add(dataCell6);
                TableCell dataCell7 = new TableCell();
                dataCell7.Text = mi;
                dataRow1.Cells.Add(dataCell7);
                TableCell dataCell8 = new TableCell();
                dataCell8.Text = sit;
                dataRow1.Cells.Add(dataCell8);
                TableCell dataCell9 = new TableCell();
                dataCell9.Text = dt;
                dataRow1.Cells.Add(dataCell9);
                TableCell dataCell10 = new TableCell();
                dataCell10.Text = "<a class='a2' href='Delete.aspx?CAR=" + id + "'>Delete</a>";
                dataRow1.Cells.Add(dataCell10);
                TableCell dataCell11 = new TableCell();
                dataCell11.Text = "<a class='a2' href='AdminCarUpdate.aspx?CAR=" + id + "'>Update</a>";
                dataRow1.Cells.Add(dataCell11);
                myTable.Rows.Add(dataRow1);
                //result.SetValue(reader.GetString(0), i);
                //myGridView.DataSource = reader;
                //myGridView.DataBind();
                //}
            }
            reader.Close();
            con.Close();

        }
        public string[] result { get; set; }
    }
}