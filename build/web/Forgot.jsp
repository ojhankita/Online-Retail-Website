<%-- 
    Document   : forgot
    Created on : 4 Jun, 2019, 11:22:11 AM
    Author     : Ashutosh
--%>

<%@page import="shop1.AutoGenMail"%>
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
        <jsp:include page="header.jsp" ></jsp:include>
        <form>
        Enter email :
        <input type="text" name="email" >
        <input type="submit" name="btn" value="btn">
        <%
                    String j=request.getParameter("btn");
                    if(j!=null)
                    {String pass="";
                    String email = request.getParameter("email");
                    Connection con = MySQLConnection.getConnection();
                    String sql = "select password from customer where email=?";;
                    PreparedStatement stmt = con.prepareStatement(sql);
                    stmt.setString(1,email);
                    
                    ResultSet rs = stmt.executeQuery();
                    while (rs.next()) 
                    {
                        pass=rs.getString("password");
                    }
                    String subject="Account details sent";
                    String msg="Account details are : \n Your email is "+email+ " and password is "+pass;
                    AutoGenMail a = new AutoGenMail(email,subject,msg); 
                    response.sendRedirect("Login.jsp?mh=Details sent successfully");}
                   
           %>
           </form>     
        <jsp:include page="footer.jsp" ></jsp:include>
    </body>
</html>
