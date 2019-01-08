<%-- 
    Document   : profile
    Created on : Nov 18, 2018, 5:15:31 PM
    Author     : naman
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="connectThem.javaConnect"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="connectThem.loginServlet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="ad.css">
        <title>EduVision</title>
    </head>
    <body>
        
        <div class="side-bar">
            <h2>EduVision</h2>
            <hr>
            <br>
            <a href="student.jsp"><h3>Home</h3></a>
            <br>
            <a href="profile.jsp"><h3 class="active">Profile</h3></a>
            <br>
            <a href="eng.jsp"><h3>English</h3></a>
            <br>
            <a href="math.jsp"><h3>Maths</h3></a>
            <br>
            <a href="cs.jsp"><h3>Computer Science</h3></a>
            <br>
           <!-- <a href="toDo.jsp"><h3> To-Do List </h3></a>-->
            <br>
            <a href="logout"><h3>Logout</h3></a>
            <br>
            <hr>
        </div>
         <div class="bottom-bar">
            <div class="progress"><h2>Subjects</h2></div>
            <div class="English">English</div>
            <div class="Math">Maths</div>
            <div class="Comp">Computer Science</div>
            <!--<div class="percent"><b>0%</b></div>
            <div class="percent2"><b>0%</b></div>
            <div class="percent3"><b>0%</b></div>-->
           
            <div class="pro">
                <h1>User Profile</h1>
                <br><br>
                
                <img src="img/user.png">
                
                <h2>UserName :- &nbsp;&nbsp;&nbsp; <%= request.getSession().getAttribute("uname").toString() %></h2> 
                <br>
                <h2>Name :- <% 
                                 
                               String rex=request.getSession().getAttribute("uname").toString(),y,z;
                               Connection conn=javaConnect.connectDb();
                               String sql="select name,id from signUp where username=?";  
                               PreparedStatement st=conn.prepareStatement(sql);
                               st.setString(1, rex);
                               ResultSet rs=st.executeQuery();
                               if(rs.next()) {
                                   out.println("<script>alert('Exists);</script>");
                               }
                               y=rs.getString(1);
                               z=rs.getString(2);
                    
                    
                    %>&nbsp;&nbsp;&nbsp; <%= y%></h2>
                <br>
                <h2> College Id :-  &nbsp;&nbsp;&nbsp; <%= z%></h2>
                
            </div>
        
             
            </div>
    </body>
</html>
