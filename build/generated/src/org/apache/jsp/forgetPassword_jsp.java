package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import connectThem.javaConnect;
import java.sql.*;

public final class forgetPassword_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Forgot Password</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"s.css\">\n");
      out.write("    </head>\n");
      out.write("    <body onload=\"genRandon();\">\n");
      out.write("          <script>\n");
      out.write("             document.getElementById(\"myVideo\").width=document.body.offsetWidth;\n");
      out.write("             function genRandom() {\n");
      out.write("                 alert(\"sgduifgiugu\");\n");
      out.write("                 var x=Math.floor(Math.random( (20000-10000+1))+10000;\n");
      out.write("                 document.getElementById(\"cross\").value=x;\n");
      out.write("             }\n");
      out.write("             </script>\n");
      out.write("     <video autoplay muted loop id=\"myVideo\">\n");
      out.write("       <source src=\"type\" type=\"video/mp4\">\n");
      out.write("     </video>\n");
      out.write("\n");
      out.write("             <div class=\"content\" >\n");
      out.write("\n");
      out.write("    <ul class=\"x\">\n");
      out.write("      <li> <img src=\"img/bookIt.png\" class=\"center\" alt=\"student\" style=\"width: 120px;height: 70px;margin-bottom:10px;bottom:8px;filter: brightness(100%);\"></li>\n");
      out.write("        <li class=\"edu\"><h1>EduVision</h1></li>\n");
      out.write("        <li class=\"topnav-right\">&nbsp;&nbsp;</li>\n");
      out.write("        <li class=\"topnav-right\"><h2><a href=\"login.html\">Login</a></h2></li>\n");
      out.write("        <li class=\"topnav-right\"><h2><a href=\"index.html#Contact\">Contact Us</a></h2></li>\n");
      out.write("        <li class=\"topnav-right\"><h2><a href=\"index.html#Our\">Our Achievements</a></h2></li>\n");
      out.write("        <li class=\"topnav-right\"><h2><a href=\"index.html#About\">About Us</a></h2></li>\n");
      out.write("        <li class=\"topnav-right\"><h2><a href=\"index.html\">Home</a></h2></li>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    </ul>\n");
      out.write(" </div>\n");
      out.write("             <div class=\"contexty\">\n");
      out.write("\n");
      out.write("                 \n");
      out.write("                 <form method=\"POST\">\n");
      out.write("                 \n");
      out.write("                 <button type=\"submit\" style=\"float:right;height:50px; background: rgba(0, 0, 0, 0.5);color:white;width:245px;border-radius:15px;margin-right: 40px;\" onclick=\"functionx()\"><b>Check For Username</b></button><br><br><br><br>\n");
      out.write("                 <button type=\"submit\" style=\"float:right;height:50px; background: rgba(0, 0, 0, 0.5);color:white;width:245px;border-radius:15px;margin-right: 40px;\"><b>Check For Security Answer</b></button>\n");
      out.write("                 <input type=\"text\"  placeholder=\"Please Enter Your Username\" name=\"username7\" style=\"text-align:center;width:325px;height:40px;border-radius:10px;background:rgba(0,0,0,0.5);color:white;\"> <br><br><br><br>\n");
      out.write("                 ");

                     Connection conn=javaConnect.connectDb();
                     PreparedStatement ps;
                     ResultSet rs=null;
                     try {
                         String u=request.getParameter("username7");
                         String sql="select secQ from signUp where username=?";
                         ps=conn.prepareStatement(sql);
                         ps.setString(1,u);
                         rs=ps.executeQuery();
                     }
                     catch (Exception e) {
                         
                     }
                     
      out.write("\n");
      out.write("                 <input type=\"text\" id=\"uw\" placeholder=\"Your Security Question will be displayed here\" name=\"secQues7\" style=\"text-align:center;width:325px;height:40px;border-radius:10px;background:rgba(0,0,0,0.5);color:white;\">  <br><br><br><br>\n");
      out.write("                 <input type=\"text\" placeholder=\"Please Enter Your Answer\" name=\"secAns7\" style=\"text-align:center;width:325px;height:40px;border-radius:10px;background:rgba(0,0,0,0.5);color:white;\">  <br><br><br><br>\n");
      out.write("                 <input type=\"text\" placeholder=\"Your Password will be shown here !!\" name=\"password\" style=\"text-align:center;width:325px;height:40px;border-radius:10px;background:rgba(0,0,0,0.5);color:white;\">  <br><br><br><br>\n");
      out.write("                 <button type=\"submit\" style=\"margin-left:75px;height:50px; background: rgba(0, 0, 0, 0.5);color:white;width:145px;border-radius:15px;\" formaction=\"signUp.html\"><b>Go Back</b></button></form>\n");
      out.write("                \n");
      out.write("             </div>\n");
      out.write("                 <script type=\"text/javascript\">\n");
      out.write("                     function functionx(){\n");
      out.write("                      document.getElementById(\"uw\").value = \"");
      out.print( rs.getString(1));
      out.write("\";\n");
      out.write("                  }\n");
      out.write("                 </script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
