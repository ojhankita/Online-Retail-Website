<%-- 
    Document   : SuccesPay
    Created on : 29 May, 2019, 1:26:48 PM
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
    <body style="background-color:#ffff66;">
        <%  
                    Connection con = MySQLConnection.getConnection();
                    String sql = "select c.pid,c.quantity from cart c where c.uid=?";
                    PreparedStatement stmt = con.prepareStatement(sql);
                    int uid=(Integer)session.getAttribute("cid");
                    stmt.setInt(1,uid);
                    ResultSet rs = stmt.executeQuery();
                    java.util.Date d = new java.util.Date();
                    long oid = d.getTime();
                    
                    while(rs.next())
                    {
                     // int quant=0;
                      int pid=rs.getInt("pid");
                      int quan=rs.getInt("quantity");
                      sql="insert into transaction values(?,?,?,?)";
                      stmt = con.prepareStatement(sql);
                      stmt.setLong(1,oid);
                      stmt.setInt(2,pid);
                      stmt.setInt(3,uid);
                      stmt.setInt(4,quan);
                      stmt.executeUpdate();
                      
                      sql="delete from cart where uid=?";
                      stmt = con.prepareStatement(sql);
                      stmt.setInt(1, uid);
                      stmt.executeUpdate();
                      /*sql="select quantities from product where pid=?";
                      stmt = con.prepareStatement(sql);
                      stmt.setInt(1,pid);
                      ResultSet rs2 = stmt.executeQuery();
                      if(rs2.next())
                          quant=rs.getInt("quantitites");
                      quant=quant-quan;*/
                      sql="update product set quantities=quantities-"+quan +" where pid=?";
                      stmt = con.prepareStatement(sql);
                     
                      stmt.setInt(1,pid);
                      stmt.executeUpdate();
                    }
            
            %>
        <jsp:include page="header.jsp" ></jsp:include>
        <div style="font-size: 30px ; font-family: Calibiri; margin-top: 50px;text-align: center;">
            Congratulations Your Payment was successful
        </div>
           <a href="Login.jsp" style="font-size: 30px ; font-family: Calibiri; margin-top: 50px;margin-left:590px; text-decoration: none">BACK TO HOME</a>
          <div style="margin-top:250px; padding:5px;">          <jsp:include page="footer.jsp" ></jsp:include></div>  
    </body>
</html>
