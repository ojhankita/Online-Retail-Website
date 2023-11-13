<%-- 
    Document   : StoreCust
    Created on : 25 May, 2019, 2:17:03 PM
    Author     : Ashutosh
--%>
<%@page import="shop1.AutoGenMail"%>
<%@page  import="shop1.MySQLConnection;" %>
<%@page  import="java.sql.*;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%String name=request.getParameter("txt1");
          String email=request.getParameter("txt2");
          String pass=request.getParameter("txt3");
          String add=request.getParameter("txt4");
          String phone=request.getParameter("txt5");
          
          
          Connection con = MySQLConnection.getConnection();
          if(con==null)
          {
              out.print("ERROR");
          }
          String sql = "Insert into customer (name,email,phone,password,address) values(?,?,?,?,?)";
         // out.print(sql);
         
          PreparedStatement stmt = con.prepareStatement(sql);
          stmt.setString(1, name);
          stmt.setString(2, email);
          stmt.setString(3, phone);
          stmt.setString(4, pass);
          stmt.setString(5, add);
          stmt.executeUpdate();
          out.println("<br> Done stored ");
          
          String subject="Account created";
          String msg="Account created sccesfully .Your email is"+email+ "and password is "+pass;
          AutoGenMail a = new AutoGenMail(email,subject,msg);
          response.sendRedirect("Login.jsp?msg=successfully registered");
        %>
        
    </body>
</html>
