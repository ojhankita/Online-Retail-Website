package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Customer Login Page</title>\n");
      out.write("        <script language=\"JavaScript\">\n");
      out.write("            function validate()\n");
      out.write("            {\n");
      out.write("                \n");
      out.write("                user = document.getElementById(\"t1\").value;                \n");
      out.write("                pass = document.getElementById(\"t2\").value;\n");
      out.write("                error1 = document.getElementById(\"msg1\");\n");
      out.write("                error2 = document.getElementById(\"msg2\");\n");
      out.write("                \n");
      out.write("                error1.innerHTML = \"\";\n");
      out.write("                error2.innerHTML = \"\";\n");
      out.write("                \n");
      out.write("                if(user.length===0)\n");
      out.write("                {\n");
      out.write("                    \n");
      out.write("                    error1.innerHTML = \"user name is mandatory\";\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("                if(pass.length===0)\n");
      out.write("                {              \n");
      out.write("                    error2.innerHTML = \"password  is mandatory\";\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("                return true;\n");
      out.write("            }\n");
      out.write("        </script>\n");
      out.write("        <style>\n");
      out.write("            #msg1,#msg2{\n");
      out.write("                color:red;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-color:#ffff66;\">\n");
      out.write("          ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("       \n");
      out.write("        <div style=\"margin:auto;margin-top:20px;background-color: aquamarine;width:30%;padding:10px;font-size:20px;text-align:center;\">\n");
      out.write("            ");

                String msg = request.getParameter("msg");
                String mh = request.getParameter("mh");
                    
                if(msg!=null)
                    out.print("<br><h1>"+msg+"</h1></br>");
                
                else if(mh!=null)
                    out.print("<br><h1>"+mh+"</h1></br>");
 
            
      out.write("\n");
      out.write("            <form onsubmit=\"return validate();\" action=\"Validate.jsp\" method=\"post\">\n");
      out.write("               <!-- <div style=\"margin-top:5px;\">UserName</div> -->\n");
      out.write("                <div><input type=\"text\" placeholder=\"user name.....\" id=\"t1\" name=\"txt1\" style=\"height:25px;border-radius: 5px;padding: 10px;margin-top:10px;width:300px;\"></div>\n");
      out.write("                <div id=\"msg1\"></div>\n");
      out.write("                <!--<div  style=\"margin-top:5px;\">Password</div> -->\n");
      out.write("                <div><input type=\"password\" placeholder=\"password.....\" id=\"t2\" name=\"txt2\" style=\"height:25px;border-radius: 5px;padding: 10px;margin-top:10px;width:300px;\"></div>\n");
      out.write("                <div id=\"msg2\"></div>\n");
      out.write("                <div>\n");
      out.write("                    <a href=\"Signup.jsp\" style=\"text-decoration:none;\" >new user? | </a>\n");
      out.write("                    <a href=\"Forgot.jsp\" style=\"text-decoration:none;\" >forgot password? | </a>\n");
      out.write("                    <input type=\"submit\" name=\"btn\" value=\"Login\" style=\"margin-top:5px;\">\n");
      out.write("                    <input type=\"submit\" name=\"btn\" value=\"Admin\" style=\"margin-top:5px;\">\n");
      out.write("                 <div>\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("            </div>  \n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("            <div style=\"padding: 10px; bottom: 0px; position: relative;\">\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("        </div>\n");
      out.write("</body>\n");
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
