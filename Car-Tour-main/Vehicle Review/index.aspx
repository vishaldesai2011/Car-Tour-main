<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Vehicle_Review.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Auto</title>
    <script src="Scripts/bootstrap.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
      <meta name="viewport" content="initial-scale=1, maximum-scale=1"/>
    <script src="https://code.iconify.design/iconify-icon/1.0.3/iconify-icon.min.js"></script>
    <script src="https://code.iconify.design/3/3.1.0/iconify.min.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
    .custom_font{
        font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
    }
    .marginCar{
        margin-top:30px;
    }
    .border {
        border-style: solid;
        border-color: hotpink;
    }
    .left{
        justify-content:center;
        align-items:center;
    }
        .gray {
            color: dimgray;
    }
                .margin{
            margin-top:50px;
            margin-bottom:50px;
        }
        .navColor{
            background-color: #151414;
        }

        ul {
            margin: 0px;
            padding: 0px;
        }

        .footer-section {
            background: #151414;
            position: relative;
        }

        .footer-cta {
            border-bottom: 1px solid #373636;
        }

        .single-cta i {
            color: #ff5e14;
            font-size: 30px;
            float: left;
            margin-top: 8px;
        }

        .cta-text {
            padding-left: 15px;
            display: inline-block;
        }

            .cta-text h4 {
                color: #fff;
                font-size: 20px;
                font-weight: 600;
                margin-bottom: 2px;
            }

            .cta-text span {
                color: #757575;
                font-size: 15px;
            }

        .footer-content {
            position: relative;
            z-index: 2;
        }

        .footer-pattern img {
            position: absolute;
            top: 0;
            left: 0;
            height: 330px;
            background-size: cover;
            background-position: 100% 100%;
        }

        .footer-logo {
            margin-bottom: 30px;
        }

            .footer-logo img {
                max-width: 200px;
            }

        .footer-text p {
            margin-bottom: 14px;
            font-size: 14px;
            color: #7e7e7e;
            line-height: 28px;
        }

        .footer-social-icon span {
            color: #fff;
            display: block;
            font-size: 20px;
            font-weight: 700;
            font-family: 'Poppins', sans-serif;
            margin-bottom: 20px;
        }

        .footer-social-icon a {
            color: #fff;
            font-size: 16px;
            margin-right: 15px;
        }

        .footer-social-icon i {
            height: 40px;
            width: 40px;
            text-align: center;
            line-height: 38px;
            border-radius: 50%;
        }

        .facebook-bg {
            background: #3B5998;
        }

        .twitter-bg {
            background: #55ACEE;
        }

        .google-bg {
            background: #DD4B39;
        }

        .footer-widget-heading h3 {
            color: #fff;
            font-size: 20px;
            font-weight: 600;
            margin-bottom: 40px;
            position: relative;
        }

            .footer-widget-heading h3::before {
                content: "";
                position: absolute;
                left: 0;
                bottom: -15px;
                height: 2px;
                width: 50px;
                background: #ff5e14;
            }

        .footer-widget ul li {
            display: inline-block;
            float: left;
            width: 50%;
            margin-bottom: 12px;
        }

            .footer-widget ul li a:hover {
                color: #ff5e14;
            }

            .footer-widget ul li a {
                color: #878787;
                text-transform: capitalize;
            }

        .subscribe-form {
            position: relative;
            overflow: hidden;
        }

            .subscribe-form input {
                width: 100%;
                padding: 14px 28px;
                background: #2E2E2E;
                border: 1px solid #2E2E2E;
                color: #fff;
            }

            .subscribe-form button {
                position: absolute;
                right: 0;
                background: #ff5e14;
                padding: 13px 20px;
                border: 1px solid #ff5e14;
                top: 0;
            }

                .subscribe-form button i {
                    color: #fff;
                    font-size: 22px;
                    transform: rotate(-6deg);
                }

        .copyright-area {
            background: #202020;
            padding: 25px 0;
        }

        .copyright-text p {
            margin: 0;
            font-size: 14px;
            color: #878787;
        }

            .copyright-text p a {
                color: #ff5e14;
            }

        .footer-menu li {
            display: inline-block;
            margin-left: 20px;
        }

            .footer-menu li:hover a {
                color: #ff5e14;
            }

            .footer-menu li a {
                font-size: 14px;
                color: #878787;
            }

            div.fixed {
            position: fixed;
            width: 50%;
            bottom: 10px;
            border: 3px solid #8AC007;
} 
.marginleft{
    margin-left:8px;
}
.p1{
    font-size:14px;
    text-align:start;
    color:dimgrey;
}
.good{
    background-color:rgb(179,230,181,0.4);
}
.h4{
    text-align:left;
}
.ul{
    margin-left:10px;
}
.bad{
    background-color:rgb(255, 127, 127,0.4);
    margin-left:8px;
}
.box{
    /*border-left:2px solid green*//*;
     border-right:2px solid red*/;
}
.bod1{
    border:2px solid gray;    
}
.bg{
    /*background-color:white;*/
    /*border:0.5px solid gray;*/
}
.ps{
    font-size:15px;
    font-family:Arial, Helvetica, sans-serif;
}
.hh2{
    font-size:22px;
    font-weight:600;
}
.hh5{
    font-size:20px;
    font-weight:600;
}
.comment{
    font-size:20px;
   
}
.tab_Com{

}
.come{
    margin-left:10px;
}
.time{
    font-size:12px;
}
.review{
    width:300px;
    background-color:#F75D34;
    height:45px;
    position:relative;
    left:100px;
}

.rv{
font-family:12px;
 position:relative;
 left:20px;

}
.Slider{
    display:flex;
    width:100%;
    height:400px;
    flex-wrap:wrap;
    flex-direction:row;
    row-gap:20px;
    column-gap:40px;
    justify-content:center;
    margin-bottom:30px;
}
.grid{
    width:600px;
    height:400px;
    /*background-color:gray;*/
}
.star_p{
    font-size:25px;
}

.ptime ,.pname{
    line-height:5px;
    color:gray;
    font-size:12px;
}
@media only screen and (max-width: 550px) {
  .review{
    width:100px;
     left:0px;
  }
  .rv{
      left:0;
  }
}


</style>
</head>
<body>

         <nav class="navbar navbar-expand-lg navColor" data-bs-theme="dark">
        <div class="container-fluid">
            <a class="navbar-brand text-white" href="cartour.aspx">CarTour</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active text-white" aria-current="page" href="#call">Price</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="index_image.aspx?image=<%=URl %>">Image</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="#spec">Milage</a>
                    </li>
                                     <%--   <li class="nav-item">
                        <a class="nav-link text-white hov" href="#">Colours</a>
                    </li>--%>
                        <li class="nav-item">
                        <a class="nav-link text-white" href="#revs">Expert Reviews</a>
                    </li>
                        <li class="nav-item">
                        <a class="nav-link text-white" href="#spec">Specs</a>
                    </li>
                </ul>
                <%--<form  class="d-flex" id="form1" runat="server">--%>
                    <%--<asp:TextBox ID="Search" placeholder="Search" CssClass="form-control me-2" runat="server"></asp:TextBox>--%>
                    <button class="btn btn-outline-success" type="submit" onclick="location.href='cartour.aspx#serch'">Search</button>
                  <%--  <button type="button" class="btn btn-outline-danger marginleft" onclick="location.href='https://localhost:44359/login.aspx'" data-toggle="modal" data-target="#myModal">Login</button>
                    <button type="button" class="btn btn-outline-danger marginleft" onclick="location.href='https://localhost:44359/Signup.aspx'" data-toggle="modal" data-target="#myModal">Signup</button>--%>
                <%--</form>--%>
            </div>
        </div>
    </nav>

    <%--NAV--%>
   <div class="container text-left marginCar">
    <div class="row">
    <div class="col">


            <div id="carouselExampleFade" class="carousel slide carousel-faded-print-flex">
  <div class="carousel-inner ">
                    <div class="carousel-item active">
            <%--<img src="https://stimg.cardekho.com/images/carexteriorimages/630x420/Mahindra/Thar/8076/1601635839903/side-view-(left)-90.jpg?tr=w-456" class="d-block w-100 " alt="Image"/>--%>
             <asp:Image ID="Image1" CssClass="d-block w-100 h-100" runat="server" />
    </div>
    <div class="carousel-item">
                     <asp:Image ID="Image2" CssClass="d-block w-100 h-100" runat="server" />

    </div>
    <div class="carousel-item">
       
                     <asp:Image ID="Image3" CssClass="d-block w-100 h-100" runat="server" />
    </div>
       <div class="carousel-item">
                                <asp:Image ID="Image4" CssClass="d-block w-100 h-100" runat="server" />
    </div>
       <div class="carousel-item">
                     <asp:Image ID="Image5" CssClass="d-block w-100 h-100" runat="server" />
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>


        </div>
        <div class="col text-left">
            <h2 class="text-lg" id="Car"><b><asp:Label ID="Car1" runat="server" Text="Label"></asp:Label></b></h2>
      <%--<asp:Label CssClass="text-lg hh2" ID="Car1" runat="server" Text="Label"></asp:Label>--%>

            <p><iconify-icon icon="material-symbols:star" style="color: gold;" width="24" height="24"></iconify-icon> <iconify-icon icon="material-symbols:star" style="color: gold;" width="24" height="24"></iconify-icon> <iconify-icon icon="material-symbols:star" style="color: gold;" width="24" height="24"></iconify-icon> <iconify-icon icon="material-symbols:star" style="color: gold;" width="24" height="24"></iconify-icon><iconify-icon icon="material-symbols:star" style="color: gold;" width="24" height="24"></iconify-icon><sup> <font size="3">366 Reviews </font></sup></p>
            <%--<h5 class="left">Rs.9.99 - 16.49 Lakh* <font color="#4169e1" size="2">Get On Road Price</font></h5>--%>
            <b><span style="font-size:18px;">₹ &nbsp;</span><asp:Label CssClass="left hh5" ID="Price" runat="server" Text="Price"></asp:Label></b>

            <h6 class="gray">*Ex-showroom Price</h6>

            <%--@*<button class="mt-5 btn1"> View Complete Offers </button>*@--%>
            <%--<button type="button" class="btn btn-danger mt-5">View Complete Offers</button>--%>
        </div>

    </div>
          <button type="button" class="btn btn-outline-dark mt-3" onclick="location.href='index_image.aspx?image=<%=URl %>'">View All Images</button>

    <hr class="mt-5" size="5"/>
    
</div>
<h3 class="mb-5 mt-5 text-center"><b>Key Specs of <asp:Label ID="KeySpec" runat="server" Text="Key Specs of"></asp:Label></b></h3>
<div class="container text-center d-none d-sm-block">
    <div class="row">
        <div class="col-sm"><iconify-icon icon="mdi:engine-outline" style="color:dimgray" width="40" height="40"><br></iconify-icon><br />Engine</div>
        <div class="col-sm"><iconify-icon icon="mdi:thunder-outline" style="color:dimgray" width="40" height="40"></iconify-icon><br />BHP</div>
        <div class="col-sm"><iconify-icon icon="material-symbols:airline-seat-recline-extra-sharp" style="color:dimgray" width="40" height="40"></iconify-icon><br />Seating Capacity</div>
        <div class="col-sm"><iconify-icon icon="ic:baseline-speed" width="45" height="45" style="color:dimgray"></iconify-icon><br />Mileage</div>
        <div class="col-sm"><iconify-icon icon="mdi:petrol-pump-outline" width="45" height="45" style="color:dimgray"></iconify-icon><br />Fuel</div>
        <div class="col-sm"><img src="images/chassis%20(1).png" /><br />Drive Type</div>

    </div>
    <div class="row mt-3 ">
        <%--<div class="col-sm custom_font">1497 cc - 2184 cc</div>--%>
        <div class="col-sm custom_font"><asp:Label ID="Engine" runat="server" Text="Engine"></asp:Label></div>
        <%--<div class="col-sm custom_font">116.93 - 150.0 Bhp</div>--%>
        <div class="col-sm custom_font"><asp:Label ID="BHP" runat="server" Text="BHP"></asp:Label></div>
        <%--<div class="col-sm custom_font">4</div>--%>
        <div class="col-sm custom_font"><asp:Label ID="Setting" runat="server" Text="Setting Capacity"></asp:Label></div>
        <%--<div class="col-sm custom_font">15.2 kmpl</div>--%>
        <div class="col-sm custom_font"><asp:Label ID="Milage" runat="server" Text="Milage"></asp:Label></div>
        <%--<div class="col-sm custom_font">Diesel/Petrol</div>--%>
        <div class="col-sm custom_font"><asp:Label ID="Fule" runat="server" Text="Fule"></asp:Label></div>
        <%--<div class="col-sm custom_font">RWD / 4X4</div>--%>
        <div class="col-sm custom_font"><asp:Label ID="DriveType" runat="server" Text="Drive Type"></asp:Label></div>
    </div>
    <hr size="5" />

    </div>
<%--@*PRICE SECTION*@--%>
<div class="container text-left d-none d-sm-block bg" id="call" >
    <h2 class="text-center mt-4 mb-"><asp:Label ID="COMCAR" runat="server" Text=""></asp:Label>&nbsp;Price</h2>
    <p><asp:Label ID="CARPRICE" runat="server" Text=""></asp:Label></p>

</div>

    <div class="container text-center mt-5 box">
  <div class="row">
    <div class="col good">

      <h4 class="h4"><iconify-icon icon="carbon:thumbs-up-filled" style="color: green;" width="36" height="36"></iconify-icon>&emsp;<b>Things We Like</b></h4>
        <ul class="ul">

             <% foreach (string item in MyArray)
{ %>
    <li><p class="p1"><%= item %></p></li>
<% } %>
         </ul>
    </div>
    <div class="col bad">
     <h4 class="h4"><iconify-icon icon="carbon:thumbs-down-filled" style="color: red;" width="36" height="36"></iconify-icon>&emsp;<b>Things We Don't Like</b></h4>
        <ul class="ul">
             <% foreach (string item1 in MyArray1)
{ %>
    <li><p class="p1"><%= item1 %></p></li>
<% } %>
          
        </ul>
    </div>
  </div>
</div>

        <div class="container mt-5">
  <!-- Content here -->
            <h3>Specification of <asp:Label ID="spec" runat="server" Text="Label"></asp:Label></h3>
       <div class="container">
        <div class="row mt-3">
        <div class="col">
            <p class="ps">City Milage</p>
            <hr color="black"/>
            <p class="ps">Engine Displacement (cc)</p>
            <hr color="black"/>
            <p class="ps">Max Power (bhp@rpm)</p>
            <hr color="black"/>
            <p class="ps">Seating Capacity</p>
            <hr color="black"/>
            <p class="ps">Fuel Tank Capacity</p>
            <hr color="black"/>
            <p class="ps">Ground Clearance Unladen</p>
            <hr color="black"/>
            <p class="ps">Fuel Type</p>
            <hr color="black"/>
            <p class="ps">No. of cylinder</p>
            <hr color="black"/>
            <p class="ps">Max Torque (nm@rpm)</p>
            <hr color="black"/>
            <p class="ps">TransmissionType</p>
            <hr color="black"/>
            <p class="ps">Body Type</p>
            <hr color="black"/>
            <%--<p class="ps">Ground Clearance Unladen</p>--%>
            <%--<hr color="black" />--%>
        </div>

           
        <div class="col">
            <p class="ps"><asp:Label ID="cm" runat="server" Text="City Milage"></asp:Label></p>
            <hr color="black"/>
            <p class="ps"><asp:Label ID="ed" runat="server" Text="ed"></asp:Label></p>
            <hr color="black"/>
            <p class="ps"><asp:Label ID="mp" runat="server" Text="Max Power"></asp:Label></p>
            <hr color="black"/>
            <p class="ps"><asp:Label ID="sit" runat="server" Text="Seating Capacity"></asp:Label></p>
            <hr color="black"/>
            <p class="ps"><asp:Label ID="ftc" runat="server" Text="Fule Tank Capacity"></asp:Label></p>
            <hr color="black"/>
            <p class="ps"><asp:Label ID="GC" runat="server" Text="Ground Clearance"></asp:Label></p>
            <hr color="black"/>
            <p class="ps"><asp:Label ID="Ftype" runat="server" Text="Fule Type"></asp:Label></p>
            <hr color="black"/>
            <p class="ps"><asp:Label ID="NC" runat="server" Text="ed"></asp:Label></p>
            <hr color="black"/>
            <p class="ps"><asp:Label ID="Max_T" runat="server" Text="ed"></asp:Label></p>
            <hr color="black"/>
            <p class="ps"><asp:Label ID="TT" runat="server" Text="ed"></asp:Label></p>
            <hr color="black"/>
            <p class="ps"><asp:Label ID="bt" runat="server" Text="ed"></asp:Label></p>
            <hr color="black"/>
           <%-- <p class="ps">SUV</p>
            <hr color="black"/>--%>
        </div>
        </div>
        </div>
        </div>

    <%--For Review--%>
    <div class="container">
        <h2><asp:Label ID="Review_CarName" runat="server" Text="Label"></asp:Label> User Reviews</h2>
        <table><tr><td><iconify-icon icon="material-symbols:star" style="color: #ffa236;" width="50" height="50"></iconify-icon></td><td><h3><%= Averages %></h3></td><td><p class="p-4 rv">Based on <br /><asp:Label ID="NOF_REVIEW" runat="server" Text="Label"></asp:Label> User reviews</p></td><td><button type="button" class="btn btn-danger review" onclick="location.href='CarTourReview.aspx?car=<%=Request.QueryString["CAR"] %>'">Write Review</button></td></tr></table>
        <%--Slider--%>
        <div id="carouselExample" class="carousel slide">
  <div class="carousel-inner" id="revs">

      <%--Review START--%>
        <%for (int i1 = 0; i1 < review.Length; i1++) { %>
    <div class="carousel-item active">
     <%-- <img src="..." class="d-block w-100" alt="...">--%>
     <div class="Slider">

           <div class="grid">
               <p class="star_p"><span class="iconify" data-icon="material-symbols:star" style="color: #ffa236;" data-width="35" data-height="35"></span><sub><%=rating1[i1] %></sub></p>
               <h4><%= title1[i1] %></h4>
               <p><%=review[i1] %></p>
               <p class="pname">By <%=fname1[i1] %> <%= lname1[i1] %></p>
               <p class="ptime">On: <%=time2[i1] %></p>
           </div>
       </div>
    </div>
      
      <%} %>

      <%--Review END--%>
  
  </div>
  <button class="carousel-control-prev" id="nextbtn" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" id="prebtn" data-bs-target="#carouselExample" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

        <%--Slider End--%>
    </div>
    <%--For Posting A Comment--%>
    <div class="container border border-secondary p-3 mb-3 rounded">
        <!-- Content here -->
        <h6 class="m-2">Write Your Comment on CarName</h6>
        <form class="d-flex" id="form1" runat="server">
            <div class="input-group input-group-lg ">
                <%--<span class="input-group-text" id="inputGroup-sizing-lg">Large</span>--%>
                <asp:TextBox ID="COMM" runat="server" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" placeholder="Write A Comment..." autocomplete="off"></asp:TextBox>
                <asp:Button ID="post" runat="server" CssClass="btn btn-danger" Text="Post Comment" OnClick="COMMENT"/>
            </div>

        </form>
    </div> 
    <%--For Review--%>
    <div class="container">
        

        <%for (int j = 0; j < fname.Length; j++) { %>

         <div class="post">
           <%--<p class="comment"> <iconify-icon icon="mdi:user-circle" style="color: #f0f7e9;" width="40" height="40"></iconify-icon>&emsp;<sup>Dhruv Patel</sup></p>--%>
            <table class="tab_Com">
                <tr><td class="come"> <iconify-icon icon="mdi:user-circle" style="color: #f0f7e9;" width="40" height="40"></iconify-icon></td><td><sup><%=fname[j] %></sup></td></tr>
            </table>
               <table><p class="time"><% = time1[j] %></p></table>
            <table>
                <tr><td><p><%=commnet[j] %></p></td></tr>
            </table>
            <hr/>
        </div>
        <%} %>
    </div>

<%--@*PRICE SECTION END*@--%>
<div class="container text-center d-sm-none">
    <div class="row">
        <div class="col-sm "><iconify-icon icon="mdi:engine-outline" style="color:dimgray" width="40" height="40"><br></iconify-icon><br />Engine</div>
        <div class="col-sm"><asp:Label ID="eng" runat="server" Text="Engine"></asp:Label></div>
        <div class="col-sm"><iconify-icon icon="material-symbols:airline-seat-recline-extra-sharp" style="color:dimgray" width="40" height="40"></iconify-icon><br />Seating Capacity</</div>
        <div class="col-sm"><asp:Label ID="set" runat="server" Text="setting"></asp:Label></div>
        <div class="col-sm"><iconify-icon icon="mdi:petrol-pump-outline" width="45" height="45" style="color:dimgray"></iconify-icon><br />Fuel</div>
        <div class="col-sm"><asp:Label ID="ful" runat="server" Text="Engine"></asp:Label></div>

    </div>
    <div class="row mt-3 ">
        <div class="col-sm"><iconify-icon icon="ic:baseline-speed" width="45" height="45" style="color:dimgray"></iconify-icon><br />Mileage</div>
        <div class="col-sm"><asp:Label ID="mil" runat="server" Text="Milage"></asp:Label></div>
        <div class="col-sm"><iconify-icon icon="mdi:thunder-outline" style="color:dimgray" width="40" height="40"></iconify-icon><br />BHP</div>
        <div class="col-sm"><asp:Label ID="bhhp" runat="server" Text="BHP"></asp:Label></div>
        <div class="col-sm"><img src="images/chassis%20(1).png"/><br />Drive Type</div>
        <div class="col-sm"><asp:Label ID="type" runat="server" Text="Drive Type"></asp:Label></div>
    </div>
    <hr size="5" />


    <h2 class="text-center mt-4 mb-">Mahindra Thar Price</h2>
    <p>The price of Mahindra Thar starts at Rs. 9.99 Lakh and goes upto Rs. 16.49 Lakh. Mahindra Thar is offered in 13 variants - the base model of Thar is AX Opt 4-Str Hard Top Diesel RWD and the top variant Mahindra Thar LX 4-Str Hard Top Diesel AT which comes at a price tag of Rs. 16.49 Lakh.</p>
</div>
   
 <script>
     for (let i = 0; i < 5; i++) {
         document.getElementById("nextbtn").click();
     }
   
 </script>
</body>
</html>


