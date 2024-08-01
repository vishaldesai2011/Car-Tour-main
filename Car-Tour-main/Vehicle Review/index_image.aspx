<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index_image.aspx.cs" Inherits="Vehicle_Review.index_image" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>

     <script src="Scripts/bootstrap.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
      <meta name="viewport" content="initial-scale=1, maximum-scale=1"/>

    <title>CarTour</title>
    <style>
        .background{
            background-color:aliceblue;
        }
        .font{
            font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
            color:#1C89FF;
        }
    </style>
</head>
<body>

    <nav class="nav background">
  <a class="nav-link active" href="index.aspx?CAR=<%=URLL %>"><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 24 24"><path fill="#1c89ff" d="m12 20l-8-8l8-8l1.425 1.4l-5.6 5.6H20v2H7.825l5.6 5.6Z"/></svg></a>
  <a class="nav-link" href="CarTour.aspx">Home</a>
  <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true"></a>
</nav>


    <div class="container">
        <h2 class="text-center font">Interior Images</h2>
  <div id="carouselExample" class="carousel slide">
  <div class="carousel-inner">
    <div class="carousel-item active">
        <asp:Image ID="Image11" runat="server" CssClass="d-block w-100" alt="Image"/>      
    </div>

    <div class="carousel-item">
        <asp:Image ID="Image12" runat="server" CssClass="d-block w-100" alt="Image"/>      
    </div>
    <div class="carousel-item">
        <asp:Image ID="Image13" runat="server" CssClass="d-block w-100" alt="Image"/>      
    </div>

      <div class="carousel-item">
        <asp:Image ID="Image14" runat="server" CssClass="d-block w-100" alt="Image"/>      
    </div>

      <div class="carousel-item">
        <asp:Image ID="Image15" runat="server" CssClass="d-block w-100" alt="Image"/>      
    </div>
      <div class="carousel-item">
        <asp:Image ID="Image16" runat="server" CssClass="d-block w-100" alt="Image"/>      
    </div>

      <div class="carousel-item">
        <asp:Image ID="Image17" runat="server" CssClass="d-block w-100" alt="Image"/>      
    </div>

      <div class="carousel-item">
        <asp:Image ID="Image18" runat="server" CssClass="d-block w-100" alt="Image"/>      
    </div>

      <div class="carousel-item">
        <asp:Image ID="Image19" runat="server" CssClass="d-block w-100" alt="Image"/>      
    </div>

      <div class="carousel-item">
        <asp:Image ID="Image20" runat="server" CssClass="d-block w-100" alt="Image"/>      
    </div>


  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>


        <%--Exterior Image--%>

              <h2 class="text-center font">Exterior Images</h2>
    <div id="carouselExampleControlsNoTouching1" class="carousel slide" data-bs-touch="false">
  <div class="carousel-inner">
    <div class="carousel-item active">
     <%-- <img src="images/rr3.jpg" class="d-block w-100" alt="Image"/>--%>
        <asp:Image ID="Image1" runat="server" CssClass="d-block w-100" alt="Image"/>
    </div>
    <div class="carousel-item">
        <asp:Image ID="Image2" runat="server" CssClass="d-block w-100" alt="Image"/>      
    </div>
    <div class="carousel-item">
        <asp:Image ID="Image3" runat="server" CssClass="d-block w-100" alt="Image"/>
    </div>
        <div class="carousel-item">
       <asp:Image ID="Image4" runat="server" CssClass="d-block w-100" alt="Image"/>
    </div>
        <div class="carousel-item">
       <asp:Image ID="Image5" runat="server" CssClass="d-block w-100" alt="Image"/>      
    </div>
        <div class="carousel-item">
       <asp:Image ID="Image6" runat="server" CssClass="d-block w-100" alt="Image"/>
    </div>
        <div class="carousel-item">
       <asp:Image ID="Image7" runat="server" CssClass="d-block w-100" alt="Image"/>
    </div>
        <div class="carousel-item">
       <asp:Image ID="Image8" runat="server" CssClass="d-block w-100" alt="Image"/>
    </div>
        <div class="carousel-item">
        <asp:Image ID="Image9" runat="server" CssClass="d-block w-100" alt="Image" />
    </div>
        <div class="carousel-item">
        <asp:Image ID="Image10" runat="server" CssClass="d-block w-100" alt="Image"/>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControlsNoTouching1" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControlsNoTouching1" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

    </div>
   <%-- <form id="form1" runat="server">
        <div>
        </div>
    </form>--%>
</body>
</html>
