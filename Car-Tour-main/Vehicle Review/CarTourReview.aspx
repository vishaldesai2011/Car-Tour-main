<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CarTourReview.aspx.cs" Inherits="Vehicle_Review.CarTourReview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <script src="https://code.iconify.design/3/3.1.0/iconify.min.js"></script>
    <title>CarTour</title>
    <style>
        *{
            margin:0;
            padding:0;
        }
        ul{
            list-style:none;
        }
        .logo{
            margin-top:0px;
            width:110px;
            height:110px;
            
        }
        .nav{
            justify-content:center;
            align-items:center;
            display:flex;
            width:100%;
            height:60px;
            background-color:whitesmoke;
        }
        .heading{
            font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            font-size:25px;
            margin-top:50px;
            }
        .box{
            margin-top:50px;
            display:flex;
            width:400px;
            height:90px;
            box-shadow:1px 1px 3px 1px gray;
        }
        .left{
            width:30%;
            height:100%;
            float:left;
            /*background-color:lightpink;*/
        }
        .right{
            width:70%;
            height:100%;
            float:right;
            /*background-color:aquamarine;*/
            display:flex;
            /*justify-content:center;*/
            align-items:center;
            font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .imgs{
            width:100%;
            height:100%;
        }
        .font{
            margin-top:20px;
            font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .td1{
            width:100px;
            text-align:center;
            font-size:20px;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        }
        table{
            justify-content:center;
            display:flex;
            margin-top:50px;
        }
        .iconify{
          background-color:#fefe33;
          border-radius:55%;
        }
        tr{
        height:70px;    
        }
       .btn{
        margin-top:30px;
        width:190px;
        height:40px;
        background-color:#F75D34;
        color:white;
        border:none;
        border-radius:2px;
        font-size:17px; 
       }
       .rates{
            width:400px;
            height:150px;
            /*background-color:#F0F7E9;*/
            background-color:#DCDCDC;
            margin-top:70px;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            display:none;

       }
       .star1{
           margin-top:30px;
       }
       .cust{
           position:relative;
           top:20px;
           background:none;
       }
       #Label1{
           font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
           font-size:22px;
           line-height:0px;

       }
       .tt{
           width:500px;
           height:30px;
           margin-bottom:30px;
           margin-top:50px;
           font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
           font-size:18px;
       }
       .ml{
           font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
           font-size:18px;
           width:500px;
           height:100px;
       }
       ::placeholder{
           font-family:sans-serif;
           font-size:18px;
       }
       btn1{
           margin-bottom:20px;
       }
       .title{
           display:none;
       }
       .nones{
           display:none;
       }
       
      

    </style>
</head>
<body>
    <div class="nav">
        <ul>
           <li><img class="logo" src="images/logo3.png"/></li>

        </ul>
    </div>
    <div>
       <center><h1 class="heading">Rate & Review Hyundai i20 </h1></center> 
        <center>
             <div class="box">
                <div class="left">
                    <%--<img class="imgs" src="images/logo3.png" />--%>
          <asp:Image ID="Image1" CssClass="logo" runat="server" />

                </div>
                 <div class="right">
                     <h3><asp:Label ID="CARNAME" runat="server" Text=""></asp:Label></h3>
                 </div>
             </div>
            <h3 class="font">Rate your experience</h3>
        </center>
                 <form id="form1" runat="server">
                    <div class="Review">
                        <table id="tab">
                            <tr><td class="td1">Milage</td>
                    <td class="td2"><asp:RadioButton ID="RadioButton1" runat="server" GroupName="Milage" /> <span class="iconify" data-icon="clarity:sad-face-line" style="color: red;" data-width="50" data-height="50"></span></td>
                    <td class="td2"><asp:RadioButton ID="RadioButton2" runat="server" GroupName="Milage" /><span class="iconify" data-icon="cil:sad" style="color: red;" data-width="50" data-height="50"></span></td>
                    <td class="td2"><asp:RadioButton ID="RadioButton3" runat="server" GroupName="Milage" /><span class="iconify" data-icon="twemoji:expressionless-face" style="color: #ff726f;" data-width="45" data-height="45"></span></td>
                    <td class="td2"><asp:RadioButton ID="RadioButton4" runat="server" GroupName="Milage" /><span class="iconify" data-icon="mdi:emoticon-happy-outline" style="color: red;" data-width="50" data-height="50"></span></td>
                    <td class="td2"><asp:RadioButton ID="RadioButton5" runat="server" GroupName="Milage" /><span class="iconify" data-icon="bx:happy-heart-eyes" style="color: red;" data-width="50" data-height="50"></span></td>
                    </tr>
                    
                    <tr><td class="td1">Maintenance Cost</td>
                    <td class="td2"><asp:RadioButton ID="RadioButton6" runat="server" GroupName="MC" /> <span class="iconify" data-icon="clarity:sad-face-line" style="color: red;" data-width="50" data-height="50"></span></td>
                    <td class="td2"><asp:RadioButton ID="RadioButton7" runat="server" GroupName="MC" /><span class="iconify" data-icon="cil:sad" style="color: red;" data-width="50" data-height="50"></span></td>
                    <td class="td2"><asp:RadioButton ID="RadioButton8" runat="server" GroupName="MC" /><span class="iconify" data-icon="twemoji:expressionless-face" style="color: #ff726f;" data-width="45" data-height="45"></span></td>
                    <td class="td2"><asp:RadioButton ID="RadioButton9" runat="server" GroupName="MC" /><span class="iconify" data-icon="mdi:emoticon-happy-outline" style="color: red;" data-width="50" data-height="50"></span></td>
                    <td class="td2"><asp:RadioButton ID="RadioButton10" runat="server" GroupName="MC" /><span class="iconify" data-icon="bx:happy-heart-eyes" style="color: red;" data-width="50" data-height="50"></span></td>
                    </tr>

                    <tr><td class="td1">Safety</td>
                    <td class="td2"><asp:RadioButton ID="RadioButton11" runat="server" GroupName="Safety" /> <span class="iconify" data-icon="clarity:sad-face-line" style="color: red;" data-width="50" data-height="50"></span></td>
                    <td class="td2"><asp:RadioButton ID="RadioButton12" runat="server" GroupName="Safety" /><span class="iconify" data-icon="cil:sad" style="color: red;" data-width="50" data-height="50"></span></td>
                    <td class="td2"><asp:RadioButton ID="RadioButton13" runat="server" GroupName="Safety" /><span class="iconify" data-icon="twemoji:expressionless-face" style="color: #ff726f;" data-width="45" data-height="45"></span></td>
                    <td class="td2"><asp:RadioButton ID="RadioButton14" runat="server" GroupName="Safety" /><span class="iconify" data-icon="mdi:emoticon-happy-outline" style="color: red;" data-width="50" data-height="50"></span></td>
                    <td class="td2"><asp:RadioButton ID="RadioButton15" runat="server" GroupName="Safety" /><span class="iconify" data-icon="bx:happy-heart-eyes" style="color: red;" data-width="50" data-height="50"></span></td>
                    </tr>

                    <tr><td class="td1">Features and Styling</td>
                    <td class="td2"><asp:RadioButton ID="RadioButton16" runat="server" GroupName="fas" /> <span class="iconify" data-icon="clarity:sad-face-line" style="color: red;" data-width="50" data-height="50"></span></td>
                    <td class="td2"><asp:RadioButton ID="RadioButton17" runat="server" GroupName="fas" /><span class="iconify" data-icon="cil:sad" style="color: red;" data-width="50" data-height="50"></span></td>
                    <td class="td2"><asp:RadioButton ID="RadioButton18" runat="server" GroupName="fas" /><span class="iconify" data-icon="twemoji:expressionless-face" style="color: #ff726f;" data-width="45" data-height="45"></span></td>
                    <td class="td2"><asp:RadioButton ID="RadioButton19" runat="server" GroupName="fas" /><span class="iconify" data-icon="mdi:emoticon-happy-outline" style="color: red;" data-width="50" data-height="50"></span></td>
                    <td class="td2"><asp:RadioButton ID="RadioButton20" runat="server" GroupName="fas" /><span class="iconify" data-icon="bx:happy-heart-eyes" style="color: red;" data-width="50" data-height="50"></span></td>
                    </tr>

                    <tr><td class="td1">Comfort</td>
                    <td class="td2"><asp:RadioButton ID="RadioButton21" runat="server" GroupName="Comfort" /> <span class="iconify" data-icon="clarity:sad-face-line" style="color: red;" data-width="50" data-height="50"></span></td>
                    <td class="td2"><asp:RadioButton ID="RadioButton22" runat="server" GroupName="Comfort" /><span class="iconify" data-icon="cil:sad" style="color: red;" data-width="50" data-height="50"></span></td>
                    <td class="td2"><asp:RadioButton ID="RadioButton23" runat="server" GroupName="Comfort" /><span class="iconify" data-icon="twemoji:expressionless-face" style="color: #ff726f;" data-width="45" data-height="45"></span></td>
                    <td class="td2"><asp:RadioButton ID="RadioButton24" runat="server" GroupName="Comfort" /><span class="iconify" data-icon="mdi:emoticon-happy-outline" style="color: red;" data-width="50" data-height="50"></span></td>
                    <td class="td2"><asp:RadioButton ID="RadioButton25" runat="server" GroupName="Comfort" /><span class="iconify" data-icon="bx:happy-heart-eyes" style="color: red;" data-width="50" data-height="50"></span></td>
                    </tr>

                    <tr><td class="td1">Performance</td>
                    <td class="td2"><asp:RadioButton ID="RadioButton26" runat="server" GroupName="Performance" /> <span class="iconify" data-icon="clarity:sad-face-line" style="color: red;" data-width="50" data-height="50"></span></td>
                    <td class="td2"><asp:RadioButton ID="RadioButton27" runat="server" GroupName="Performance" /><span class="iconify" data-icon="cil:sad" style="color: red;" data-width="50" data-height="50"></span></td>
                    <td class="td2"><asp:RadioButton ID="RadioButton28" runat="server" GroupName="Performance" /><span class="iconify" data-icon="twemoji:expressionless-face" style="color: #ff726f;" data-width="45" data-height="45"></span></td>
                    <td class="td2"><asp:RadioButton ID="RadioButton29" runat="server" GroupName="Performance" /><span class="iconify" data-icon="mdi:emoticon-happy-outline" style="color: red;" data-width="50" data-height="50"></span></td>
                    <td class="td2"><asp:RadioButton ID="RadioButton30" runat="server" GroupName="Performance" /><span class="iconify" data-icon="bx:happy-heart-eyes" style="color: red;" data-width="50" data-height="50"></span></td>
                    </tr>
                    </table>
                    </div>
                     <asp:TextBox ID="Rating" CssClass="nones" runat="server"></asp:TextBox>
                     <asp:TextBox ID="Title" CssClass="nones" runat="server"></asp:TextBox>
                     <asp:TextBox ID="Description" CssClass="nones" runat="server"></asp:TextBox>
                     <asp:Button ID="Button3" CssClass="nones" runat="server" Text="Button" OnClick="Submit1" />
                </form>
                 
        <center> <button class="btn" id="btn1" onclick="clicked()">Click</button></center>

        <center>
        <div class="rates" id="rat">
            <center><h3 class="star1">Your overall rating</h3></center>
            <p><span class="iconify cust" data-icon="material-symbols:star" style="color: #fac74a;" data-width="60" data-height="60"></span>&emsp;<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></p>
        </div>
        <div class="title" id="tt">
       
             <input type="text" id="textbox2"  class="tt" autocomplete="off" placeholder="Title"/>
            <br/>
             <textarea type="Text" rows="4" cols="50" id="textbox1" class="ml" textmode="multiline" runat="server" autocomplete="off" placeholder="Share the details of your experience"/><br />
            <%--<button id="button1" cssclass="btn btn1" runat="server" text="submit" onclick="submit"/>--%>
            <button onclick="getData()" class="btn btn1" >Submit</button>
            
        </div>
        </center>
        <asp:Label ID="Label2" CssClass="nones" runat="server" Text=""></asp:Label>
        <asp:Label ID="Label3" CssClass="nones" runat="server" Text=""></asp:Label>



    </div>

    <script>
        
        var milage = 1;
        var mc = 1;
        var safty = 1;
        var fas = 1;
        var comfart = 1;
        var Performance = 1;
        var total;
        var rating1;

        function clicked() {
            milage_check();
            mc_check();
            Safety_check();
            fas_check();
            Comfort_check();
            Performance_check();
            calculate();
           

        }

        function milage_check() {
            const radio1 = document.getElementById('<%= RadioButton1.ClientID   %>');
            const radio2 = document.getElementById('<%= RadioButton2.ClientID %>');
            const radio3 = document.getElementById('<%= RadioButton3.ClientID %>');
            const radio4 = document.getElementById('<%= RadioButton4.ClientID %>');
            const radio5 = document.getElementById('<%= RadioButton5.ClientID %>');

            if (radio1.checked) {
                milage = 1;
            } else if (radio2.checked) {
                milage = 2;                
            } else if (radio3.checked) {
                milage = 3;
            } else if (radio4.checked) {
                milage = 4;
            } else if (radio5.checked) {
                milage = 5;
            }
            //alert(milage);
            
        }

        function mc_check() {
            const radio6 = document.getElementById('<%= RadioButton6.ClientID   %>');
            const radio7 = document.getElementById('<%= RadioButton7.ClientID %>');
            const radio8 = document.getElementById('<%= RadioButton8.ClientID %>');
            const radio9 = document.getElementById('<%= RadioButton9.ClientID %>');
            const radio10 = document.getElementById('<%= RadioButton10.ClientID %>');

            if (radio6.checked) {
                mc = 1;
            } else if (radio7.checked) {
                mc = 2;
            } else if (radio8.checked) {
                mc = 3;
            } else if (radio9.checked) {
                mc = 4;
            } else if (radio10.checked) {
                mc = 5;
            }
            //alert(mc);

        }

        function Safety_check() {
            const radio11 = document.getElementById('<%= RadioButton11.ClientID   %>');
             const radio12 = document.getElementById('<%= RadioButton12.ClientID %>');
             const radio13 = document.getElementById('<%= RadioButton13.ClientID %>');
            const radio14 = document.getElementById('<%= RadioButton14.ClientID %>');
             const radio15 = document.getElementById('<%= RadioButton15.ClientID %>');

            if (radio11.checked) {
                safty = 1;
             } else if (radio12.checked) {
                safty = 2;
             } else if (radio13.checked) {
                safty = 3;
             } else if (radio14.checked) {
                safty = 4;
             } else if (radio15.checked) {
                safty = 5;
             }
             //alert(safty);

        }

        function fas_check() {
            const radio16 = document.getElementById('<%= RadioButton16.ClientID %>');
            const radio17 = document.getElementById('<%= RadioButton17.ClientID %>');
            const radio18 = document.getElementById('<%= RadioButton18.ClientID %>');
            const radio19 = document.getElementById('<%= RadioButton19.ClientID %>');
            const radio20 = document.getElementById('<%= RadioButton20.ClientID %>');

                    if (radio16.checked) {
                        fas = 1;
                    } else if (radio17.checked) {
                        fas = 2;
                    } else if (radio18.checked) {
                        fas = 3;
                    } else if (radio19.checked) {
                        fas = 4;
                    } else if (radio20.checked) {
                        fas = 5;
                    }
                    //alert(fas);

        }

        function Comfort_check() {
            const radio21 = document.getElementById('<%= RadioButton21.ClientID %>');
            const radio22 = document.getElementById('<%= RadioButton22.ClientID %>');
            const radio23 = document.getElementById('<%= RadioButton23.ClientID %>');
            const radio24 = document.getElementById('<%= RadioButton24.ClientID %>');
            const radio25 = document.getElementById('<%= RadioButton25.ClientID %>');

              if (radio21.checked) {
                  comfart = 1;
              } else if (radio22.checked) {
                  comfart = 2;
              } else if (radio23.checked) {
                  comfart = 3;
              } else if (radio24.checked) {
                  comfart = 4;
              } else if (radio25.checked) {
                  comfart = 5;
              }
            //alert(comfart);

        }

        function Performance_check() {
            const radio26 = document.getElementById('<%= RadioButton26.ClientID %>');
            const radio27 = document.getElementById('<%= RadioButton27.ClientID %>');
            const radio28 = document.getElementById('<%= RadioButton28.ClientID %>');
            const radio29 = document.getElementById('<%= RadioButton29.ClientID %>');
            const radio30 = document.getElementById('<%= RadioButton30.ClientID %>');

                    if (radio26.checked) {
                        Performance = 1;
                    } else if (radio27.checked) {
                        Performance = 2;
                    } else if (radio28.checked) {
                        Performance = 3;
                    } else if (radio29.checked) {
                        Performance = 4;
                    } else if (radio30.checked) {
                        Performance = 5;
            }
           

            //alert(Performance);

        }
        function calculate() {

            var total = safty + mc + milage + comfart + fas + Performance;
            rating1 = (total / 30) * 5;

            //alert("overall " + rating1);
            document.getElementById("Label1").innerHTML = rating1.toFixed(1);
            document.getElementById("Rating").value = rating1.toFixed(1);
            document.getElementById("tab").style.display = "none";
            document.getElementById("btn1").style.display = "none";
            document.getElementById("rat").style.display = "block";
            document.getElementById("tt").style.display = "block";


            
        }
        function getData() {
            var title = document.getElementById("textbox2").value;
            var text = document.getElementById("textbox1").value;
            document.getElementById("Title").value = title;
            document.getElementById("Description").value = text;
            const button = document.getElementById('Button3');
            button.click();
          

        }

       

       

        
    </script>
</body>
</html>
