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
    public partial class Show_Review : System.Web.UI.Page
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
                showReview();
            }
        }
        public void showReview()
        {
            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=vehiclereview;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Reviews", con);
            SqlDataReader reader = cmd.ExecuteReader();
            TableRow headerRow = new TableRow();
            TableCell headerCell0 = new TableCell();
            headerCell0.Text = "<font color='039BE5'>No.</font>";
            headerRow.Cells.Add(headerCell0);
            TableCell headerCell1 = new TableCell();
            headerCell1.Text = "<font color='039BE5'>Uid</font>";
            headerRow.Cells.Add(headerCell1);
            TableCell headerCell2 = new TableCell();
            headerCell2.Text = "<font color='039BE5'>Name</font>";
            headerRow.Cells.Add(headerCell2);
            myTable.Rows.Add(headerRow);
            TableCell headerCell3 = new TableCell();
            headerCell3.Text = "<font color='039BE5'>Title</font>";
            headerRow.Cells.Add(headerCell3);
            myTable.Rows.Add(headerRow);
            TableCell headerCell4 = new TableCell();
            headerCell4.Text = "<font color='039BE5'>Text</font>";
            headerRow.Cells.Add(headerCell4);
            TableCell headerCell5 = new TableCell();
            headerCell5.Text = "<font color='039BE5'>Rating</font>";
            headerRow.Cells.Add(headerCell5);
            TableCell headerCell6 = new TableCell();
            headerCell6.Text = "<font color='039BE5'>Date</font>";
            headerRow.Cells.Add(headerCell6);
            myTable.Rows.Add(headerRow);
            int num = 0;
            while (reader.Read())
            {
                num++;
                TableRow dataRow1 = new TableRow();
                TableCell dataCell0 = new TableCell();
                dataCell0.Text = num.ToString();
                dataRow1.Cells.Add(dataCell0);
                TableCell dataCell1 = new TableCell();
                dataCell1.Text = reader.GetString(1);
                dataRow1.Cells.Add(dataCell1);
                TableCell dataCell2 = new TableCell();
                dataCell2.Text = reader.GetString(6) + " " + reader.GetString(7);
                dataRow1.Cells.Add(dataCell2);
                TableCell dataCell3 = new TableCell();
                dataCell3.Text = reader.GetString(2);
                dataRow1.Cells.Add(dataCell3);
                TableCell dataCell4 = new TableCell();
                dataCell4.Text = reader.GetString(3);
                dataRow1.Cells.Add(dataCell4);
                TableCell dataCell5 = new TableCell();
                dataCell5.Text = reader.GetString(4);
                dataRow1.Cells.Add(dataCell5);
                TableCell dataCell6 = new TableCell();
                dataCell6.Text = reader.GetString(5);
                dataRow1.Cells.Add(dataCell6);
                myTable.Rows.Add(dataRow1);



            }
            reader.Close();
            con.Close();
        }
        }
}