<%-- 
    Document   : Products
    Created on : 27 May, 2019, 1:17:21 PM
    Author     : Ashutosh
--%>

<%@page import="shop1.MySQLConnection"%>
<%@page import="java.sql.*"%><%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                border:2px solid red;
            }
            .rpanel{
                padding:1%;
                width:76%;
                float:left;                
                border:2px solid blue;
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


            <div>
                <div class="lpanel">
                <%
                    int catid = -1;
                    Connection con = MySQLConnection.getConnection();
                    String sql = "select * from category";
                    PreparedStatement stmt = con.prepareStatement(sql);
                    ResultSet rs = stmt.executeQuery();
                    while (rs.next()) {

                        int cid = rs.getInt("cid");

                        if (catid == -1) {
                            catid = cid;
                        }

                        String cname = rs.getString("name");

                %>
                <div class="lpanel_item"><a class="a1" href="Products.jsp?cid=<%=cid%>"><%=cname%> </a></div>

                <%
                    }
                %>            
            </div>
            <div class="rpanel">
                <%
                    if (request.getParameter("cid") != null) {
                        catid = Integer.parseInt(request.getParameter("cid"));
                    }

                    con = MySQLConnection.getConnection();
                    sql = "select * from product where catid=?";
                    stmt = con.prepareStatement(sql);

                    stmt.setInt(1, catid);

                    rs = stmt.executeQuery();
                    while (rs.next()) {
                        int pid = rs.getInt("pid");
                        String img = rs.getString("img");

                %>
                <div class="rpanel_item">
                    <a class="a1" href="ProductDetails.jsp?pid=<%=pid%>">
                        <img src="<%=img%>" alt="no" style="width:200px;height:200px; padding: 5px;">
                    </a>
                </div>

                <%
                    }
                %>      
            </div>           
        </div>

    </body>
</html>
