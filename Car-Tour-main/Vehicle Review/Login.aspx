<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Vehicle_Review.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.js"></script>
    <title>Login</title>

     <style>
         .input{
             width:350px;
             height:35px;
             border:1px solid blue;
             margin-top:40px;
             border-radius:3px;
             
         }
         .input:hover{
             width:350px;
             height:35px;
             border:2px solid red;
             /*margin-top:40px;*/
             
         }
         .marging{
             margin-top:50px;
         }
         .btn1{
             margin-top:50px;
             width: 180px;
             height:40px;
             background-color:black;
             color:aliceblue;
             border-radius:10px;

         }
           .btn1:hover{
             margin-top:50px;
             width: 180px;
             height:40px;
             background-color:white;
             color:aliceblue;
             border:1px solid black;
             color:black;
             border-radius:10px;

         }
         .container{
             background-color:white;
             width:800px;
             height:500px;
             margin-top:100px;
             /*border:3px solid black;*/
               animation:slide;
             animation-duration: 1s;
            
             
         }
         .h1{
             color:black;
         }
         .mr{
             margin-top:50px;
         }
         .right{
             /*border-right:3px solid black;*/
             animation:slide1;
             animation-duration:1s;
             float:left;
             width:50%;
             height:100%;
             background-size: 100%;
             background-repeat: no-repeat;
             background-image:url(images/14562381_5500661.jpg);

         }
         .left{
             float:right;
             margin-top:60px;
         }
         #lbl{
             color:red;
         }
         #a{
             text-decoration:none;
             color:blue;
         }
           #a:hover{
             text-decoration:none;
             color:darkred;
         }
         @keyframes slide {
             0% {
                 width: 400px;
                 border:0px;
             }

             50% {
                 margin-left: 200px;
                 border:0px;
             }

             100% {
                 margin-left: 400px;

             }
         }

          @keyframes slide1 {
             0% {
                 width: 0px;
             }

             50% {
                 margin-left: 0px;
             }

             100% {
                 margin-left: 0px;
             }
         }
         @keyframes border {
                 0% {
                 border-left:1px solid black;
             }
                 25%{
                     border-top:1px solid black;
                 }

             50% {
                   border-right:1px solid black;
             }

             100% {
                   border-bottom:1px solid black;
             }
         }
    </style>

</head>
   
<body>
   <div class="container text-center marging">
       <div class="right">
        
               </div>
  <div class="left">
       <p class="h1">Login</p>
    <form id="form1" runat="server">
      
            <asp:TextBox ID="TextBox1" CssClass="input mr" runat="server" placeholder="User Name"></asp:TextBox><br />
            <asp:TextBox ID="TextBox2" CssClass="input" runat="server" Type="password" placeholder="Password"></asp:TextBox><br />
            <asp:Button ID="Button1" CssClass="btn1" runat="server" Text="Login" OnClick="Button2_Clicked"/>
        <br />
        <br />
        <a id="a" href="Signup.aspx">Create Account</a>
        <br />
        <br />
            <asp:Label ID="lbl" runat="server"></asp:Label>
    </form>
        </div>

     </div>
</body>
    <script>
        var uname = document.getElementById("TextBox1");
        var pass = document.getElementById("TextBox2");

        uname.addEventListener('textInput', var1);
        pass.addEventListener('textInput', val2);

        var1_p = false;
        var2_p = false;

    </script>
</html>
