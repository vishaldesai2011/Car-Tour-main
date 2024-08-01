<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RazorpayCallBack.aspx.cs" Inherits="Vehicle_Review.RazorpayCallBack" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <title>CallBack</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1 runat="server" id="h1Message"></h1>
            <p runat="server" id="pTxnId"></p>
            <p runat="server" id="pOrderId"></p>
            <p>Click Hear To Home</p>
            <p><a class="btn btn-primary btn-lg" href="RazorpayPayment.aspx">Home</a></p>
        </div>
    </form>
</body>
</html>
