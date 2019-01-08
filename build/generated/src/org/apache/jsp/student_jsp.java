package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class student_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"ad.css\">\n");
      out.write("        <title>Eduvision</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"side-bar\">\n");
      out.write("            <h2>EduVision</h2>\n");
      out.write("            <hr>\n");
      out.write("            <br>\n");
      out.write("            <a href=\"student.jsp\"><h3 class=\"active\">Home</h3></a>\n");
      out.write("            <br>\n");
      out.write("            <a href=\"profile.jsp\"><h3>Profile</h3></a>\n");
      out.write("            <br>\n");
      out.write("            <a href=\"eng.jsp\"><h3>English</h3></a>\n");
      out.write("            <br>\n");
      out.write("            <a href=\"math.jsp\"><h3>Maths</h3></a>\n");
      out.write("            <br>\n");
      out.write("            <a href=\"cse.jsp\"><h3>Computer Science</h3></a>\n");
      out.write("            <br>\n");
      out.write("            <!--<a href=\"toDo.jsp\"><h3> To-Do List </h3></a>-->\n");
      out.write("            <br>\n");
      out.write("            <a href=\"logout\"><h3>Logout</h3></a>\n");
      out.write("            <br>\n");
      out.write("            <hr>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"bottom-bar\">\n");
      out.write("            <div class=\"progress\"><h2>Progress</h2></div>\n");
      out.write("            <div class=\"English\">English</div>\n");
      out.write("            <div class=\"Math\">Maths</div>\n");
      out.write("            <div class=\"Comp\">Computer Science</div>\n");
      out.write("            <div class=\"percent\"><b>0%</b></div>\n");
      out.write("            <div class=\"percent2\"><b>0%</b></div>\n");
      out.write("            <div class=\"percent3\"><b>0%</b></div>\n");
      out.write("           \n");
      out.write("        \n");
      out.write("        \n");
      out.write("             \n");
      out.write("            </div>\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
