<%-- 
    Document   : Search.jsp
    Created on : 7 Jun, 2019, 2:55:58 PM
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
                padding:1%;
                width:200px;
                float:left;
                height:100%;
                border:0px solid red;
                overflow:auto;
            }
            .rpanel{
                padding:1%;
                width:300px;
                float:left;                
                border:0px solid blue;
                overflow:auto;
                color:red;
            }
            .a1{
                text-decoration:none;
                color:red;
            }
            .lpanel_item{

                font-size: 20px;
                border:1px solid yellow;
                color:yellow;
                background-color:greenyellow;
                padding:5px;
                width:95%;
                margin-top:2px;
            }
            .rpanel_item{
                border:0px solid yellow;
                padding:5px;
                width:220px;
                height:220px;
                
                margin-left:2px;
                float:left;
                text-align:center;
            }

        </style>
    </head>
    <body style="background-color:#ffff66;"> 
        <jsp:include page="header.jsp" ></jsp:include>  
        <%
          String name=request.getParameter("txt1");
          name = "%"+name+"%";
          Connection con = MySQLConnection.getConnection();
          //  out.print(name);
         // String sql = "select name,price,description,img,pid from product where name like '%"+name+"%' ";
           String sql = "select name,price,description,img,pid from product where name like ?";
          PreparedStatement stmt = con.prepareStatement(sql);
          stmt.setString(1,name);
          ResultSet rs=stmt.executeQuery();
          while(rs.next())
            {   name=rs.getString("name");
                int price=rs.getInt("price");
                String desc=rs.getString("description");
                String img=rs.getString("img");
                int pid=rs.getInt("pid");
         %>
        <form>
             <div style="overflow:auto; width:45%;float:left;border :2px solid red; padding:10px;">
                 <div class="lpanel" >
                     <a href="ProductDetails.jsp?pid=<%=pid%>"><img src="<%=img%>" style="height:210px;width:200px;" alt="no"></a>
                 </div>
                 <div class="rpanel">
                     <div>Name : <%=name%></div>
                     <div>Price : <%=price%></div>
                     <div>Description : <%=desc%></div>
                 </div>
             </div>
         
         <%
         }
          %>
   </form>
     
  </body>
</html>
