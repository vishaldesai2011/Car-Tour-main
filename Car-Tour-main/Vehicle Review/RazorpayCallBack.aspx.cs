﻿using Razorpay.Api;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vehicle_Review
{
    public partial class RazorpayCallBack : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string paymentId = Request.Form["razorpay_payment_id"];
                string orderId = Request.Form["razorpay_order_id"];
                string signature = Request.Form["razorpay_signature"];
                string key = "Enter Public key hear";
                string secret = "Enter Secret key hear";

                RazorpayClient clint = new RazorpayClient(key, secret);
                Dictionary<string, string> attributes = new Dictionary<string, string>();
                attributes.Add("razorpay_payment_id", paymentId);
                attributes.Add("razorpay_order_id", orderId);
                attributes.Add("razorpay_signature", signature);
                Utils.verifyPaymentSignature(attributes);
                pTxnId.InnerText = "Transection Id" + paymentId;
                pOrderId.InnerText = "Order Id" + orderId;
                h1Message.InnerText = "Transaction Successfull";
            }
            catch
            {
                h1Message.InnerText = "Transaction Unsuccessfull";

            }
        }
    }
}
