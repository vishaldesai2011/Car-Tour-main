<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CarCompany.aspx.cs" Inherits="Vehicle_Review.CarCompany" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin</title>
      <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <style>
        .con{
           
            margin:0px;
            /*background-color:whitesmoke;*/
            background-color:white;
            font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
             
        }
        .cust-nav{
            position:sticky;
            top:0;
            width:200px;
            height:745px;
            background-color:aqua;
            float:left;
            background-color:black;
        }
        .other{
            width:100%;
            height:100%;

        }
        ul{
            list-style:none;
            margin-top:10px;

        }
        li{
            padding:7px;
            align-content:center;
            margin-top:40px;
            height:40px;

            
        }
        li:hover{
            background-color:#E9F8F9;
            margin-top:40px;
            width:160px;
            border-radius:10px;
        }
        .active{
             background-color:#E9F8F9;
            margin-top:40px;
            width:160px;
            border-radius:10px
        }
        .active-a{
            color:blue;
        }
        a{
            text-decoration:none;
            color:gray;
        }
          a:hover{
                
        }
        .h3{
            color:dimgray;
        }
        .lbl{

        }
        .lbl:hover{
            text-decoration:underline;
        }
        .heading{
            background-color:black;
            height:80px;
            color:gray;
            padding:5px;
        }
        .cust{
            padding:7px;
            align-content:center;
            margin-top:40px;
            height:40px;

        }
        .cust:hover{
            background-color:black;

        }
        .input{
            margin-left:50px;
            width:350px;
            height:40px;
            margin-bottom:20px;

        }
        .lbl1{
            margin-left:50px;
        }
        .after{
            margin-left:250px;
        }
        .textarea{
            height:200px;
            width:500px;
        }
        .btn{
            width:200px;
            height:40px;
            background-color:black;
            color:aliceblue;
            margin-bottom:40px;
            margin-left:50px;
            margin-top:30px;

        }
         .btn:hover{
            width:200px;
            height:40px;
            background-color:white;
            color:black;
            border:2px solid black;
            margin-bottom:40px;

        }
         .fp{
             margin-left:50px;
         }
         .lbl2{
             font-size:22px;
             color:forestgreen;
         }
           table,td,tr{
            margin-left: 60px;
            margin-top:80px ;
            color: white;
            background-color:black;
            border: 1px solid black;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        }
          tr{
               background-color:rgb(39, 35, 34,0.7);
          }
                     
          td{
               background-color: rgb(0,100,243,0.2);
               padding:7px;
          }
        
    </style>
</head>
<body>
    <div class="con">

        <div class="cust-nav">
         <ul>
             <li class="cust"><h3 class="h3">CarTour</h3></li>
             <li><a href="Admin_Dashbord.aspx">Desbord</a></li>
             <asp:Label ID="Label2" CssClass="lbl" runat="server" Text=""></asp:Label>
             <li class="active"><a class="active-a" href="link1">Add New Company</a></li>
             <asp:Label ID="Label3" CssClass="lbl" runat="server" Text=""></asp:Label>
             <li><a href="Admin.aspx">New Car</a></li>
             <asp:Label ID="Label4" CssClass="lbl" runat="server" Text=""></asp:Label>
             <li><a href="ShowCars.aspx">Show Cars</a></li>
             <asp:Label ID="Label10" CssClass="lbl" runat="server" Text=""></asp:Label>
             <li><a href="Admin_Users.aspx">Users</a></li>
             <asp:Label ID="Label5" CssClass="lbl" runat="server" Text=""></asp:Label>
             <li><a href="Show_Review.aspx">Reviews</a></li>
             <asp:Label ID="Label6" CssClass="lbl" runat="server" Text=""></asp:Label>
             <li><a href="Contatc_Data.aspx">Contact</a></li>
             <asp:Label ID="Label7" CssClass="lbl" runat="server" Text=""></asp:Label>
             <li><a href="link1"></a></li>
             <asp:Label ID="Label8" CssClass="lbl" runat="server" Text=""></asp:Label>
             <li><a href="Admin_login.aspx"><font color="red">Signout</font></a></li>
         </ul>
        </div>
         <div class="other">
        <Center><h1 class="heading">Register New Company</h1></Center>

              <form id="form2" runat="server" >
                   <asp:Label ID="Label17" CssClass="lbl1 mt1"  runat="server" Text="Car Company" onclick="Clear()"></asp:Label><br />
                  <asp:TextBox ID="TextBox1" CssClass="input" runat="server" autocomplete="off"></asp:TextBox><br />

                    <asp:Label ID="Label9" CssClass="lbl1"  runat="server" Text="Logo"></asp:Label><br />
                  <asp:FileUpload ID="FileUpload1" CssClass="fp" runat="server" /><br />

                  <asp:Button ID="Button1" CssClass="btn" runat="server" Text="Register" OnClick="Register" onmouseleave="refresh()"/><br />
                  </form>
                    <b><Center><asp:Label ID="Label1" CssClass="lbl2" runat="server" Text=""></asp:Label></Center></b>
             </div>
    <center><asp:Table ID="myTable" runat="server" ></asp:Table> </center>

        </div>

     <script>
         var a = document.getElementById("TextBox1");
         a.addEventListener('textInput', remove);
         function remove() {
             document.getElementById('Label1').innerHTML = "";
             //alert("I am working");
         }
         function Clear() {
             document.getElementById('TextBox1').innerHTML = "";
         }
         function refresh() {
             window.location.reload();
         }
     </script>
</body>
   
</html>
