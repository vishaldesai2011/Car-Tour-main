<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Layout.aspx.cs" Inherits="Vehicle_Review.Layout" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.js"></script>   
    <script src="https://code.iconify.design/iconify-icon/1.0.2/iconify-icon.min.js"></script>
    <title>Home</title>
     <style>
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
    </style>
</head>
<body>
  <%-- <div class="container-fluid position-relative text-center margin d-none d-sm-block">
        <h2 class="position-absolute top-0 start-50 translate-middle">Company Name and Logo</h2>
    </div>

    
    <ul class="nav ">
  <li class="nav-item">
    <a class="nav-link active" href="#">Active</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Link</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Link</a>
  </li>
  <li class="nav-item">
    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
  </li>
</ul>
         --%>

     <nav class="navbar navbar-expand-lg navColor" data-bs-theme="dark">
        <div class="container-fluid">
            <a class="navbar-brand text-white" href="#">CarName</a>
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
                        <a class="nav-link text-white" href="#">Colours</a>
                    </li>
                        <li class="nav-item">
                        <a class="nav-link text-white" href="#">Expert Reviews</a>
                    </li
                        <li class="nav-item">
                        <a class="nav-link text-white" href="#">Specs</a>
                    </li>
                   
                       <%-- <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">Milage</a></li>
                            <li><a class="dropdown-item" href="#">Colours</a></li>
                            <li><a class="dropdown-item" href="#">Expert Reviews</a></li>
                           
                        </ul>--%>
                    
                    
                </ul>
                <form  class="d-flex" id="form1" runat="server">
                    <asp:TextBox ID="Search" placeholder="Search" CssClass="form-control me-2" runat="server"></asp:TextBox>
                    <button class="btn btn-outline-success" type="submit">Search</button>
                    <button type="button" class="btn btn-outline-danger marginleft">Login</button>
                    <button type="button" class="btn btn-outline-danger marginleft" data-toggle="modal" data-target="#myModal">signup</button>
                </form>
            </div>
        </div>
    </nav>

  <div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Modal Header</h4>
      </div>
      <div class="modal-body">
        <p>Some text in the modal.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
  
    
</body>

</html>
