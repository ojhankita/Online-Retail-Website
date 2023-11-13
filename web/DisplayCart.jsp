<%-- 
    Document   : DisplayCart
    Created on : 28 May, 2019, 1:46:37 PM
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
            
            .hey{
              padding:5px;
                width:220px;
                height:220px;
                margin-top:2px;
                margin-left:2px;
                float:left;
                text-align:center;
            }
            .hey2{
                padding:5px;
                width:70%;
                
                margin-top:2px;
                margin-left:10px;
                border:0px solid red;
                overflow:auto;
                
            }
        </style>
    </head>
    <body style="background-color: #ffff66">>
            <%
                    if(session.getAttribute("cid")==null)
                        response.sendRedirect("Login.jsp?msg=Pls login first");
        %>
                <jsp:include page="header.jsp" ></jsp:include>
               
                <form action="Payment.jsp" method="post">
                    
                <%
                    String get=request.getParameter("msg");
                    if(get!=null)
                      out.print("<br><h1>"+"ITEM DELETED"+"</h1></br>");

                    String pname="";
                    int price=0;
                    int k=0;
                    Date pdate=null; //new Date(System.currentTimeMillis());
                    String img="";
                    int userid = (Integer)session.getAttribute("cid");
                    int cartid=0;
                    int quan=0;
                    Connection con = MySQLConnection.getConnection();
                    String sql = "select p.name,p.price,p.img,c.pdate,c.cid,c.quantity from product p,cart c where c.pid=p.pid and c.uid=?";
                    PreparedStatement stmt = con.prepareStatement(sql);
                    
                    stmt.setInt(1, userid);
                    ResultSet rs = stmt.executeQuery();
                    while (rs.next()) 
                    {
                        pname=rs.getString("name");
                        price=rs.getInt("price");
                        img = rs.getString("img");
                        pdate=rs.getDate("pdate");
                        cartid=rs.getInt("cid");
                        quan=rs.getInt("quantity");
                        k=k+price*quan;
                   %>  
                        <div class="hey2">
                            <div style="padding:5px; float:left;"><img src="<%=img%>" alt= "no" style=" width:100px; height:100px;"></div>
                            <div style="width:50%;padding:5px; float:left;  margin-left: 50px">
                                <div style=" font-size: 20px;color: red; margin-left: 20px;"><%=pname%></div>
                                <div style=" font-size: 20px;color: red; margin-left: 20px;"><%=price%></div>
                                <div style=" font-size: 20px;color: red; margin-left: 20px;"><%=pdate%></div>
                               
                            </div>
                             <div style=" font-size: 20px;color: red; margin-left: 20px;">Quantity : <%=quan%></div>
                            <div><a href="removeCart.jsp?cartid=<%=cartid%>">X</a></div>
                        </div>
                    <%
                        
                    }
                %>

                
                <div style="width:70%;padding: 2px;text-align:center;color:blue;margin-left: 200px; font-size: 20px;">
                    <div > TOTAL BILL AMOUNT   :<%=k%></div>
                    <input type="submit" name="btn" value="PAY" style="margin-left:50px; text-align:center; width: 50px; height:50px;" >
                </div>
                
              
                </form>
                    <div style="margin-top:250px;"> <jsp:include page="footer.jsp" ></jsp:include></div>
    </body>
</html>
