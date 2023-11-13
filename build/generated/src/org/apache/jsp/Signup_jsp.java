package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Signup_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>SIGNUP Page</title>\n");
      out.write("        <script>    \n");
      out.write("        function validate()\n");
      out.write("            {\n");
      out.write("                \n");
      out.write("                user = document.getElementById(\"t1\").value;                \n");
      out.write("                email = document.getElementById(\"t2\").value;\n");
      out.write("                pass = document.getElementById(\"t3\").value;                \n");
      out.write("                address = document.getElementById(\"t4\").value;\n");
      out.write("                phone = document.getElementById(\"t5\").value;                \n");
      out.write("               \n");
      out.write("                error1 = document.getElementById(\"msg1\");\n");
      out.write("                error2 = document.getElementById(\"msg2\");\n");
      out.write("                error3 = document.getElementById(\"msg3\");\n");
      out.write("                error4 = document.getElementById(\"msg4\");\n");
      out.write("                error5 = document.getElementById(\"msg5\");\n");
      out.write("                \n");
      out.write("                error1.innerHTML = \"\";\n");
      out.write("                error2.innerHTML = \"\";\n");
      out.write("                error3.innerHTML = \"\";\n");
      out.write("                error4.innerHTML = \"\";\n");
      out.write("                error5.innerHTML = \"\";\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                if(user.length==0)\n");
      out.write("                {\n");
      out.write("                    \n");
      out.write("                    error1.innerHTML = \"user name is mandatory\";\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("                if(pass.length==0)\n");
      out.write("                {\n");
      out.write("                    \n");
      out.write("                    error2.innerHTML = \"password  is mandatory\";\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("                if(email.length==0)\n");
      out.write("                {\n");
      out.write("                    \n");
      out.write("                    error2.innerHTML = \"email  is mandatory\";\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("                if(phone.length==0)\n");
      out.write("                {\n");
      out.write("                    \n");
      out.write("                    error2.innerHTML = \"phone  is mandatory\";\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("                if(address.length==0)\n");
      out.write("                {\n");
      out.write("                    \n");
      out.write("                    error2.innerHTML = \"address  is mandatory\";\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("                return true;\n");
      out.write("            }\n");
      out.write("    </script>\n");
      out.write("    <style>\n");
      out.write("        .c1{\n");
      out.write("            border-radius: 5px;\n");
      out.write("            padding:5px;\n");
      out.write("            height:25px;\n");
      out.write("            width:300px;\n");
      out.write("        }\n");
      out.write("        #msg1,#msg2,#msg3,#msg4,#msg5{\n");
      out.write("                color:red;\n");
      out.write("            }\n");
      out.write("    </style>    \n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-color:#ffff66;\">\n");
      out.write("        <form action=\"StoreCust.jsp\" method=\"get\">\n");
      out.write("            <input type=\"submit\" value=\"Register Me\" name=\"btn\">\n");
      out.write("        </form>\n");
      out.write("       <form action=\"StoreCust.jsp\" method=\"get\">\n");
      out.write("       ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("  \n");
      out.write("       <div style=\"padding:5px;text-align: center;margin-top:50px; background: cyan; margin:auto; margin-top:40px; width:40%;\">\n");
      out.write("       Enter Name: <input type=\"text\" name=\"txt1\" id=\"t1\" class=\"c1\" >\n");
      out.write("       <div id=\"msg1\"></div>\n");
      out.write("       <br>\n");
      out.write("       Enter email: <input type=\"text\" name=\"txt2\" id=\"t2\" class=\"c1\">\n");
      out.write("        <div id=\"msg2\"></div>\n");
      out.write("       <br>\n");
      out.write("       Enter password: <input type=\"text\" name=\"txt3\" id=\"t3\" class=\"c1\">\n");
      out.write("       <div id=\"msg3\"></div>\n");
      out.write("       <br>\n");
      out.write("       Enter address: <input type=\"text\" name=\"txt4\" id=\"t4\" class=\"c1\">\n");
      out.write("       <div id=\"msg4\"></div>\n");
      out.write("       <br>\n");
      out.write("       Enter phone: <input type=\"text\" name=\"txt5\" id=\"t5\" class=\"c1\">\n");
      out.write("       <div id=\"msg5\"></div>\n");
      out.write("       <br>\n");
      out.write("       <input type=submit name=\"btn\" value=\"Register Me\">\n");
      out.write("       </div>\n");
      out.write("      \n");
      out.write("       </form>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
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
