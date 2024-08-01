<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Vehicle_Review.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact</title>
    <script src="https://code.iconify.design/3/3.1.0/iconify.min.js"></script>
    <style>
           *{
           margin:0;
           padding:0;
           box-sizing:border-box;
       }
               .nav{
           width:100%;
           height:50px;
           /*background-color:rgb(100,70,100,0.2);*/
           border-bottom:1px solid white;
           position:relative;
           animation:navanim;
           animation-duration:1s;
           
       }
                   ul{
           list-style:none;
           display:flex;
           justify-content:center;
       }
       li{
           padding:15px;
           color:white;
           font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
       }
        a{
             text-decoration:none;
             color:black;
             font-size:22px;
         }
         a:hover{
             text-decoration:none;
             /*color:rgba(202,240,250,255);*/   
             font-size:22px;
             color: red;
         }
          @keyframes navanim{
           0%{top:-100px;opacity:20%;}
           25%{top:-50px;opacity:40%;}
           50%{top:-25pc;opacity:80%;}
           100%{top:0px;opacity:100%;}
       }
          body{
              background:white;
          }
          .container{
              width:100%;
              height:100%;
          }
          .left{
              width:40%;
              height:100%;
              float:left;
              /*display:flex;*/
              justify-content:center;
              align-content:center;
              
          }
          .right{
              width:60%;
              height:100%;
              float:right;
          }
          .h1{
              font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
              margin-top:100px;
              font-size:58px;
          }
          .h3{
              margin-top:20px;
              display:contents;
              display:block;    
              text-align:left;
              margin-left:20px;
              color:gray;
              font-size:18px;
              line-height:1.2em;

  
          }
          .hh3{
              margin-top:30px;
              font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
              text-align:left;
              margin-left:200px;
          }
          .tb{
              width:550px;
              height:55px;
              margin-left:150px;
              margin-top:50px;
              
          }
          .tag{
              margin-top:20px;
          }
          .tbm{
              height:181px;
          }
          ::placeholder{
              font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
              font-size:18px;
              color:black;
          }
          #Button1{
              width:151px;
              height:51px;
              background:#007BFF;
              color:white;
              margin-top:20px;
              margin-left:150px;
              outline:none;
              border:none;
          }
            #Button1:hover{
              width:151px;
              height:51px;
              background:white;
              color:#007BFF;
              border:2px solid #007BFF;
              margin-top:20px;
              margin-left:150px;
              outline:none;
             
          }

          /*https://preview.colorlib.com/theme/bootstrap/contact-form-12/*/
    </style>
</head>
<body>
        <div>
             <div class="nav">
                   <ul>
                       <li><a href="CarTour.aspx">Home</a></li>
                       <li><a href="CarTour.aspx#call">Cars</a></li>
                       <li><a href="#">About</a></li>
                       <li><a href="Contact.aspx">Contact Us</a></li>
                       
                   </ul>
               </div>
        </div>
    <div class="container">
        <div class="left">
            <Center>
            <h1 class="h1">Contact Us</h1>
            <p class="h3">Welcome to our car review system! We are passionate about cars and providing unbiased, comprehensive reviews for our readers.Our team of experienced car enthusiasts comes from diverse backgrounds and brings a wealth of knowledge to our reviews. We test drive each car thoroughly, paying close attention to the details that matter most to our readers - safety, performance, comfort, and reliability.</p>
            <h3 class="hh3"><span class="iconify" data-icon="ic:round-email" data-width="20" data-height="20"></span> supportcartour@gmail.com</h3>
            <h3 class="hh3"><span class="iconify" data-icon="material-symbols:call" data-width="20" data-height="20"></span> +91 1800-202-9898</h3>

                </Center>
        </div>
        <div class="right">
    <form id="form1" runat="server" onsubmit="validate()">
        <%--<span class="tag">Name</span>--%>
        <asp:TextBox ID="TextBox1" CssClass="tb" runat="server" placeholder="Name" ></asp:TextBox>
        <%--<span class="tag">Email</span>--%>
        <asp:TextBox ID="TextBox2" CssClass="tb" runat="server" placeholder="Email" ></asp:TextBox>
        <%--<span class="tag">Message</span>--%>
        <asp:TextBox ID="TextBox3" CssClass="tb tbm" TextMode="MultiLine" runat="server" placeholder="Messaage"></asp:TextBox><br />

        <asp:Button ID="Button1" runat="server" Text="Send Message" OnClick="SubMit" />
    </form>
            </div>
        </div>
    <script>
        function validate() {
            var textBox1 = document.getElementById("TextBox1").value;
            var textBox2 = document.getElementById("TextBox2").value;
            var textBox3 = document.getElementById("TextBox3").value;

            if (textBox1 == "" || textBox2 == "" || textBox3 == "") {
                alert("Please fill in all fields.");
                return false;
            }

            // Add any additional validation rules here

            return true;
        }
    </script>
</body>
</html>
