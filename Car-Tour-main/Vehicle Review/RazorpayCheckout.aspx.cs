﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Razorpay.Api;

namespace Vehicle_Review
{
    public partial class RazorpayCheckout : System.Web.UI.Page
    {
        public string orderId;
        public string amount;
        public string contact;
        public string name;
        public string product;
        public string email;
        protected void Page_Load(object sender, EventArgs e)
        {
            amount = (Convert.ToInt32(Request.QueryString["Amount"]) * 100).ToString();
            contact = Request.QueryString["Contact"].ToString();
            name = Request.QueryString["name"].ToString();
            product = Request.QueryString["Product"].ToString();
            email = Request.QueryString["Email"].ToString();

            Dictionary<string, object> input = new Dictionary<string, object>();
            input.Add("amount", amount);
            input.Add("currency", "INR");
            input.Add("payment_capture", 1);

            string key = "rzp_test_kLX7L8BYDbH8a2";
            string secret = "bqFMooSdJGjmiE7JagpU9YZS";


            RazorpayClient clint = new RazorpayClient(key, secret);
            Razorpay.Api.Order order = clint.Order.Create(input);
            orderId = order["id"].ToString();
        }
    }
}