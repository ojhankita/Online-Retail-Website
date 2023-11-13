<%-- 
    Document   : Addproduct
    Created on : 5 Jun, 2019, 4:43:02 PM
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
    </head>
    <body>
        <%
                    if(session.getAttribute("admin")==null)
                        response.sendRedirect("Login.jsp?msg=Pls login first");
     %>
        <%! public String getCategory()
            {       
                String op="";
                try{
                        Connection con = MySQLConnection.getConnection();
                        String sql = "select cid,name from category  ";
                        PreparedStatement stmt = con.prepareStatement(sql);
                
                        ResultSet rs = stmt.executeQuery();
                        while(rs.next())
                        {
                            op=op+"<option value="+rs.getInt("cid")+">"+rs.getString("name")+"</option>";
                        }
                    }
                catch(Exception e)
                {
                      System.out.println("ERROR: (AddProduct.jsp : )" + e);
                }
                return op;
            }
            
        %>
        <form action="Addproduct.jsp?msg=Item added " method="post">
            <%      String msg=request.getParameter("msg");
                    if(msg!=null)
                    {
                        out.print(msg+ " ");
                    }
                    String btn=request.getParameter("btn");
                    if(btn!=null)
                    {String cat=request.getParameter("cat");
                    String name=request.getParameter("name");
                    int price=Integer.parseInt(request.getParameter("price"));
                    String desc=request.getParameter("desc");
                    String img=request.getParameter("img");
                    int cid=Integer.parseInt(cat);
                    Connection con = MySQLConnection.getConnection();
                    
                    
                
                     String sql2 = "Insert into product (name,price,description,img,catid) values(?,?,?,?,?)";
                     PreparedStatement stmt = con.prepareStatement(sql2); 
                     stmt.setString(1,name);
                     stmt.setInt(2,price);
                     stmt.setString(3,desc);
                     stmt.setString(4,img);
                     stmt.setInt(5,cid);
                     stmt.executeUpdate();}
            %>
            Category : <select name="cat"> <%=getCategory()%></select>
        Name : <input type="text" name="name">
        Price : <input type="text" name="price">
        Description :<input type="text" name="desc">
        Image :<input type="text" name="img">
        <input type="submit" name="btn" value="ADD">
        
        </form>
    </body>
</html>
