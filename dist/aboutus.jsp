<!DOCTYPE html>
<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@include file="config.jsp" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>嚼嚼寵食ipet</title>
    <link rel="stylesheet" type="text/css" href="css/us.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
</head>

<body>
    <header>
        <!--標頭-->
        <div class="logo-btn">
            <a href="index.jsp"><img src="img/LOGO.png" alt="something went wrong"></a>
        </div>
		<%
			if (session.getAttribute("id") != null) 
				{
		%>
        <div class="user">
            <span><a href="user.jsp">用戶資料 /</a></span>
        </div>
		<div class="user">
            <span><a href="logout.jsp"> 登出</a></span>
        </div>
		<%
				}
			else
			    {
	    %>
        <div class="menu">
            <span class="login-btn"><a href="login.jsp"> login</a></span>/
            <span class="reg-btn"><a href="register.jsp"> register</a></span>
        </div>
		<%
				}
		%>
    </header>
    <!--選單-->
    <nav>
        <!--6/13 members->about us 新增 member-->
        <ul class="eins"><a href="index.jsp"> Home</a></ul>
        <ul class="zwei"><a href="index.jsp">Product</a></ul>
        <%
			if (session.getAttribute("id") != null) 
				{
		%>
        <ul class="vier"><a href="cart.jsp">Cart</a></ul>
		<%
				}
		%>
    </nav>
    <main>
        <div class="member">
            <h2>組員介紹</h2>
            <div class="our">
                <img src="img/1.png">
                <div class="a">
                    <a href="https://www.facebook.com/profile.php?id=100004066575314"><span class="link">點選前往FB</span></a>
                </div>
                <br>
                <h3>資管二甲 汪庭宏</h3>
            </div>
            <div class="our">
                <img src="img/2.png">
                <div class="a">
                    <a href="https://www.instagram.com/xu.huashengde/"><span class="link">點選前往IG</span></a>
                </div>
                <br>
                <h3>資管二甲 徐聖皓</h3>
            </div>
            <div class="our">
                <img src="img/3.jpg">
                <div class="a">
                    <a href="https://www.instagram.com/josh890309/"><span class="link">點選前往IG</span></a>
                </div>
                <br>
                <h3>資管二乙 黃辰曦</h3>
            </div>
            <div class="our">
                <img src="img/4.jpg">
                <div class="a">
                    <a href="https://www.instagram.com/ashelyia_lin/"><span class="link">點選前往IG</span></a>
                </div>
                <br>
                <h3>資管二乙 林心民</h3>
            </div>
        </div>
</main>
    
</html>
