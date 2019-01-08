/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connectThem;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

/**
 *
 * @author naman
 */
public class ExcelDatabaseExport extends HttpServlet {
    Connection con=javaConnect.connectDb();
    Statement stmt;
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
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            stmt=con.createStatement();
            rs=stmt.executeQuery("select name,username,id,password from signUp");
            
            XSSFWorkbook workbook = new XSSFWorkbook();
            XSSFSheet spreadsheet = workbook.createSheet("studentdb");
            XSSFRow row = spreadsheet.createRow(1);
            XSSFCell cell;
            cell = row.createCell(0);
            cell.setCellValue("NAME");
            cell = row.createCell(1);
            cell.setCellValue("USERNAME");
            cell = row.createCell(2);
            cell.setCellValue("ID");
            cell = row.createCell(3);
            cell.setCellValue("PASSWORD");
            
            int i=2;
             while (rs.next()) {
                row = spreadsheet.createRow(i);
                cell = row.createCell(0);
                cell.setCellValue(rs.getString("name"));
                cell = row.createCell(1);
                cell.setCellValue(rs.getString("username"));
                cell = row.createCell(2);
                cell.setCellValue(rs.getString("id"));
                cell = row.createCell(3);
                cell.setCellValue(rs.getString("password"));
                i++;
            }
            FileOutputStream out1 = new FileOutputStream(new File("/home/naman/Desktop/exceldatabase.xlsx"));
            workbook.write(out1);
            out1.close();
            out.println("<script>alert('File Successfully created');window.location.href='sinfo.jsp';</script>");
               
        }
        catch(Exception e){
            out.println(e);
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
