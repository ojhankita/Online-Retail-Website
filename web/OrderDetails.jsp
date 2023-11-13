<%-- 
    Document   : OrderDetails
    Created on : 11 Jun, 2019, 5:58:14 PM
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
        <style>
            .lpanel{
                padding:1%;
                width:15%;
                float:left;
                height:100%;
                border:0px solid red;
            }
            .rpanel{
                padding:1%;
                width:76%;
                float:left;                
                border:0px solid blue;
                color:red;
            }
          </style>
    </head>
    <body style="background-color:#ffff66;">
        <jsp:include page="header.jsp"></jsp:include>
        <%
            long oid=Long.parseLong(request.getParameter("oid"));
            Connection con = MySQLConnection.getConnection();
            String sql="select pid,quantity from transaction where oid=?";
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setLong(1,oid);
            ResultSet rs=stmt.executeQuery();
            int quan=0;
            int pid=0;
            String img="";
            String name="";
            while(rs.next())
            {
                quan=rs.getInt("quantity");
                pid=rs.getInt("pid");
                sql="select img,name from product where pid=?";
                stmt=con.prepareStatement(sql);
                stmt.setInt(1, pid);
                ResultSet rs2=stmt.executeQuery();
                if(rs2.next())
                {
                    img=rs2.getString("img");
                    name=rs2.getString("name");
                }
            
         %>
          <div style="padding:2%;margin-top:100px;text-align:center;border:0px solid red;overflow:auto; ">
           
                <div class="lpanel">
                
                  <img src="<%=img%>" alt ="no" style="width:200px;height:200px;">       
                  
                </div>
                  <form>
               <div class="rpanel">
                   PRODUCT NAME : <%=name%>
                   <br>
                   QUANTITY:<%=quan%>
                </div>
                </form>
         </div>
                   <%
            }
                   %>
    </body>
</html>
