using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vehicle_Review
{
    public partial class SupportUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string Product = "Donate";
            Response.Redirect(String.Format("RazorpayCheckout.aspx?Name={0}&Email={1}&Contact={2}&Amount={3}&Product={4}", txtName.Text, txtEmail.Text, txtMobile.Text, txtAmount.Text, Product));
        }

    }
}