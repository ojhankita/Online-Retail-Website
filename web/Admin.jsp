<%-- 
    Document   : DispCart
    Created on : 4 Jun, 2019, 3:37:39 PM
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
        <style>
            .c1{
                padding:5px;
                margin-top:20px;
                text-align:center;
                
            }
        </style>
        <title>ADMIN PAGE</title>
    </head>
    <body>
       <%
                    if(session.getAttribute("admin")==null)
                        response.sendRedirect("Login.jsp?msg=Pls login first");
     %>
         <div class="c1"><a href ="Addproduct.jsp">ADD PRODUCTS</a></div>
         <div class="c1"><a href ="Displayproduct.jsp">DISPLAY PRODUCTS</a></div>
   
         <div class="c1"><a href ="ViewCust.jsp">Customers Page</a></div>
    </body>
</html>
