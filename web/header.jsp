<%-- 
    Document   : header
    Created on : 27 May, 2019, 1:09:13 PM
    Author     : Ashutosh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <div style="border:0px solid red;background-color: red;overflow:auto;padding:5px;">
           <% 
            if(session.getAttribute("cid")!=null)
            {
             %>
             
             
             <div  style="float:right;"><a href="Signout.jsp" style="padding:2px;text-decoration:none;color:yellow;">Sign Out</a></div>
             <div style="float:right;"><a href="DisplayCart.jsp" style="padding:2px;text-decoration:none;color:yellow;">Display</a> |  </div>
             <div style="float:right;"><a href="DisplayWish.jsp" style="padding:2px;text-decoration:none;color:yellow;">Wishlist</a> | </div>
              <div style="float:right;"><a href="Orders.jsp" style="padding:2px;text-decoration:none;color:yellow;">Order History</a> | </div>  
              <%
            }
                %>
                <div style="text-align: center;">
                   <form  action="Search.jsp" method="get" style="overflow: auto;">
                   <input type="text" placeholder="Search" name="txt1" style="width:400px;overflow: auto;padding:5px;border-radius: 10px;">
                   <input type="submit" name="btn" value="Search">
                   </form>
               </div>
       </div>
       <div style="border:0px solid red;overflow:auto;background-color:navy;">
           <div style="padding:2px;float:left;width:20%;border:0px solid green;"> 
               <img src="images/logo.JPG" alt="hello" style="alignment-adjust: auto;float:left; width: 200px ; height:100px;">
           </div>
           <div style="padding:2px;float:left;width:75%;border:0px solid blue;"> 
                <a href="Aboutus.jsp" style ="text-decoration: none;alignment-adjust: auto;float:right;padding:20px;color:white;">ABOUT US</a>
                <a href="Contactus.jsp" style ="text-decoration: none;alignment-adjust: auto;float:right;padding:20px;color:white;">CONTACT US</a>
                <a href="Products.jsp" style ="text-decoration: none;alignment-adjust: auto;float:right;padding:20px;color:white;">PRODUCTS</a>
                <a href="Login.jsp" style ="text-decoration: none;margin-left:2px;alignment-adjust: auto;float:right;padding:20px;color:white;">HOME</a>
          </div>
        </div>
      
    </body>
</html>
