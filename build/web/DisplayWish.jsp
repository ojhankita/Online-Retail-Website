

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
    <body style="background-color: #ffff66">
            <%
                    if(session.getAttribute("cid")==null)
                        response.sendRedirect("Login.jsp?msg=Pls login first");
             %>
                <jsp:include page="header.jsp" ></jsp:include>
               
                <form >
                    
                <%
                    String msg=request.getParameter("msg");
                    if(msg!=null)
                    out.print("msg = "+msg);
                    String pname="";
                    int price=0;
                    String img="";
                    int userid = (Integer)session.getAttribute("cid");
                    int wishid=0;
                    
                    Connection con = MySQLConnection.getConnection();
                    String sql = "select p.name,p.price,p.img,w.wid from product p,wish w where p.pid=w.pid and w.uid=?";
                    PreparedStatement stmt = con.prepareStatement(sql);
                    
                    stmt.setInt(1, userid);
                    ResultSet rs = stmt.executeQuery();
                    while (rs.next()) 
                    {
                        pname=rs.getString("name");
                        price=rs.getInt("price");
                        img = rs.getString("img");
                        
                        wishid=rs.getInt("wid");
                        
                        
                      %>  
                        <div class="hey2">
                            <div style="padding:5px; float:left;"><img src="<%=img%>" alt= "no" style=" width:100px; height:100px;"></div>
                            <div style="width:50%;padding:5px; float:left;  margin-left: 50px">
                                <div style=" font-size: 20px;color: red; margin-left: 20px;"><%=pname%></div>
                                <div style=" font-size: 20px;color: red; margin-left: 20px;"><%=price%></div>
                            </div>
                            <div><a href="removeWish.jsp?wishid=<%=wishid%>">X</a></div>
                            <div><a href="WishtoCart.jsp?wishid=<%=wishid%>">Add to  cart</a></div>
                        </div>
                    <%
                        
                    }
                %>

                
               
                
              
                </form>
                    <div style="margin-top:250px;"> <jsp:include page="footer.jsp" ></jsp:include></div>
    </body>
</html>
