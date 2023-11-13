<%-- 
    Document   : StoreCust
    Created on : 25 May, 2019, 2:05:42 PM
    Author     : Ashutosh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Login Page</title>
        <script language="JavaScript">
            function validate()
            {
                
                user = document.getElementById("t1").value;                
                pass = document.getElementById("t2").value;
                error1 = document.getElementById("msg1");
                error2 = document.getElementById("msg2");
                
                error1.innerHTML = "";
                error2.innerHTML = "";
                
                if(user.length===0)
                {
                    
                    error1.innerHTML = "user name is mandatory";
                    return false;
                }
                if(pass.length===0)
                {              
                    error2.innerHTML = "password  is mandatory";
                    return false;
                }
                return true;
            }
        </script>
        <style>
            #msg1,#msg2{
                color:red;
            }
        </style>
    </head>
    <body style="background-color:#ffff66;">
          <jsp:include page="header.jsp" ></jsp:include>       
        <div style="margin:auto;margin-top:20px;background-color: aquamarine;width:30%;padding:10px;font-size:20px;text-align:center;">
            <%
                String msg = request.getParameter("msg");
                String mh = request.getParameter("mh");
                    
                if(msg!=null)
                    out.print("<br><h1>"+msg+"</h1></br>");
                
                else if(mh!=null)
                    out.print("<br><h1>"+mh+"</h1></br>");
 
            %>
            <form onsubmit="return validate();" action="Validate.jsp" method="post">
               <!-- <div style="margin-top:5px;">UserName</div> -->
                <div><input type="text" placeholder="user name....." id="t1" name="txt1" style="height:25px;border-radius: 5px;padding: 10px;margin-top:10px;width:300px;"></div>
                <div id="msg1"></div>
                <!--<div  style="margin-top:5px;">Password</div> -->
                <div><input type="password" placeholder="password....." id="t2" name="txt2" style="height:25px;border-radius: 5px;padding: 10px;margin-top:10px;width:300px;"></div>
                <div id="msg2"></div>
                <div>
                    <a href="Signup.jsp" style="text-decoration:none;" >new user? | </a>
                    <a href="Forgot.jsp" style="text-decoration:none;" >forgot password? | </a>
                    <input type="submit" name="btn" value="Login" style="margin-top:5px;">
                    <input type="submit" name="btn" value="Admin" style="margin-top:5px;">
                 <div>
                    
                </div>
            </div>  
            </form>
        </div>
            <div style="padding: 10px; bottom: 0px; position: relative;">
        <jsp:include page="footer.jsp" ></jsp:include>
        </div>
</body>
</html>
