<%-- 
    Document   : ProductDetails
    Created on : 28 May, 2019, 12:44:37 PM
    Author     : Ashutosh
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
                text-align: center;
                float:left;
                border:0px solid red;
                margin-left:400px;
            }
            .rpanel{
                padding:1%;
                text-align: center;
                float:left;       
                border:0px solid blue;
                margin-left:20px;
                
                font-size:23px;
                color:red;
            }
            .a1{
                text-decoration:none;
                color:red;
            }
        </style>
    </head>
    <body style="background-color:#ffff66;">
         
        <jsp:include page="header.jsp" ></jsp:include>
                <%
                    String pname="";
                    String price="";
                    String descr="";
                    String img="";
                    int quan=0;
                    int pid = Integer.parseInt(request.getParameter("pid"));
                    Connection con = MySQLConnection.getConnection();
                    String sql = "select * from product where pid=?";
                    PreparedStatement stmt = con.prepareStatement(sql);
                    stmt.setInt(1,pid);
                    
                    ResultSet rs = stmt.executeQuery();
                    while (rs.next()) 
                    {
                        pname=rs.getString("name");
                        price=rs.getString("price");
                        descr=rs.getString("description");
                        quan=rs.getInt("quantities");
                        img = rs.getString("img");
                    }
                    int k=quan;
                    
                %>
          <%! public String getQuan(int pid)
            {   
                
                
                
                String op="";
                try{
                        
                        Connection con = MySQLConnection.getConnection();
                        String sql = "select quantities from product where pid=?";
                        PreparedStatement stmt = con.prepareStatement(sql);
                        stmt.setInt(1,pid);
                        ResultSet rs = stmt.executeQuery();
                        if(rs.next())
                        {   int quan=rs.getInt("quantities");
                            if(quan>5)
                            quan=5;
                            for(int j=1;j<=quan;j++)
                            {
                                op=op+"<option value="+j+">"+j+"</option>";
                            }
                 }}
                    
            
                catch(Exception e)
                {
                      System.out.println("ERROR: (ProductDetails.jsp : )" + e);
                }
                return op;
            }
            
        %>      
         <div style="padding:2%;margin-top:100px;text-align:center;border:0px solid red; ">
                <div class="lpanel">
                
                  <img src="<%=img%>" alt ="no" style="width:200px;height:200px;">       
                  
                </div>
                  <form action="addToCart.jsp" method="post">
               <div class="rpanel">
                   <input type="hidden" value="<%=pid%>" name="pid">
                   <%String options = getQuan(pid);%>
                   Quan : <select name="quan"> <%=options%></select>
                   <div><%=pname%></div>
                   <div><%=price%></div>
                   <div><%=descr%></div>
                   
                   <div><%--<a href="addToCart.jsp?pid=<%=pid%>& quan=<%=quan%>" style="text-decoration:none;">add to cart | </a>--%>
                       
                       <div> <input type="submit" value="Add to Cart"  name="btn"></div>
                       
                   <a href="addToWish.jsp?pid=<%=pid%>" style="text-decoration:none;">add to wish</a></div>
                </div>
                </form>
         </div>
                <div style="margin-top: 250px;">
        <jsp:include page="footer.jsp" ></jsp:include>
                </div>
            
    </body>
    
</html>
