<%-- 
    Document   : Validate
    Created on : 25 May, 2019, 3:34:30 PM
    Author     : Ashutosh
--%>

<%@page import="shop1.MySQLConnection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
          
           
          String btn=request.getParameter("btn"); 
          String email=request.getParameter("txt1");
          String pass=request.getParameter("txt2");
          
          
          Connection con = MySQLConnection.getConnection();
          
          String sql = "select id from customer where email=? and password=?";
          
          PreparedStatement stmt = con.prepareStatement(sql);
          stmt.setString(1, email);
          stmt.setString(2, pass);
          
          
          ResultSet rs =  stmt.executeQuery();
          if(btn.equalsIgnoreCase("ADMIN"))
          {
              if(email.equalsIgnoreCase("admin")&&pass.equals("ashu"))
              {
                 
                 session.setAttribute("admin",1);
                  response.sendRedirect("Admin.jsp");
              }
              else
                   {
                         response.sendRedirect("Login.jsp?msg=invalid username or password...");
                   }
          }
          else
          {
                   if(rs.next())
                   {
                       out.print("Welcome");
                       session.setAttribute("cid",rs.getInt("id"));
                       response.sendRedirect("Login.jsp");

                   }
                   else
                   {
                         response.sendRedirect("Login.jsp?msg=invalid username or password...");
                   }
                   }
        %>
    </body>
</html>
