<%-- 
    Document   : ViewCust
    Created on : 6 Jun, 2019, 4:46:03 PM
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
        <%! public String getCustomer()
            {       
                String op="";
                try{
                        Connection con = MySQLConnection.getConnection();
                        String sql = "select id,name from customer  ";
                        PreparedStatement stmt = con.prepareStatement(sql);
                
                        ResultSet rs = stmt.executeQuery();
                        while(rs.next())
                        {
                            op=op+"<option value="+rs.getString("name")+">"+rs.getString("name")+"</option>";
                        }
                    }
                catch(Exception e)
                {
                      System.out.println("ERROR: (AddProduct.jsp : )" + e);
                }
                return op;
            }
            
        %>
        <%
            String msg=request.getParameter("msg");
            if(msg!=null)
            out.print(msg);
          
        %>
        
        <form action="ViewCust2.jsp" method="post">
        <div style="text-align: center;font-size:20px;color:red;"> 
        Customers :
        <select name="cust">
           <%=getCustomer()%>
        </select>
        </div>
        <div><input type="submit" value="View"></div>
       
        
        </form>
    </body>
</html>
