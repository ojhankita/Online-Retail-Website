<%-- 
    Document   : Orders
    Created on : 11 Jun, 2019, 5:24:45 PM
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
        <style>
            .lpanel{
                float:left;
                padding:10px;
                width:25%;
                text-align: center;
                color:red;
            }
            .rpanel{
                float:right;
                padding:10px;
                width:71%;
                text-align: center;
               
            }
        </style>
    </head>
    <body style="background-color: #ffff66;">
        <jsp:include page="header.jsp"></jsp:include>       
        
        <%
            int uid=(Integer)session.getAttribute("cid");
            Connection con = MySQLConnection.getConnection();
            String sql="select oid,pid,quantity from transaction where uid=?";
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setInt(1,uid);
            ResultSet rs=stmt.executeQuery();
            int pid=0,quantity=0;
            long oid=0;
            String img="",name="";
                while(rs.next())
            {
                pid=rs.getInt("pid");
                oid=rs.getLong("oid");
                quantity=rs.getInt("quantity");
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
         <div style="padding:10px;overflow:auto;">
             <div style="float:left;padding:5px;color:darkviolet">Order ID : <%=oid%> </div>
             <div> 
                <div class="lpanel">Item name : <%=name%></div>
                <a href="OrderDetails.jsp?oid=<%=oid%>">
                    <div class="rpanel"><img src="<%=img%>" alt="no"></div>
                </a>
             </div>
             
         </div>
             <%
                }
             %>
    </body>
</html>
