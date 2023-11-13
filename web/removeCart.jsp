<%-- 
    Document   : newjspremoveCart
    Created on : 29 May, 2019, 1:00:22 PM
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
            int cid = Integer.parseInt(request.getParameter("cartid"));
            Connection con = MySQLConnection.getConnection();
            String sql = "delete from cart where cid=?"; 
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setInt(1, cid);
            stmt.executeUpdate();
            response.sendRedirect("DisplayCart.jsp?msg=Item removed");
        %>
    </body>
</html>
