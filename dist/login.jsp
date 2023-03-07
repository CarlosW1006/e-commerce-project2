<!DOCTYPE html>
<html lang="en">
<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@include file="config.jsp" %>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>嚼嚼寵食ipet</title>
    <link rel="stylesheet" type="text/css" href="css/login.css">
    <script src="login.js"></script>
    
</head>
<body>
 <!-- 登入介面-->
 <div class="loginframe">
<header>
         <h3>會員登入</h3>
</header>
         <form action="check.jsp" method="post">
             <img src="img/LOGO.png" class="logo">
             <br>
             <p><label for="username">帳號：</label>
             <input type="text" name="id"class="textfield" id="id" required></p>
             <p><label for="key">密碼：</label>
             <input type="password" class="textfield" name="pwd" id="pwd" required></p>
             <br>
             <div>
             <input type="submit" class="loginbtn" value="登入"> 
            </div>
         </form>
</div>

</body>

</html>