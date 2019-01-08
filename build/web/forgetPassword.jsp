<%-- 
    Document   : forgetPassword
    Created on : Dec 2, 2018, 3:35:22 PM
    Author     : naman
--%>

<%@page import="connectThem.javaConnect"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot Password</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="s.css">
                   
    </head>
    <body onload="genRandon();">
          <script>
             document.getElementById("myVideo").width=document.body.offsetWidth;
             function genRandom() {
                 alert("sgduifgiugu");
                 var x=Math.floor(Math.random( (20000-10000+1))+10000;
                 document.getElementById("cross").value=x;
             }
             </script>
     <video autoplay muted loop id="myVideo">
       <source src="type" type="video/mp4">
     </video>

             <div class="content" >

    <ul class="x">
      <li> <img src="img/bookIt.png" class="center" alt="student" style="width: 120px;height: 70px;margin-bottom:10px;bottom:8px;filter: brightness(100%);"></li>
        <li class="edu"><h1>EduVision</h1></li>
        <li class="topnav-right">&nbsp;&nbsp;</li>
        <li class="topnav-right"><h2><a href="login.html">Login</a></h2></li>
        <li class="topnav-right"><h2><a href="index.html#Contact">Contact Us</a></h2></li>
        <li class="topnav-right"><h2><a href="index.html#Our">Our Achievements</a></h2></li>
        <li class="topnav-right"><h2><a href="index.html#About">About Us</a></h2></li>
        <li class="topnav-right"><h2><a href="index.html">Home</a></h2></li>





    </ul>
 </div>
             <div class="contexty">

                 
                 <form method="POST">
                 
                 <img src="img/business.jpg" style="float:right;width:500px;height:520px;border-radius:15px;margin-right: 40px;">
                 <br><br><br><br>
                 <input type="text"  placeholder="Please Enter Your Username" name="username7" style="text-align:center;width:325px;height:40px;border-radius:10px;background:rgba(0,0,0,0.5);color:white;" onclick="document.getElementById('uw').value = 'Alok ';"> <br><br><br><br>
                 
                   
                 <select name="secQues7" style="text-align:center;width:325px;height:40px;border-radius:10px;background:rgba(0,0,0,0.5);color:white;" required>  
                     <option>What is your dog's name ?</option>
                     <option>Your most secretive Word ?</option>
                     <option>Something that no one else knows ?</option>
                 </select><br><br><br><br> 
                   
                 <input type="text" placeholder="Please Enter Your Answer" name="secAns7" style="text-align:center;width:325px;height:40px;border-radius:10px;background:rgba(0,0,0,0.5);color:white;">  <br><br><br><br>
                 
                 <button type="submit" style="margin-left:75px;height:50px; background: rgba(0, 0, 0, 0.5);color:white;width:145px;border-radius:15px;" formaction="secQu"><b>Submit</b></button></form>
                
             </div>
               
    </body>
   
</html>

