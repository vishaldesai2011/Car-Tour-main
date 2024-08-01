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
    public partial class Admin_Users : System.Web.UI.Page
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

                SqlCommand cmd = new SqlCommand("Select * from users", con);
                SqlDataReader reader = cmd.ExecuteReader();

                TableRow headerRow = new TableRow();
                TableCell headerCell0 = new TableCell();
                headerCell0.Text = "<font color='039BE5'>No.</font>";
                headerRow.Cells.Add(headerCell0);
                TableCell headerCell1 = new TableCell();
                headerCell1.Text = "<font color='039BE5'>User Name</font>";
                headerRow.Cells.Add(headerCell1);
                TableCell headerCell2 = new TableCell();
                headerCell2.Text = "<font color='039BE5'>Password</font>";
                headerRow.Cells.Add(headerCell2);
                TableCell headerCell3 = new TableCell();
                headerCell3.Text = "<font color='039BE5'>First Name</font>";
                headerRow.Cells.Add(headerCell3);
                TableCell headerCell4 = new TableCell();
                headerCell4.Text = "<font color='039BE5'>Last Name</font>";
                headerRow.Cells.Add(headerCell4);
                TableCell headerCell5 = new TableCell();
                headerCell5.Text = "<font color='039BE5'>Email</font>";
                headerRow.Cells.Add(headerCell5);

                myTable1.Rows.Add(headerRow);
                int n = 0;
                while (reader.Read())
                {
                    n++;
                    String uname = reader.GetString(0);
                    String fname = reader.GetString(3);
                    String lname = reader.GetString(4);
                    String email = reader.GetString(2);

                    TableRow dataRow1 = new TableRow();
                    TableCell dataCell0 = new TableCell();
                    dataCell0.Text = n.ToString();
                    dataRow1.Cells.Add(dataCell0);
                    TableCell dataCell1 = new TableCell();
                    dataCell1.Text = uname;
                    dataRow1.Cells.Add(dataCell1);
                    TableCell dataCell2 = new TableCell();
                    dataCell2.Text = "****************";
                    dataRow1.Cells.Add(dataCell2);
                    TableCell dataCell3 = new TableCell();
                    dataCell3.Text = fname;
                    dataRow1.Cells.Add(dataCell3);
                    TableCell dataCell4 = new TableCell();
                    dataCell4.Text = lname;
                    dataRow1.Cells.Add(dataCell4);
                    TableCell dataCell5 = new TableCell();
                    dataCell5.Text = email;
                    dataRow1.Cells.Add(dataCell5);
                    myTable1.Rows.Add(dataRow1);


                }
                reader.Close();

            }
        }
    }
}