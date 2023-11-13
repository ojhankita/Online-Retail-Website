<%-- 
    Document   : RemoveCust
    Created on : 6 Jun, 2019, 5:00:42 PM
    Author     : Ashutosh
--%>

<%@page import="java.sql.*"%>
<%@page import="shop1.MySQLConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String name=request.getParameter("name");
            Connection con = MySQLConnection.getConnection();
          String sql = "delete from customer where name=? ";
          PreparedStatement stmt = con.prepareStatement(sql);
          stmt.setString(1,name);
          stmt.executeUpdate();
          response.sendRedirect("ViewCust.jsp?msg=Deleted Customer");
          
            %>
    </body>
</html>
