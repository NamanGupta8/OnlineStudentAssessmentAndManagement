package connectThem;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author naman
 */
//@WebServlet(urlPatterns = {"/login"})
public class loginServlet extends HttpServlet {
       Connection conn;
       PreparedStatement ps;
       ResultSet rs;
       
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        conn=javaConnect.connectDb();
        PrintWriter out=response.getWriter();

        try {
            int x=1;
                       
            String u=request.getParameter("uname");
            String psw=request.getParameter("psw");
            
            
            String sql="select * from signUp where username=? and password=?;";
            ps=conn.prepareStatement(sql);
            ps.setString(1,u);
            ps.setString(2,psw);
             
            
            rs=ps.executeQuery();
           
            if(javaConnect.adminPanel(u, psw)==2){
                 out.println("<script>alert('Opening admin panel');window.location.href='admin.jsp'</script>");
                 return;
            }
            while(rs.next()) {
                x=0;
            }
         
            if(x==0) {
                HttpSession session= request.getSession();
                session.setAttribute("uname", u);
                request.getRequestDispatcher("profile.jsp").forward(request, response);
            }
            if(x==1) {
                out.println("<script>alert('Username or password incorrect');window.location.href='login.html'</script>");
            }
            
            
            
        }
        catch(Exception e) {
            
            out.println("<script>alert('Error');</script>");
            
        }
    }
   
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("login.jsp");
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
