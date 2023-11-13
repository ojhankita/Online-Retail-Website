<%-- 
    Document   : Removeproduct
    Created on : 5 Jun, 2019, 4:12:36 PM
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
           int pid = Integer.parseInt(request.getParameter("pid"));
            Connection con = MySQLConnection.getConnection();
            String sql = "delete from product where pid=?"; 
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setInt(1, pid);
            stmt.executeUpdate();
            response.sendRedirect("Displayproduct.jsp?msg=Item removed");
        %>
    </body>
</html>
