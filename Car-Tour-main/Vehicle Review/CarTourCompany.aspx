<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CarTourCompany.aspx.cs" Inherits="Vehicle_Review.CarTourCompany" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CarTour</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <script src="Scripts/bootstrap.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="https://code.iconify.design/iconify-icon/1.0.3/iconify-icon.min.js"></script>
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
    .marginleft{
              margin-left:8px;
        }
    .grid11{
    width:370px;
    height:370px;
    background-color:black;
    background-color:white;
    border:2px solid #D3D3D3;
    border-radius:10px;
    position:relative;

    }
    .con11{
    margin-left:20px;
    margin-top:50px;
    display:flex;
    flex-direction:row;
    flex-wrap:wrap;
    row-gap:80px;
    column-gap:30px;
    }
    .imgcar{
        width:350px;
        height:200px;
        float:left;
    }
    .carname{
        font-size:20px;
        color:#1A1110;  
        font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        margin-left:10px;
        line-height:0.2em;
    }
    .carmil{
        color:dimgray;
        margin-left:10px;
    }
    .carprice{
        line-height:0px;
        font-weight:600;
        color:#1A1110;          
        margin-left:10px;
    }
    .ratting{
        position:absolute;
        top:10px;
        float:left;
        left:230px;
        width:110px;
        height:20px;
    }
    .rat{
        font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        font-size:12px;
        color:#00AFA0;
        /*border:1px solid gray;*/
        text-align:center;
    }
    h3{
        margin-top:50px;
    }
    .btn1{
      background-color:#E53012;
      border:none;
      height:40px;
      color:white;
      width:90%;
  }
     .btn1:hover{
    border:1px solid #E53012;
    background-color:white;
    color:#E53012;
  }
    @media screen and (max-width: 380px) {
 
  .grid11{
    width:300px;
    height:370px;
    margin-left:20px;

    }
  .imgcar{
    width:300px;
    height:200px;
  }
  .ratting{
      left:180px;
  }


  
}
    </style>
</head>
<body>
         <nav class="navbar navbar-expand-lg navColor" data-bs-theme="dark">
        <div class="container-fluid">
            <a class="navbar-brand text-white" href="#">CarTour</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active text-white" aria-current="page" href="#">Price</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="#">Image</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-white" href="#">Milage</a>
                    </li>
                                        <li class="nav-item">
                        <a class="nav-link text-white hov" href="#">Colours</a>
                    </li>
                        <li class="nav-item">
                        <a class="nav-link text-white" href="#">Expert Reviews</a>
                    </li>
                        <li class="nav-item">
                        <a class="nav-link text-white" href="#">Specs</a>
                    </li>                 
                </ul>
                <form class="d-flex" id="form1" runat="server">
                   <%-- <asp:TextBox ID="Search" placeholder="Search" CssClass="form-control me-2" runat="server"></asp:TextBox>
                    <button class="btn btn-outline-success" type="submit">Search</button>--%>
                 <%--   <button type="button" class="btn btn-outline-danger marginleft" onclick="location.href='https://localhost:44359/login.aspx'" data-toggle="modal" data-target="#myModal">Login</button>
                    <button type="button" class="btn btn-outline-danger marginleft" onclick="location.href='https://localhost:44359/Signup.aspx'" data-toggle="modal" data-target="#myModal">Signup</button>--%>
                </form>
            </div>
        </div>
    </nav>  
  <center><h3><asp:Label ID="COMP" runat="server" Text="Label"></asp:Label> Car Models</h3> </center>
<div class="con11">
    <%for(int i =0; i<PRICE.Length;i++)
        {

%>
        <div class="grid11">
            <img class="imgcar" src="<%=Img[i] %>" onclick="window.location.href='https://localhost:44359/index.aspx?CAR=<%=ID[i] %>'" onmouseover="this.style.cursor='pointer'"/>
            <p class="carname"><b><%=CarNAME[i] %></b></p>
            <p class="carmil"><%=MILAGE[i] %> </p>
            <p class="carprice">&#8377; <%=PRICE[i] %> <font color="#696969">&emsp;onwards</font></p>
            <p class="carmil">Avg. Ex-Showroom price</p>
            <center><button class="btn1" onclick="window.location.href='index.aspx?CAR=<%=ID[i]%>'">View Car Specs</button></center>
            <div class="ratting">
            <p class="rat"><iconify-icon icon="material-symbols:star" style="color: #00afa0;" width="18" height="18"></iconify-icon>5/<font color="gray">5.0 | Ratting</font> </p>
            </div>
            </div>
   <% }%>

     

</div>


</body>
</html>
