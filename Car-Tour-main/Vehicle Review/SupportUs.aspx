<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SupportUs.aspx.cs" Inherits="Vehicle_Review.SupportUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
   
<head runat="server">
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <link href="Content/bootstrap.min.css" rel="stylesheet" />
        <link href="Content/bootstrap.css" rel="stylesheet" />
        <title>SupportUS</title>
    <style>
        body{
            background-color:black;
            
        }
        h1{
            color:saddlebrown;
        }
        label{
            color:white;
        }
        .container{
            margin-top:100px;
            margin-left:100px;
            border:1px solid white;
        }
      
    </style>
</head>
<body>

   <center><h1><b>Buy Coffee For US</b></h1></center>
    <div class="container">
    <form runat="server" id="form1">
        
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Name</label>
    <asp:TextBox runat="server" class="form-control" ID="txtName" ></asp:TextBox>
    <%--<div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>--%>
  </div>

         <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email</label>
    <asp:TextBox runat="server" class="form-control" ID="txtEmail" ></asp:TextBox>
    <%--<div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>--%>
  </div>

         <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Mobile</label>
    <asp:TextBox runat="server" class="form-control" ID="txtMobile" ></asp:TextBox>
    <%--<div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>--%>
  </div>

      <%--   <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Product</label>
    <asp:TextBox runat="server" class="form-control" ID="txtProduct" Visible="false"></asp:TextBox>
    <%--<div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>--%>
  <%--</div>--%>
        <br />
    <div class="input-group mb-3">
  <span class="input-group-text">₹</span>
  <asp:TextBox runat="server" class="form-control" aria-label="Amount (to the nearest Ruppes)" ID="txtAmount"></asp:TextBox>
  <span class="input-group-text"></span>
</div>

       <center> <asp:Button ID="Button1"  class="btn btn-primary" runat="server" Text="Pay Now" OnClick="btnRegister_Click" /></center>
  
    </form>
        </div>

</body>
</html>

