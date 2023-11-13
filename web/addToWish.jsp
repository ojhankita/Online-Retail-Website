<%-- 
    Document   : aatoCart.jsp
    Created on : 28 May, 2019, 1:30:00 PM
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
    <body style="background-color: #ffff66">
            <%
                    int pid = Integer.parseInt(request.getParameter("pid"));
                    int userid = (Integer)session.getAttribute("cid");
                    
                    
                    
          Connection con = MySQLConnection.getConnection();
          if(con==null)
          {
              out.print("ERROR");
          }
          String sql = "Insert into wish (uid,pid) values(?,?)";
         // out.print(sql);
         
          PreparedStatement stmt = con.prepareStatement(sql);
          stmt.setInt(1, userid);
          stmt.setInt(2, pid);
          
          stmt.executeUpdate();
          
          response.sendRedirect("Products.jsp");
                 
        %>
                    
                    
                    
                %>
                
    </body>
</html>
