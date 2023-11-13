<%-- 
    Document   : newjsp
    Created on : 10 Jun, 2019, 4:42:44 PM
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
        <h1>Hello World!</h1>
        
        <%
            java.util.Date d = new java.util.Date();
            long id = d.getTime();
            out.print("Time stamp : " + id);
            
            out.print("date : " + new java.util.Date(id));
            try{
                    Connection con = MySQLConnection.getConnection();
                    String sql = "insert into transaction values(?,?,?)";
                    PreparedStatement stmt = con.prepareStatement(sql);
                    
                    stmt.setLong(1,id);
                    
                    stmt.setInt(2,22);
                    stmt.setInt(3,1);
                      stmt.executeUpdate();
            }catch(Exception e)
            {
                out.println(e);
            }
            %>
    </body>
</html>
