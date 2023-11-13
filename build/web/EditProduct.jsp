<%-- 
    Document   : addproduct
    Created on : 4 Jun, 2019, 3:47:52 PM
    Author     : Ashutosh
--%>
<%@page import="java.sql.*"%>
<%@page import="shop1.MySQLConnection"%>
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
                    if(session.getAttribute("admin")==null)
                        response.sendRedirect("Login.jsp?msg=Pls login first");
     %>
       <%          
                    int pid=Integer.parseInt(request.getParameter("pid"));
                    
                        String name="";
                        int price=0;
                        String desc="";
                        int catid=0;
                        int quan=0;
                    Connection con = MySQLConnection.getConnection();
                    String sql = "select p.name,p.price,p.description,p.catid,p.quantities from product p where p.pid=?";
                    PreparedStatement stmt = con.prepareStatement(sql);
                    stmt.setInt(1,pid);
                    ResultSet rs = stmt.executeQuery();
                    if(rs.next())
                    {
                        name=rs.getString("name");
                        price=rs.getInt("price");
                        catid=rs.getInt("catid");
                        quan=rs.getInt("quantities");
                        desc=rs.getString("description");
                    }
                    
                      
         %>
             <form action="UpdateProduct.jsp?name=<%=name%>price=<%=price%>desc=<%=desc%>pid=<%=pid%>quan=<%=quan%> " method="get">
             <input type="hidden" name="pid"  value="<%=pid%>">
             <div class="f1"> Enter name:</div>
             <div class="f2"><input type="text" name="name" value="<%=name%>"></div >
             <div class="f1">Enter price:</div>
             <div class="f2"><input type="text" name="price" value="<%=price%>"></div>
             Enter description:
             <input type="text" name="desc" value="<%=desc%>">
             Enter catid:
             <input type="text" name="catid" value="<%=catid%>">
             Enter quantity:
             <input type="text" name="quan" value="<%=quan%>">
             <input type="submit" name="edit" value="edit">
         </form>
    </body>
</html>
