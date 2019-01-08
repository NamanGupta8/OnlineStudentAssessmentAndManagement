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
import java.sql.ResultSet;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author naman
 */
/*@WebServlet(urlPatterns = {"/signServlet"}))*/
public class signServlet extends HttpServlet {
      Connection conn;
       PreparedStatement ps;
         public String Random() {
        Random rd= new Random();
        
        return (""+rd.nextInt(1000+1));
        }   

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        res.setContentType("text/html;charset=UTF-8");
         conn=javaConnect.connectDb();
        PrintWriter out=res.getWriter();
        try {
            String name=req.getParameter("name");
            String username=req.getParameter("username");
            String id=Random();
            String password=req.getParameter("password");
            String secQ=req.getParameter("secQues");
            String secA=req.getParameter("secAns");
            String sql="insert into signUp (name,username,id ,password,secQ,secAns) values(?,?,?,?,?,?)";
            ps=conn.prepareStatement(sql);
            ps.setString(1,name);
            ps.setString(2,username);
            ps.setString(3,id);
            ps.setString(4,password);
            ps.setString(5,secQ);
            ps.setString(6,secA);
            ps.executeUpdate();
            out.println("<script>alert('Sign in Successful');window.location.href='login.html'</script>");
        }
        catch(Exception e) {
            System.out.println(e);
           out.print("<script>alert('");
           out.print(e);
           out.print("')</script>");
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
        processRequest(request, response);
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
