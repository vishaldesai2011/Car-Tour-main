<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CarTour.aspx.cs" Inherits="Vehicle_Review.CarTour" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
      <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
      <meta name="viewport" content="width=device-width, initial-scale=1"/>
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1"/>
      <meta name="viewport" content="initial-scale=1, maximum-scale=1"/>
      <!-- site metas -->
      <meta name="keywords" content=""/>
      <meta name="description" content=""/>
      <meta name="author" content=""/>
      <!-- bootstrap css1 -->
      <link rel="stylesheet" type="text/css" href="css1/bootstrap.min.css"/>
      <!-- style css1 -->
      <link rel="stylesheet" type="text/css" href="css1/style.css"/>
      <!-- Responsive-->
      <link rel="stylesheet" href="css1/responsive.css"/>
      <!-- fevicon -->
      <link rel="icon" href="images1/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css1/jquery.mCustomScrollbar.min.css"/>
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css1/font-awesome.css"/>
      <!-- owl stylesheets --> 
      <link href="https://fonts.googleapis.com/css1?family=Poppins:400,700|Raleway:400,700,800&display=swap" rel="stylesheet"/>
      <link rel="stylesheet" href="css1/owl.carousel.min.css"/>
      <link rel="stylesoeet" href="css1/owl.theme.default.min.css"/>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen"/>
    <%--<link href="CSS/footer.css" rel="stylesheet" />--%>
    <title>CarTour</title>
    <style>
        * { box-sizing: border-box; }
body {
  font: 16px Arial;
}
.autocomplete {
  /*the container must be positioned relative:*/
  position: relative;
  display: inline-block;
}
input {
  border: 1px solid transparent;
  background-color: #f1f1f1;
  padding: 10px;
  font-size: 16px;
}
input[type=text] {
  background-color: #f1f1f1;
  width: 100%;
}
input[type=submit] {
  background-color: DodgerBlue;
  color: #fff;
}
.autocomplete-items {
  position: absolute;
  border: 1px solid #d4d4d4;
  border-bottom: none;
  border-top: none;
  z-index: 99;
  /*position the autocomplete items to be the same width as the container:*/
  top: 100%;
  left: 0;
  right: 0;
}
.autocomplete-items div {
  padding: 10px;
  cursor: pointer;
  background-color: #fff;
  border-bottom: 1px solid #d4d4d4;
}
.autocomplete-items div:hover {
  /*when hovering an item:*/
  background-color: #e9e9e9;
}
.autocomplete-active {
  /*when navigating through the items using the arrow keys:*/
  background-color: DodgerBlue !important;
  color: #ffffff;
}
#Label1{
    display:none;
}
.h2{
    font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    color:midnightblue;
}
.grid{
    width:250px;
    height:220px;
    /*background-color:black;*/
    /*margin-left:40px;*/
    /*margin-top:20px;*/

}
.container{
    /*text-align:center;*/
    margin-top:50px;
    display:flex;
    flex-direction:row;
    flex-wrap:wrap;
    row-gap:80px;
    column-gap:30px;

}
.colo{
    color:palevioletred;
}
.colo:hover{
    color:mediumpurple;
}
@media screen and (max-width: 480px) {
  .container {
    padding-left:60px;
  }
}
.img_logo{
    width:250px;
    height:200px;
}
.name{
    color:black;
    font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
}
.hh1{
    font-size:30px;
    font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
    /*padding-top:50px;*/
    margin-top:50px;
    padding:30px;
    border:3px solid gray;
    background-color:white;
    color:gray;
}
    </style>
    
</head>
<body>
    

      <!-- header section start -->
      <div class="header_section header_bg">
         <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a href="cartour.aspx" class="logo"><h2 class="h2">CarTour</h2></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" >
               <ul class="navbar-nav mr-auto">
                  <li class="nav-item active">
                     <a class="nav-link" href="cartour.aspx">Home</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link" href="About_Us.aspx">About</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link" href="#call">Cars</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link" href="contact.aspx">Contact Us</a>
                  </li>
                   <li class="nav-item">
                     <a class="nav-link" href="SupportUs.aspx"><font class="colo">Support Us</font></a>
                  </li>
               </ul>
               <form class="form-inline my-2 my-lg-0">
                  <div class="login_menu">
                     <ul>
                        <li><a href="login.aspx"><asp:Label runat="server" Text="" ID="lblusername"></asp:Label></a></li>
                        <li><a href="#"><img src="images1/search-icon.png"/></a></li>
                     </ul>
                  </div>
                  <div></div>
               </form>
            </div>
            <div id="main">
               <span style="font-size:36px;cursor:pointer; color: #fff" onclick="openNav()"><%--<img src="images1/toggle-icon.png" style="height: 30px;"/>--%></span>
            </div>
         </nav>
         <!-- banner section start -->
         <div class="banner_section layout_padding">
            <div id="main_slider" class="carousel slide" data-ride="carousel">
               <div class="carousel-inner">
                  <div class="carousel-item active">
                     <div class="container">
                        <div class="row">
                           <div class="col-md-7">
                              <div class="best_text">Best</div>
                              <div class="image_1">
                                  <img id="IMG" src="images/rr2.png" /></div>
                           </div>
                           <div class="col-md-5">
                              <h1 class="banner_taital">FIND THE RIGHT CAR</h1>
                            
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- banner section end -->
      </div>

   
    <form id="form1" runat="server">
        <Center>
            
             <div class="autocomplete" style="width:300px;">
                 <asp:TextBox ID="myInput" CssClass="serch" runat="server" autocomplete="off" placeholder="Type To Select Car Name"></asp:TextBox>
                 </div>
          <asp:Button ID="Btn1" runat="server" Text="Search" OnClick="Search1"/></Center>
        <%--for get Car in search Suggestion--%>
    <asp:Label ID="Label1" runat="server" Text="Label" ></asp:Label>
     
    </form>
    
    <center><h1 id="call" class="hh1">All Brands</h1></center>
    
    <%--Company Logo And Name--%>
    <div class="container">
        <% for(int i=0; i < MyCompany.Length ;i++)
            { %>
      <%-- <%foreach (String img in MyCompanyLogo)
            {  %>--%>
        <div class="grid">
     
           <img class="img_logo" src="<%=MyCompanyLogo[i]%>" onclick="window.location.href='https://localhost:44359/CarTourCompany.aspx?id=<%=MyCompany[i]%>'" onmouseover="this.style.cursor='pointer'" />
           <center><h3 class="name"><%=MyCompany[i]%></h3></center>
       </div>

        <%--<% }%>--%>
       

<% } %>
      

        <%-- <div class="grid">
            <h1>Hii</h1>
       </div>

         <div class="grid">
            <h1>Hii</h1>
       </div> 
        
        <div class="grid">
            <h1>Hii</h1>
       </div>

         <div class="grid">
            <h1>Hii</h1>
       </div>

         <div class="grid">
            <h1>Hii</h1>
       </div>

         <div class="grid">
            <h1>Hii</h1>
       </div>--%>

    </div>

   <script>
       

       var arr = document.getElementById('Label1').textContent;
       let newStr = arr.replace(/\s+/g, '');
       const myArray = newStr.split(",");
      
       
       function autocomplete(inp, arr) {
           /*the autocomplete function takes two arguments,
       the text field element and an array of possible autocompleted values:*/
           var currentFocus;
           /*execute a function when someone writes in the text field:*/
           inp.addEventListener("input", function (e) {
               var a, b, i, val = this.value;
               /*close any already open lists of autocompleted values*/
               closeAllLists();
               if (!val) { return false; }
               currentFocus = -1;
               /*create a DIV element that will contain the items (values):*/
               a = document.createElement("DIV");
               a.setAttribute("id", this.id + "autocomplete-list");
               a.setAttribute("class", "autocomplete-items");
               /*append the DIV element as a child of the autocomplete container:*/
               this.parentNode.appendChild(a);
               /*for each item in the array...*/
               for (i = 0; i < arr.length; i++) {
                   /*check if the item starts with the same letters as the text field value:*/
                   if (arr[i].substr(0, val.length).toUpperCase() == val.toUpperCase()) {
                       /*create a DIV element for each matching element:*/
                       b = document.createElement("DIV");
                       /*make the matching letters bold:*/
                       b.innerHTML = "<strong>" + arr[i].substr(0, val.length) + "</strong>";
                       b.innerHTML += arr[i].substr(val.length);
                       /*insert a input field that will hold the current array item's value:*/
                       b.innerHTML += "<input type='hidden' value='" + arr[i] + "'>";
                       /*execute a function when someone clicks on the item value (DIV element):*/
                       b.addEventListener("click", function (e) {
                           /*insert the value for the autocomplete text field:*/
                           inp.value = this.getElementsByTagName("input")[0].value;
                           /*close the list of autocompleted values,
                           (or any other open lists of autocompleted values:*/
                           closeAllLists();
                       });
                       a.appendChild(b);
                   }
               }
           });
           /*execute a function presses a key on the keyboard:*/
           inp.addEventListener("keydown", function (e) {
               var x = document.getElementById(this.id + "autocomplete-list");
               if (x) x = x.getElementsByTagName("div");
               if (e.keyCode == 40) {
                   /*If the arrow DOWN key is pressed,
                   increase the currentFocus variable:*/
                   currentFocus++;
                   /*and and make the current item more visible:*/
                   addActive(x);
               } else if (e.keyCode == 38) { //up
                   /*If the arrow UP key is pressed,
                   decrease the currentFocus variable:*/
                   currentFocus--;
                   /*and and make the current item more visible:*/
                   addActive(x);
               } else if (e.keyCode == 13) {
                   /*If the ENTER key is pressed, prevent the form from being submitted,*/
                   e.preventDefault();
                   if (currentFocus > -1) {
                       /*and simulate a click on the "active" item:*/
                       if (x) x[currentFocus].click();
                   }
               }
           });
           function addActive(x) {
               /*a function to classify an item as "active":*/
               if (!x) return false;
               /*start by removing the "active" class on all items:*/
               removeActive(x);
               if (currentFocus >= x.length) currentFocus = 0;
               if (currentFocus < 0) currentFocus = (x.length - 1);
               /*add class "autocomplete-active":*/
               x[currentFocus].classList.add("autocomplete-active");
           }
           function removeActive(x) {
               /*a function to remove the "active" class from all autocomplete items:*/
               for (var i = 0; i < x.length; i++) {
                   x[i].classList.remove("autocomplete-active");
               }
           }
           function closeAllLists(elmnt) {
               /*close all autocomplete lists in the document,
           except the one passed as an argument:*/
               var x = document.getElementsByClassName("autocomplete-items");
               for (var i = 0; i < x.length; i++) {
                   if (elmnt != x[i] && elmnt != inp) {
                       x[i].parentNode.removeChild(x[i]);
                   }
               }
           }
           /*execute a function when someone clicks in the document:*/
           document.addEventListener("click", function (e) {
               closeAllLists(e.target);
           });
       }

       autocomplete(document.getElementById("myInput"), myArray);



       function mylinkfunction(e) {

           window.location.href = "#call";

           /* need to stop the form sending of the form
           
            UPDATE as comment: This may not be exactly correct syntax 
            for stopping a form , look up preventing form submission */

           e.preventDefault();
           e.stopPropagation();

       }
   </script>


   
</body>
</html>
