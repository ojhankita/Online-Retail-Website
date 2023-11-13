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
        <style>
            <%
                    if(session.getAttribute("admin")==null)
                        response.sendRedirect("Login.jsp?msg=Pls login first");
     %>
             .lpanel{
                padding:1%;
                text-align: center;
                float:left;
                border:0px solid red;
                margin-left:10px;
            }
            .rpanel{
                padding:1%;
                text-align: left;
                float:left;       
                border:0px solid blue;
                margin-left:20px;
                
                font-size:23px;
                color:red;
            }
        </style>
           
    </head>
    <body>
        <p style="font-size:20px;text-align:center; color:greenyellow;">
       <%           String msg=request.getParameter("msg");
                    if(msg!=null)
                        out.println(" Done! "+msg);
                    int pid=0;
                    String img="";
                    String catname="";
                    String nam="";
                    Connection con = MySQLConnection.getConnection();
                    String sql = "select p.pid,p.name,p.img,c.name as cname from product p,category c where p.catid=c.cid;";
                    PreparedStatement stmt = con.prepareStatement(sql);
                    ResultSet rs = stmt.executeQuery();
                    while(rs.next())
                    {
                        pid= rs.getInt("pid");
                        nam=rs.getString("name");
                        img = rs.getString("img");
                        catname=rs.getString("cname");
         %>
        </p>   
        <div style="overflow:auto;border:2px solid red;">  
                         <div class="lpanel">
                            <a href="EditProduct.jsp?pid=<%=pid%>">
                                <img src="<%=img%>" alt="no" style="width:200px;height:200px;">
                             </a>
                         </div> 
                         <div class="rpanel"> 
                             <div style="width:100%;border:1px solid blue;overflow:auto;">
                                 <div style="width:300px;float:left;text-align:right;padding:5px;">Product Id : </div>
                                 <div style="width:300px;float:left;text-align:left;padding:5px;"><%=pid%></div>
                             </div>
                             <div style="width:100%;border:1px solid blue;overflow:auto;">
                                 <div style="width:300px;float:left;text-align:right;padding:5px;">Name : </div>
                                 <div style="width:300px;float:left;text-align:left;padding:5px;"><%=nam%></div>
                             </div>
                             <div style="width:100%;border:1px solid blue;overflow:auto;">
                                 <div style="width:300px;float:left;text-align:right;padding:5px;">Category : </div>
                                 <div style="width:300px;float:left;text-align:left;padding:5px;"><%=catname%></div>
                             </div>
                             
                        </div>
                        <div><a href="Removeproduct.jsp?pid=<%=pid%>" style="padding:5px;float:right;margin-right: 250px;">X</a></div>      
                    </div>
            
       
         <%
                    }
          %>
          
          
    </body>
</html>
