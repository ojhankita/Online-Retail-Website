<%-- 
    Document   : Payment
    Created on : 29 May, 2019, 1:22:12 PM
    Author     : Ashutosh
--%>

<%@page import="java.util.Calendar"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .one{
                float:left;  
                width:30%; 
                border: 0px solid red;
                font-size:20px;
                padding:5px;
                text-align:right;
            }
            .two{
                float:left;
                border: 0px solid red;
                width:63%;
                padding:5px;
                margin-left:8px;
            }
            .row{
                margin-top:5px;
                overflow:auto;
                text-align:center;
            }
            .txt{
                height:30px;
                padding:2px;
                width:95%;
            }
        </style>
    </head>
    <body style="background-color:#ffff66;">
        <%
                    if(session.getAttribute("cid")==null)
                        response.sendRedirect("Login.jsp?msg=Pls login first");
        %>
         <jsp:include page="header.jsp" ></jsp:include>
      <form action="SuccessPay.jsp" method="post">
          <div style="border:0px solid red;width:50%;overflow:auto;margin-top:50px;">
                <div class="row">  
                      <div class="one"> Debit Card / Credit Card</div>
                      <div class="two"><input class="txt" type="text" name="txt1"></div>
                </div>
                <div class="row">  
                      <div class="one">CVV </div>
                      <div class="two"><input class="txt" type="text" name="txt2"></div>
                </div>
                <div class="row">  
                      <div class="one">Expiry Date</div>
                      <div class="two">MM
                          <select>
                              <%
                                  
                                  
                                  for(int i=1;i<=12;i++)
                                        out.print("<option>"+i+"</option>");
                              %>
                          </select>
                          YY
                          <select>
                              <%
                                  int y = java.util.Calendar.getInstance().get(java.util.Calendar.YEAR); //new java.util.Date()
                                  
                                  for(int i=y;i<y+10;i++)
                                        out.print("<option>"+i+"</option>");
                              %>
                          </select>
                      </div>
                </div>
                <div class="row">  
                       <input type="submit" name="btn" value="PAY">
                </div>
        </div>
      </form>
                              <div style="margin-top:250px; padding:5px;">          <jsp:include page="footer.jsp" ></jsp:include></div>
    </body>
</html>
