<%-- 
    Document   : WishtoCart
    Created on : 6 Jun, 2019, 3:24:58 PM
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
                                int userid = (Integer)session.getAttribute("cid");
                                int wid=Integer.parseInt(request.getParameter("wishid"));
                                Connection con = MySQLConnection.getConnection();
                                int pid=0;
                                String sql = "select w.pid from wish w where w.wid=?";
                                PreparedStatement stmt = con.prepareStatement(sql);
                                stmt.setInt(1,wid);
                                ResultSet rs = stmt.executeQuery();
                                if(rs.next())
                                {
                                        pid=rs.getInt("pid");
                                        
                                }
                              
                                java.sql.Date d = new java.sql.Date(new java.util.Date().getTime());
                                String sql2 = "Insert into cart (uid,pid,pdate) values(?,?,?)";
                                Connection con2 = MySQLConnection.getConnection();
                                PreparedStatement stmt2 = con2.prepareStatement(sql2);
                                stmt2.setInt(1, userid);
                                stmt2.setInt(2, pid);
                                stmt2.setDate(3,d);
                                stmt2.executeUpdate();
                                String sql3 = "delete from wish where wid=?"; 
                                stmt = con.prepareStatement(sql3);
                                stmt.setInt(1, wid);
                                stmt.executeUpdate();
                                response.sendRedirect("DisplayWish.jsp?msg=Added to cart");
            %>
    </body>
</html>
