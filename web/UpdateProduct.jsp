<%-- 
    Document   : addproduct
    Created on : 4 Jun, 2019, 3:49:03 PM
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
         int price=Integer.parseInt(request.getParameter("price"));
          String desc=request.getParameter("desc");
          int pid=Integer.parseInt(request.getParameter("pid"));
           int quan=Integer.parseInt(request.getParameter("quan"));
            Connection con = MySQLConnection.getConnection();
            String sql = "update product set price=? , name=? ,quantities=?,description =? where pid=? ;";
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setInt(1,price);
            stmt.setString(2,name);
            stmt.setInt(3,quan);
            stmt.setString(4,desc);
            
            stmt.setInt(5,pid);
            stmt.executeUpdate();
            response.sendRedirect("Displayproduct.jsp?msg=updated Successfully");
         %>
            
    </body>
</html>
