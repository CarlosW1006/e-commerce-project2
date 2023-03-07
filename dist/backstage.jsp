<!DOCTYPE html>
<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@include file="config.jsp" %>

<html>
	<head>
		<title>後臺管理</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta charset="utf-8">
	</head>

	<body style="background-color: 	#E0E0E0;">

		<div align="center" style="position:relative;top:150px;">

			<p style="font-size:40px;">你好管理員!<br /><br /></p>

			<p style="font-size:30px;"><a href="user_back.jsp" target="_blank">1.會員資料</a><br/></p>
			<p style="font-size:30px;"><a href="order_back.jsp" target="_blank">2.訂單資料</a><br/></p>
			<p style="font-size:30px;"><a href="proadd.jsp" >3.新增商品</a><br/></p>
			<p style="font-size:30px;"><a href="prodel.jsp" >4.刪除商品</a><br/></br></br></p>
			
			<a href="logout.jsp"><button type="button" style="width:150px;height:100px;font-size:40px;">登出</button></a>

		</div>
	</body>
	

</html>