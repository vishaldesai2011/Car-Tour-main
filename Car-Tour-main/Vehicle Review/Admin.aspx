<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Vehicle_Review.Admin" %>
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
            background-color:white;
            font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
             
        }
        .cust-nav{
            position:sticky;
            top:0;
            width:200px;
            height:745px;
            background-color:black;
            float:left;
            /*background-color:#0B0B45;*/
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
            margin-top:30px;
            height:40px;

            
        }
        li:hover{
            background-color:#E9F8F9;
            margin-top:30px;
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

        }
         .btn:hover{
            width:200px;
            height:40px;
            background-color:white;
            color:black;
            border:2px solid black;
            margin-bottom:40px;

        }.a1{
             margin-left:200px;
             font-size:20px;
             color:blue;

         }.a1:hover{
             /*margin-left:200px;*/
            /* font-size:20px;*/
             color:darkred;

         }
         
         .amt{
              margin-left:400px;
          }
          .nav2{
              align-content:center;
              justify-content:center;
              width:100%;
              height:50px;
              background-color:whitesmoke;
              justify-content:center;
          }
          .hr{
              
        height:4px;
        background-color:darkred;
        border: none;
    
          }
          .red1{
              width:150px;
              background-color:darkred;
              border-radius:10px;
              color:white;
          }
          .red1:hover{
              width:150px;
              background-color:red;
              border-radius:10px;
              color:white;
          }
        .msg {
            font-size: 25px;
            font-weight: 500;
            color: forestgreen;
        }
        
        
    </style>
</head>
<body>
    <div class="con">

        <div class="cust-nav">
         <ul>
             <li class="cust"><h3 class="h3">CarTour</h3></li>
             <asp:Label ID="Label1" CssClass="lbl" runat="server" Text=""></asp:Label>
             <li><a href="Admin_Dashbord.aspx">Dashboadrd</a></li>

             <asp:Label ID="Label2" CssClass="lbl" runat="server" Text=""></asp:Label>
             <li><a href="CarCompany.aspx">New Company</a></li>

             <asp:Label ID="Label3" CssClass="lbl" runat="server" Text=""></asp:Label>
             <li class="active"><a class="active-a" href="link1">New Car</a></li>

             <asp:Label ID="Label58" CssClass="lbl" runat="server" Text=""></asp:Label>
             <li><a href="ShowCars.aspx">Show Cars</a></li>

             <asp:Label ID="Label4" CssClass="lbl" runat="server" Text=""></asp:Label>
             <li><a href="Admin_Users.aspx">Users</a></li>

             <asp:Label ID="Label5" CssClass="lbl" runat="server" Text=""></asp:Label>
             <li><a href="Show_Review.aspx">Reviews</a></li>

             <asp:Label ID="Label6" CssClass="lbl" runat="server" Text=""></asp:Label>
             <li><a href="Contact_Data.aspx">Contact</a></li>

             <asp:Label ID="Label7" CssClass="lbl" runat="server" Text=""></asp:Label>
             <li><a href="link1"></a></li>

             <asp:Label ID="Label8" CssClass="lbl" runat="server" Text=""></asp:Label>
             <li  class="red1"><a href="Admin_Login.aspx"><font color="white">Signout</font></a></li>
         </ul>
        </div>
        <%--Navbar END--%>

        <%--Contenet START--%>
        <div class="other">
         <Center><h1 class="heading">ADD NEW CAR</h1></Center>
           <%-- <div class="nav2">
           <a class="a1 amt" href="#">Show</a>&emsp;<a class="a1" href="#">Update</a>&emsp;<a class="a1" href="#">Delete</a>&emsp;
         </div>--%>
            <%--<hr class="hr" size="10" bgcolor="black" />--%> 
            <form id="form1" runat="server">
            <center> <h4>Top Section</h4> </center>
             <asp:Label ID="Label17" CssClass="lbl1"  runat="server" Text="Car Company"></asp:Label><br />
             <asp:DropDownList ID="DropDownList1" CssClass="input" runat="server">
                
                 <%--<asp:ListItem>MAHINDRA</asp:ListItem>--%>
                
             </asp:DropDownList><br />
             <asp:Label ID="Label9" CssClass="lbl1"  runat="server" Text="Car Name"></asp:Label><br />
             <asp:TextBox ID="TextBox1" CssClass="input" runat="server" placeholder="Enter Car Name" autocomplete="off"></asp:TextBox><br />

              <asp:Label ID="Label57" CssClass="lbl1"  runat="server" Text="Car Variant"></asp:Label><br />
             <asp:TextBox ID="TextBox23" CssClass="input" runat="server" placeholder="Enter Car variant" autocomplete="off"></asp:TextBox><br />

             <asp:Label ID="Label10" CssClass="lbl1" runat="server" Text="Price"></asp:Label><br />
             <asp:TextBox ID="TextBox2" CssClass="input" runat="server" placeholder="Enter Price Ex.(9.99-16.49)" autocomplete="off"></asp:TextBox><br />

             <hr color="black" size="4"/>
             <center><h4>Key Specs of Car</h4></center>

             <asp:Label ID="Label11" CssClass="lbl1" runat="server" Text="Engine"></asp:Label><br />
             <asp:TextBox ID="TextBox3" CssClass="input" runat="server" placeholder="Enter Engine CC" autocomplete="off"></asp:TextBox><br />

             <asp:Label ID="Label12" CssClass="lbl1" runat="server" Text="BHP"></asp:Label><br />
             <asp:TextBox ID="TextBox4" CssClass="input" runat="server" placeholder="Enter Bhp " autocomplete="off"></asp:TextBox><br />

             <asp:Label ID="Label13" CssClass="lbl1" runat="server" Text="Seating Capacity"></asp:Label><br />
             <asp:TextBox ID="TextBox5" CssClass="input" runat="server" placeholder="Enter Seating Capacity" autocomplete="off"></asp:TextBox><br />

             <asp:Label ID="Label14" CssClass="lbl1 after   " runat="server" Text="Mileage"></asp:Label><br />
             <asp:TextBox ID="TextBox6" CssClass="input after" runat="server" placeholder="Enter Mileage" autocomplete="off"></asp:TextBox><br />

             <asp:Label ID="Label15" CssClass="lbl1 after" runat="server" Text="Fule"></asp:Label><br />
             <asp:TextBox ID="TextBox7" CssClass="input after" runat="server" placeholder="Enter Fule Type" autocomplete="off"></asp:TextBox><br />

             <asp:Label ID="Label16" CssClass="lbl1 after" runat="server" Text="Drive Type"></asp:Label><br />
             <asp:TextBox ID="TextBox8" CssClass="input after" runat="server" placeholder="Enter Drive Type" autocomplete="off"></asp:TextBox><br />

             <hr color="black" size="4"/>
             <center><h4 class="after">Specification of Car</h4></center>

              <asp:Label ID="Label18" CssClass="lbl1 after" runat="server" Text="City Mileage"></asp:Label><br />
             <asp:TextBox ID="TextBox9" CssClass="input after" runat="server" placeholder="Enter City Mileage" autocomplete="off"></asp:TextBox><br />

              <asp:Label ID="Label19" CssClass="lbl1 after" runat="server" Text="Engine Displacement (cc)"></asp:Label><br />
             <asp:TextBox ID="TextBox10" CssClass="input after" runat="server" placeholder="Enter Engine Displacement (cc)" autocomplete="off"></asp:TextBox><br />

              <asp:Label ID="Label20" CssClass="lbl1 after" runat="server" Text="Max Power (bhp@rpm)"></asp:Label><br />
             <asp:TextBox ID="TextBox11" CssClass="input after" runat="server" placeholder="Enter Max Power (bhp@rpm)" autocomplete="off"></asp:TextBox><br />

              <asp:Label ID="Label21" CssClass="lbl1 after" runat="server" Text="Seating Capacity"></asp:Label><br />
             <asp:TextBox ID="TextBox12" CssClass="input after" runat="server" placeholder="Enter Seating Capacity"></asp:TextBox><br />

              <asp:Label ID="Label22" CssClass="lbl1 after" runat="server" Text="Fuel Tank Capacity"></asp:Label><br />
             <asp:TextBox ID="TextBox13" CssClass="input after" runat="server" placeholder="Enter Fuel Tank Capacity"></asp:TextBox><br />

              <asp:Label ID="Label23" CssClass="lbl1 after" runat="server" Text="Ground Clearance Unladen"></asp:Label><br />
             <asp:TextBox ID="TextBox14" CssClass="input after" runat="server" placeholder="Enter Ground Clearance Unladen" autocomplete="off"></asp:TextBox><br />

              <asp:Label ID="Label24" CssClass="lbl1 after" runat="server" Text="Fuel Type"></asp:Label><br />
             <asp:TextBox ID="TextBox15" CssClass="input after" runat="server" placeholder="Enter Fuel Type"></asp:TextBox><br />

              <asp:Label ID="Label25" CssClass="lbl1 after" runat="server" Text="No. of cylinder"></asp:Label><br />
             <asp:TextBox ID="TextBox16" CssClass="input after" runat="server" placeholder="Enter No. of cylinder" autocomplete="off"></asp:TextBox><br />

              <asp:Label ID="Label26" CssClass="lbl1 after" runat="server" Text="Max Torque (nm@rpm)"></asp:Label><br />
             <asp:TextBox ID="TextBox17" CssClass="input after" runat="server" placeholder="Enter Max Torque (nm@rpm)" autocomplete="off"></asp:TextBox><br />

              <asp:Label ID="Label27" CssClass="lbl1 after" runat="server" Text="Transmission Type"></asp:Label><br />
             <asp:TextBox ID="TextBox18" CssClass="input after" runat="server" placeholder="Transmission Type" autocomplete="off"></asp:TextBox><br />

              <asp:Label ID="Label28" CssClass="lbl1 after" runat="server" Text="Body Type"></asp:Label><br />
             <asp:TextBox ID="TextBox19" CssClass="input after" runat="server" placeholder="Enter Body Type" autocomplete="off"></asp:TextBox><br /> 
             
              <asp:Label ID="Label31" CssClass="lbl1 after" runat="server" Text="Colour"></asp:Label><br />
             <asp:TextBox ID="TextBox22" CssClass="input after" runat="server" placeholder="Colour" autocomplete="off"></asp:TextBox><br /> 


                   <asp:Label ID="Label59" CssClass="lbl1 after" runat="server" Text="Car Price And Variants"></asp:Label><br />
             <asp:TextBox ID="TextBox24" CssClass="input after textarea" TextMode="MultiLine" runat="server" placeholder="Ex:- The price of" autocomplete="off"></asp:TextBox><br />
             <hr color="black" size="4"/>             
            
             <center><h4 color="black" class="after">Things We Like </h4></center>

               <asp:Label ID="Label29" CssClass="lbl1 after" runat="server" Text="Things We Like"></asp:Label><br />
             <asp:TextBox ID="TextBox20" CssClass="input after textarea" TextMode="MultiLine" runat="server" placeholder="Ex:- Point1,Point2" autocomplete="off"></asp:TextBox><br />
            

               <hr color="black" size="4"/>             
            <center><h4 color="black" class="after">Things We Don't Like</h4></center>

               <asp:Label ID="Label30" CssClass="lbl1 after" runat="server" Text="Things We Don't Like"></asp:Label><br />
             <asp:TextBox ID="TextBox21" CssClass="input after textarea" TextMode="MultiLine" runat="server" placeholder="Ex:- Point1,Point2" autocomplete="off"></asp:TextBox><br />

                <hr color="black" size="4"/>             
            <center><h4 color="black" class="after">All Images</h4></center>

              <asp:Label ID="Label32" CssClass="lbl1 after" runat="server" Text="Image 1"></asp:Label><br />
             <asp:FileUpload ID="FileUpload1" CssClass="after Fu" runat="server" /><br /><br />

              <asp:Label ID="Label33" CssClass="lbl1 after" runat="server" Text="Image 2"></asp:Label><br />
             <asp:FileUpload ID="FileUpload2" CssClass="after" runat="server" /><br /><br />

              <asp:Label ID="Label34" CssClass="lbl1 after" runat="server" Text="Image 3"></asp:Label><br />
             <asp:FileUpload ID="FileUpload3" CssClass="after" runat="server" /><br /><br />

              <asp:Label ID="Label35" CssClass="lbl1 after" runat="server" Text="Image 4"></asp:Label><br />
             <asp:FileUpload ID="FileUpload4" CssClass="after" runat="server" /><br /><br />

              <asp:Label ID="Label36" CssClass="lbl1 after" runat="server" Text="Image 5"></asp:Label><br />
             <asp:FileUpload ID="FileUpload5" CssClass="after" runat="server" /><br /><br />

             
                <hr color="black" size="4"/>             
            <center><h4 color="black" class="after">Interior Images</h4></center>

             
              <asp:Label ID="Label37" CssClass="lbl1 after" runat="server" Text="Image 1"></asp:Label><br />
             <asp:FileUpload ID="FileUpload6" CssClass="after" runat="server" /><br /><br />

              <asp:Label ID="Label38" CssClass="lbl1 after" runat="server" Text="Image 2"></asp:Label><br />
             <asp:FileUpload ID="FileUpload7" CssClass="after" runat="server" /><br /><br />

              <asp:Label ID="Label39" CssClass="lbl1 after" runat="server" Text="Image 3"></asp:Label><br />
             <asp:FileUpload ID="FileUpload8" CssClass="after" runat="server" /><br /><br />

              <asp:Label ID="Label40" CssClass="lbl1 after" runat="server" Text="Image 4"></asp:Label><br />
             <asp:FileUpload ID="FileUpload9" CssClass="after" runat="server" /><br /><br />

              <asp:Label ID="Label41" CssClass="lbl1 after" runat="server" Text="Image 5"></asp:Label><br />
             <asp:FileUpload ID="FileUpload10" CssClass="after" runat="server" /><br /><br />

              <asp:Label ID="Label42" CssClass="lbl1 after" runat="server" Text="Image 6"></asp:Label><br />
             <asp:FileUpload ID="FileUpload11" CssClass="after" runat="server" /><br /><br />

              <asp:Label ID="Label43" CssClass="lbl1 after" runat="server" Text="Image 7"></asp:Label><br />
             <asp:FileUpload ID="FileUpload12" CssClass="after" runat="server" /><br /><br />

              <asp:Label ID="Label44" CssClass="lbl1 after" runat="server" Text="Image 8"></asp:Label><br />
             <asp:FileUpload ID="FileUpload13" CssClass="after" runat="server" /><br /><br />

              <asp:Label ID="Label45" CssClass="lbl1 after" runat="server" Text="Image 9"></asp:Label><br />
             <asp:FileUpload ID="FileUpload14" CssClass="after" runat="server" /><br /><br />

              <asp:Label ID="Label46" CssClass="lbl1 after" runat="server" Text="Image 10"></asp:Label><br />
             <asp:FileUpload ID="FileUpload15" CssClass="after" runat="server" /><br /><br />


               <hr color="black" size="4"/>             
            <center><h4 color="black" class="after">Exterior Images</h4></center>

             
              <asp:Label ID="Label47" CssClass="lbl1 after" runat="server" Text="Image 1"></asp:Label><br />
             <asp:FileUpload ID="FileUpload16" CssClass="after" runat="server" /><br /><br />

              <asp:Label ID="Label48" CssClass="lbl1 after" runat="server" Text="Image 2"></asp:Label><br />
             <asp:FileUpload ID="FileUpload17" CssClass="after" runat="server" /><br /><br />

              <asp:Label ID="Label49" CssClass="lbl1 after" runat="server" Text="Image 3"></asp:Label><br />
             <asp:FileUpload ID="FileUpload18" CssClass="after" runat="server" /><br /><br />

              <asp:Label ID="Label50" CssClass="lbl1 after" runat="server" Text="Image 4"></asp:Label><br />
             <asp:FileUpload ID="FileUpload19" CssClass="after" runat="server" /><br /><br />

              <asp:Label ID="Label51" CssClass="lbl1 after" runat="server" Text="Image 5"></asp:Label><br />
             <asp:FileUpload ID="FileUpload20" CssClass="after" runat="server" /><br /><br />

              <asp:Label ID="Label52" CssClass="lbl1 after" runat="server" Text="Image 6"></asp:Label><br />
             <asp:FileUpload ID="FileUpload21" CssClass="after" runat="server" /><br /><br />

              <asp:Label ID="Label53" CssClass="lbl1 after" runat="server" Text="Image 7"></asp:Label><br />
             <asp:FileUpload ID="FileUpload22" CssClass="after" runat="server" /><br /><br />

              <asp:Label ID="Label54" CssClass="lbl1 after" runat="server" Text="Image 8"></asp:Label><br />
             <asp:FileUpload ID="FileUpload23" CssClass="after" runat="server" /><br /><br />

              <asp:Label ID="Label55" CssClass="lbl1 after" runat="server" Text="Image 9"></asp:Label><br />
             <asp:FileUpload ID="FileUpload24" CssClass="after" runat="server" /><br /><br />

              <asp:Label ID="Label56" CssClass="lbl1 after" runat="server" Text="Image 10"></asp:Label><br />
             <asp:FileUpload ID="FileUpload25" CssClass="after" runat="server" /><br /><br />             
           
           <center>  <asp:Button ID="AddCar1" CssClass="btn after" runat="server" Text="Add Car" OnClick="AddCar"/> </center>
           <center>  <%--<asp:Button ID="Button1" CssClass="btn after" runat="server" Text="Show Image" OnClick="ViewImage"/>--%> </center>
             <asp:Image ID="Image1" runat="server" />
                <center><asp:Label ID="MSG" CssClass="after msg" runat="server" Text=""></asp:Label></center>
             
         </form>

         </div>


    </div>
<%--    <asp:Label ID="La" CssClass="after" runat="server" Text="Label"></asp:Label>
    <% foreach (string item in result)
{ %>
    <div><p class='after'><%= item %></p></div>
<% } %>--%>



</body>

</html>
