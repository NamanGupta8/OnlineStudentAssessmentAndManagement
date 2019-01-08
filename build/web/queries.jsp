<%-- 
    Document   : queries
    Created on : Nov 20, 2018, 10:37:26 AM
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
            <a href="queries.jsp"><h3 class="active">Comments</h3></a>
            <br>
            <a href="eUpload.jsp"><h3>English Upload</h3></a>
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
            <br><br><br>
            <table border="0" width="500px" height="500px" cellspacing="0" cellpadding="0" style="margin-left:250px;color:white;">
             <tr>
                 <td><b>NAME</b></td>
                 <td><b>EMAIL</b></td>
                 <td><b>QUERIES</b></td>
                 
             </tr>
            <%
                
                conn=javaConnect.connectDb();
                   try {
                       String sql="select * from contact";
                       ps=conn.createStatement();
                       rs=ps.executeQuery(sql);
                       while(rs.next()) {
                           
                       
                   
            %>
            <tr><td width="200px"><%= rs.getString("name") %></td><td width="200px"><%= rs.getString("email") %></td><td width="400px"><%= rs.getString("comment") %></td></tr>
            
                   <%
                       }
                      }
                       catch(Exception e) {
                       out.print(e);
                   }
            
            %>
            </table>
        </div>
 
    </body>
</html>
