<%-- 
    Document   : eng
    Created on : Nov 18, 2018, 5:16:02 PM
    Author     : naman
--%>

<%@page import="connectThem.javaConnect"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="ad.css">
        
        <title>EduVision</title>
        <script>
            var count=0;
            </script>
    </head>
    <body>
        <%
            int xc=0;
            %>
        <div class="side-bar">
            <h2>EduVision</h2>
            <hr>
            <br>
            <a href="student.jsp"><h3>Home</h3></a>
            <br>
            <a href="profile.jsp"><h3>Profile</h3></a>
            <br>
            <a href="eng.jsp"><h3 class="active">English</h3></a>
            <br>
            <a href="math.jsp"><h3>Maths</h3></a>
            <br>
            <a href="cs.jsp"><h3>Computer Science</h3></a>
            <br>
            <!--<a href="toDo.jsp"><h3> To-Do List </h3></a>-->
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
            <!--<div class="percent" id="one"><b>0%</b></div>
            <div class="percent2" id="two"><b>0%</b></div>
            <div class="percent3" id="three"><b>0%</b></div>-->
           
            <div class="pro">
                 <table border="0" width="570px" height="100px" cellspacing="10px" style="margin-left:90px;color:white;">
            <col width="80">
            
                     
            <%
                
                Connection conn;
                Statement ps;
                ResultSet rs;
                conn=javaConnect.connectDb();
                int w=0;
                
                   try {
                       
                       String sql="select * from eq";
                       ps=conn.createStatement();
                       rs=ps.executeQuery(sql);
                       while(rs.next()) {
                           w++;             
                       
                   
            %>
            <tr><th width="480px"><%= rs.getString("questions")%></th></tr>
            
            <tr><td></td><td width="120px"><input type="radio" name='foo'><h4><%= rs.getString("option1")%></h4></td><td width="120px"><input type="radio" name='foo'><h4><%= rs.getString("option2")%></h4></td><td width="120px"><input type="radio" name='foo'><h4><%= rs.getString("option3")%></h4></td><td width="120px"><input type="radio" name='foo'><h4><%= rs.getString("option4")%></h4></td><td><button id="h<%=w%>" onclick="document.getElementById('s<%=w%>').style.visibility = 'visible';document.getElementById('h<%=w%>').style.visibility = 'hidden';count++;">Check</button><p id="s<%=w%>" style="visibility: hidden;">Answer is <%= rs.getString("correct")%></p></td></tr>
            
                         
   
           
            <br><br>
            
                   <%
                       }
                      }
                       catch(Exception e) {
                       out.print(e);
                   }
            
            %>
            </table>
            </div>
        
             
            </div>
    </body>
</html>
