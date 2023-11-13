package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;
import shop1.MySQLConnection;

public final class ProductDetails_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 public String getQuan()
            {       
                String op="";
                try{
                        
                        Connection con = MySQLConnection.getConnection();
                        String sql = "select quantities from product where pid=5 ";
                        PreparedStatement stmt = con.prepareStatement(sql);
                
                        ResultSet rs = stmt.executeQuery();
                        
                        int quan=rs.getInt("quantities");
                        for(int j=1;j<=quan;j++)
                        {
                            op=op+"<option value="+j+">"+j+"</option>";
                        }
                    }
                catch(Exception e)
                {
                      System.out.println("ERROR: (ProductDetails.jsp : )" + e);
                }
                return op;
            }
            
        
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style>\n");
      out.write("            .lpanel{\n");
      out.write("                padding:1%;\n");
      out.write("                text-align: center;\n");
      out.write("                float:left;\n");
      out.write("                border:0px solid red;\n");
      out.write("                margin-left:400px;\n");
      out.write("            }\n");
      out.write("            .rpanel{\n");
      out.write("                padding:1%;\n");
      out.write("                text-align: center;\n");
      out.write("                float:left;       \n");
      out.write("                border:0px solid blue;\n");
      out.write("                margin-left:20px;\n");
      out.write("                \n");
      out.write("                font-size:23px;\n");
      out.write("                color:red;\n");
      out.write("            }\n");
      out.write("            .a1{\n");
      out.write("                text-decoration:none;\n");
      out.write("                color:red;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-color:#ffff66;\">\n");
      out.write("         \n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("                ");

                    String pname="";
                    String price="";
                    String descr="";
                    String img="";
                    int quan=0;
                    int pid = Integer.parseInt(request.getParameter("pid"));
                    Connection con = MySQLConnection.getConnection();
                    String sql = "select * from product where pid=?";;
                    PreparedStatement stmt = con.prepareStatement(sql);
                    stmt.setInt(1,pid);
                    
                    ResultSet rs = stmt.executeQuery();
                    while (rs.next()) 
                    {
                        pname=rs.getString("name");
                        price=rs.getString("price");
                        descr=rs.getString("description");
                        quan=rs.getInt("quantities");
                        img = rs.getString("img");
                    }
                    int k=quan;
                    
                
      out.write("\n");
      out.write("          ");
      out.write("      \n");
      out.write("         <div style=\"padding:2%;margin-top:100px;text-align:center;border:0px solid red; \">\n");
      out.write("                <div class=\"lpanel\">\n");
      out.write("                \n");
      out.write("                  <img src=\"");
      out.print(img);
      out.write("\" alt =\"no\" style=\"width:200px;height:200px;\">       \n");
      out.write("                  \n");
      out.write("                </div>\n");
      out.write("               <div class=\"rpanel\">\n");
      out.write("                   Quan : <select name=\"quan\"> ");
      out.print(getQuan());
      out.write("</select>\n");
      out.write("                   <div>");
      out.print(pname);
      out.write("</div>\n");
      out.write("                   <div>");
      out.print(price);
      out.write("</div>\n");
      out.write("                   <div>");
      out.print(descr);
      out.write("</div>\n");
      out.write("                   \n");
      out.write("                   <div><a href=\"addToCart.jsp?pid=");
      out.print(pid);
      out.write("\" style=\"text-decoration:none;\">add to cart | </a>\n");
      out.write("                   <a href=\"addToWish.jsp?pid=");
      out.print(pid);
      out.write("\" style=\"text-decoration:none;\">add to wish</a></div>\n");
      out.write("                </div>\n");
      out.write("         </div>\n");
      out.write("                <div style=\"margin-top: 250px;\">\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("                </div>\n");
      out.write("            <div style=\"margin-top:250px;\"> ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("</div>\n");
      out.write("    </body>\n");
      out.write("    \n");
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
