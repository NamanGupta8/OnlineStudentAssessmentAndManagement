package connectThem;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


/**
 *
 * @author naman
 */
import java.io.PrintWriter;
import java.sql.*;
import javax.swing.JOptionPane;

public class javaConnect {
  private javaConnect (){
     
  }   
  static Connection conn;
  public static Connection connectDb() {
     try {
         Class.forName("com.mysql.cj.jdbc.Driver");
         conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/osam?user=root&password=Naman@12345&useSSL=true&verifyServerCertificate=false&allowMultiQueries=true");
     }
     catch (Exception e) {
       System.out.println(e);  
     }
     return conn;
 }
  public static int adminPanel(String u, String psw) {
           int y=0;
          if(u.equals("admin") && psw.equals("12345")) {
                y=2;
                
            }
          return y;
  }
}
