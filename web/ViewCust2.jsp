<%-- 
    Document   : ViewCust2
    Created on : 6 Jun, 2019, 5:05:38 PM
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
           String k=request.getParameter("cust");
       
           %>
       <%
            String name=k;
            Connection con = MySQLConnection.getConnection();
          String sql = "select email,password,phone,address from customer where name=? ";
          PreparedStatement stmt = con.prepareStatement(sql);
          stmt.setString(1,name);
          ResultSet rs=stmt.executeQuery();
          String email="";
          String pass="";
          String phone="";
          String address="";
          while(rs.next())
          {
                email=rs.getString("email");
                pass=rs.getString("password");
                phone=rs.getString("phone");
                address=rs.getString("address");
          %>
          <form>  Name:<input type="text" value="<%=name%>" name="hey">
          e-mail:<input type="text" value="<%=email%>" name="hey2">
          phone:<input type="text" value="<%=phone%>" name="hey3">
          pass:<input type="text" value="<%=pass%>" name="hey4">
          address:<input type="text" value="<%=address%>" name="hey5">
           <a href="RemoveCust.jsp?name=<%=k%>" >Remove this customer</a>
           <a href="ViewCust.jsp?name=<%=k%>" >BACK</a>
          </form>
          <%
          }
            %>
    </body>
</html>
