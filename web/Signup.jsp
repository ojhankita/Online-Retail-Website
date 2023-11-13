<%-- 
    Document   : Signup
    Created on : 25 May, 2019, 2:00:27 PM
    Author     : Ashutosh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SIGNUP Page</title>
        <script>    
        function validate()
            {
                
                user = document.getElementById("t1").value;                
                email = document.getElementById("t2").value;
                pass = document.getElementById("t3").value;                
                address = document.getElementById("t4").value;
                phone = document.getElementById("t5").value;                
               
                error1 = document.getElementById("msg1");
                error2 = document.getElementById("msg2");
                error3 = document.getElementById("msg3");
                error4 = document.getElementById("msg4");
                error5 = document.getElementById("msg5");
                
                error1.innerHTML = "";
                error2.innerHTML = "";
                error3.innerHTML = "";
                error4.innerHTML = "";
                error5.innerHTML = "";
                
                
                if(user.length==0)
                {
                    
                    error1.innerHTML = "user name is mandatory";
                    return false;
                }
                if(pass.length==0)
                {
                    
                    error2.innerHTML = "password  is mandatory";
                    return false;
                }
                if(email.length==0)
                {
                    
                    error2.innerHTML = "email  is mandatory";
                    return false;
                }
                if(phone.length==0)
                {
                    
                    error2.innerHTML = "phone  is mandatory";
                    return false;
                }
                if(address.length==0)
                {
                    
                    error2.innerHTML = "address  is mandatory";
                    return false;
                }
                return true;
            }
    </script>
    <style>
        .c1{
            border-radius: 5px;
            padding:5px;
            height:25px;
            width:300px;
        }
        #msg1,#msg2,#msg3,#msg4,#msg5{
                color:red;
            }
    </style>    
    </head>
    <body style="background-color:#ffff66;">
        <jsp:include page="header.jsp" ></jsp:include>  

        <form action="StoreCust.jsp" method="get">
       
       <div style="padding:5px;text-align: center;margin-top:50px; background: cyan; margin:auto; margin-top:40px; width:40%;">
       Enter Name: <input type="text" name="txt1" id="t1" class="c1" >
       <div id="msg1"></div>
       <br>
       Enter email: <input type="text" name="txt2" id="t2" class="c1">
        <div id="msg2"></div>
       <br>
       Enter password: <input type="text" name="txt3" id="t3" class="c1">
       <div id="msg3"></div>
       <br>
       Enter address: <input type="text" name="txt4" id="t4" class="c1">
       <div id="msg4"></div>
       <br>
       Enter phone: <input type="text" name="txt5" id="t5" class="c1">
       <div id="msg5"></div>
       <br>
       <input type=submit name="btn" value="Register Me">
       </div>
       </form>
        <jsp:include page="footer.jsp" ></jsp:include>
    </body>
</html>
