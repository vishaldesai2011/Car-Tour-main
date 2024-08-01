<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminCarUpdate.aspx.cs" Inherits="Vehicle_Review.AdminCarUpdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update</title>
    <style>
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
            /*margin-left:250px;*/
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
            border-radius:10px;

        }
         .btn:hover{
            width:200px;
            height:40px;
            background-color:white;
            color:black;
            border:2px solid black;
            margin-bottom:40px;
            border-radius:10px;


        }.a1{
             margin-left:200px;
             font-size:20px;
             color:blue;

         }.a1:hover{
             /*margin-left:200px;*/
            /* font-size:20px;*/
             color:darkred;

         }
          #suc{
              color:green;
              font-size:22px;
          }
       
    </style>
</head>
<body  onload="myfun()">
    <center><h2 style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;">Update Car Data</h2></center>
    <form id="form1" runat="server">
        <Center><asp:Button ID="Button1" CssClass="btn" runat="server" Text="Get Data" OnClick="GETdata"/></Center>
            <center> <h4>Top Section<br /><asp:Label ID="suc" runat="server" Text=""></asp:Label></h4> </center>
             <asp:Label ID="Label17" CssClass="lbl1"  runat="server" Text="Car Company"></asp:Label><br />
             <asp:DropDownList ID="DropDownList1" CssClass="input" runat="server">
                
                 <%--<asp:ListItem>MAHINDRA</asp:ListItem>--%>
                
             </asp:DropDownList><br />
             <asp:Label ID="Label9" CssClass="lbl1"  runat="server" Text="Car Name" ></asp:Label><br />
             <asp:TextBox ID="TextBox1" CssClass="input" runat="server" placeholder="Enter Car Name" autocomplete="off" ReadOnly="true"></asp:TextBox><br />

              <asp:Label ID="Label57" CssClass="lbl1"  runat="server" Text="Car Variant" ></asp:Label><br />
             <asp:TextBox ID="TextBox23" CssClass="input" runat="server" placeholder="Enter Car variant" autocomplete="off" ReadOnly="true"></asp:TextBox><br />

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

              <asp:Label ID="Label21" CssClass="lbl1 after" runat="server" Text="Seating Capacity" ></asp:Label><br />
             <asp:TextBox ID="TextBox12" CssClass="input after" runat="server" placeholder="Enter Seating Capacity" ReadOnly="true"></asp:TextBox><br />

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
            
             <center><h4 color="black" class="after">Things we like </h4></center>

               <asp:Label ID="Label29" CssClass="lbl1 after" runat="server" Text="Things We Like"></asp:Label><br />
             <asp:TextBox ID="TextBox20" CssClass="input after textarea" TextMode="MultiLine" runat="server" placeholder="Ex:- Point1,Point2" autocomplete="off"></asp:TextBox><br />
            

               <hr color="black" size="4"/>             
            <center><h4 color="black" class="after">Things we don't like </h4></center>

               <asp:Label ID="Label30" CssClass="lbl1 after" runat="server" Text="Things We Don't Like"></asp:Label><br />
             <asp:TextBox ID="TextBox21" CssClass="input after textarea" TextMode="MultiLine" runat="server" placeholder="Ex:- Point1,Point2" autocomplete="off"></asp:TextBox><br />

       <center> <asp:Button ID="updates" CssClass="btn" runat="server" Text="Update" OnClick="UPDATE" /></center>
</form>
    <script>
       

    </script>
</body>
</html>
