
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
            int wishid = Integer.parseInt(request.getParameter("wishid"));
            Connection con = MySQLConnection.getConnection();
            String sql = "delete from wish where wid=?"; 
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setInt(1, wishid);
            stmt.executeUpdate();
            response.sendRedirect("DisplayWish.jsp?msg=Item removed");
        %>
    </body>
</html>
