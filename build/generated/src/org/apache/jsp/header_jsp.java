package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class header_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       <div style=\"border:0px solid red;background-color: red;overflow:auto;padding:5px;\">\n");
      out.write("           ");
 
            if(session.getAttribute("cid")!=null)
            {
             
      out.write("\n");
      out.write("             \n");
      out.write("             \n");
      out.write("             <div  style=\"float:right;\"><a href=\"Signout.jsp\" style=\"padding:2px;text-decoration:none;color:yellow;\">Sign Out</a></div>\n");
      out.write("             <div style=\"float:right;\"><a href=\"DisplayCart.jsp\" style=\"padding:2px;text-decoration:none;color:yellow;\">Display</a> |  </div>\n");
      out.write("             <div style=\"float:right;\"><a href=\"DisplayWish.jsp\" style=\"padding:2px;text-decoration:none;color:yellow;\">Wishlist</a> | </div>\n");
      out.write("              <div style=\"float:right;\"><a href=\"Orders.jsp\" style=\"padding:2px;text-decoration:none;color:yellow;\">Order History</a> | </div>  \n");
      out.write("              ");

            }
                
      out.write("\n");
      out.write("                <div style=\"text-align: center;\">\n");
      out.write("                   <form  action=\"Search.jsp\" method=\"get\" style=\"overflow: auto;\">\n");
      out.write("                   <input type=\"text\" placeholder=\"Search\" name=\"txt1\" style=\"width:400px;overflow: auto;padding:5px;border-radius: 10px;\">\n");
      out.write("                   <input type=\"submit\" name=\"btn\" value=\"Search\">\n");
      out.write("                   </form>\n");
      out.write("               </div>\n");
      out.write("       </div>\n");
      out.write("       <div style=\"border:0px solid red;overflow:auto;background-color:navy;\">\n");
      out.write("           <div style=\"padding:2px;float:left;width:20%;border:0px solid green;\"> \n");
      out.write("               <img src=\"images/logo.JPG\" alt=\"hello\" style=\"alignment-adjust: auto;float:left; width: 200px ; height:100px;\">\n");
      out.write("           </div>\n");
      out.write("           <div style=\"padding:2px;float:left;width:75%;border:0px solid blue;\"> \n");
      out.write("                <a href=\"Aboutus.jsp\" style =\"text-decoration: none;alignment-adjust: auto;float:right;padding:20px;color:white;\">ABOUT US</a>\n");
      out.write("                <a href=\"Contactus.jsp\" style =\"text-decoration: none;alignment-adjust: auto;float:right;padding:20px;color:white;\">CONTACT US</a>\n");
      out.write("                <a href=\"Products.jsp\" style =\"text-decoration: none;alignment-adjust: auto;float:right;padding:20px;color:white;\">PRODUCTS</a>\n");
      out.write("                <a href=\"Login.jsp\" style =\"text-decoration: none;margin-left:2px;alignment-adjust: auto;float:right;padding:20px;color:white;\">HOME</a>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      \n");
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
