<%-- 
    Document   : eUpload
    Created on : Nov 20, 2018, 10:38:17 AM
    Author     : naman
--%>

<%@page import="connectThem.javaConnect"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Eduvision</title>
        <link rel="stylesheet" href="ad.css">
        
    </head>
    <body>
        <div class="side-bar">
            <h2>EduVision</h2>
            <hr>
            <br>
            <a href="admin.jsp"><h3>Home</h3></a>
            <br>
            <a href="sinfo.jsp"><h3>Students Info</h3></a>
            <br>
            <a href="queries.jsp"><h3>Comments</h3></a>
            <br>
            <a href="eUpload.jsp"><h3 class="active">English Upload</h3></a>
            <br>
            <a href="mUpload.jsp"><h3>Maths Upload</h3></a>
            <br>
            <a href="cUpload.jsp"><h3>Cse Upload</h3></a>
            <br>
            <a href="logout"><h3>Logout</h3></a>
            <br>
            <hr>
        </div>
      <%
              Connection conn;
                Statement ps;
                ResultSet rs=null;
                conn=javaConnect.connectDb();
                String x=null;
                try {
                    String sql="select count(*) from signUp;";
                    ps=conn.createStatement();
                    rs=ps.executeQuery(sql);
                  while(rs.next()) {
                             x=rs.getString("count(*)");  
                }
               }
                catch (Exception e) {
                    out.println(e);    
                }   
                
                
                
            %>
              <%  String y=null;
                  try {
                  
                    String sql="select count(*) from contact;";
                    ps=conn.createStatement();
                    rs=ps.executeQuery(sql);
                  while(rs.next()) {
                             y=rs.getString("count(*)");  
                }
               }
                catch (Exception e) {
                    out.println(e);    
                }   
                
                
                
            %>
             <%  int cq=0;
                  try {
                  
                    String sql="select count(*) from cq;";
                    ps=conn.createStatement();
                    rs=ps.executeQuery(sql);
                  while(rs.next()) {
                             cq=Integer.parseInt(rs.getString("count(*)"));  
                }
               }
                catch (Exception e) {
                    out.println(e);    
                }   
                
                
                
            %>
             <%  int eq=0;
                  try {
                  
                    String sql="select count(*) from eq;";
                    ps=conn.createStatement();
                    rs=ps.executeQuery(sql);
                  while(rs.next()) {
                             eq=Integer.parseInt(rs.getString("count(*)"));  
                }
               }
                catch (Exception e) {
                    out.println(e);    
                }   
                
                
                
            %>
             <%  int mq=0;
                  try {
                  
                    String sql="select count(*) from mq;";
                    ps=conn.createStatement();
                    rs=ps.executeQuery(sql);
                  while(rs.next()) {
                             mq=Integer.parseInt(rs.getString("count(*)"));  
                }
               }
                catch (Exception e) {
                    out.println(e);    
                }   
                
                int z=eq+mq+cq;
                
            %>
            <div class="bottom-bar">
            <div class="progress"><h2>Totals</h2></div>
            <div class="English">Students</div>
            <div class="Math">Comments</div>
            <div class="Comp">Questions</div>
            <div class="percent"><b><%=x%></b></div>
            <div class="percent2"><b><%=y%></b></div>
            <div class="percent3"><b><%=z%></b></div>
          </div>
            

        <div class="pro">
            <h2> Knowing English increases your chances of getting a good job in a multinational company within your home country or for finding work abroad.<br><br>It's also the language of international communication,<br><br> the media and the internet, so learning English is important for socialising and entertainment as well as work!</h2>           
            <br><br><center><form method="POST"><input type="text" placeholder="Enter Question" style="width:350px;" name="esq"><br><br>
            <input type="text" placeholder="Enter Option 1" name="eq1"><br><br>
            <input type="text" placeholder="Enter Option 2" name="eq2"><br><br>
            <input type="text" placeholder="Enter Option 3" name="eq3"><br><br>
            <input type="text" placeholder="Enter Option 4" name="eq4"><br><br><br>
            <input type="text" placeholder="Enter Correct option" name="ec"><br><br><br>
            <button type="submit" formaction="eQuestion"> Add </button></form></center>
        
        </div>
 
    </body>
</html>
