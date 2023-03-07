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
		<div align="center" style="position:relative;top:90px;">
			<p style="font-size:40px;">你好管理員!<br/><br/></p>
			<tr>
						<form action="insert.jsp">
						<p style="font-size:25px;">
							<td>產品ID：<input name="product_id" type="text" value="" style="width: 10em;" required></td><br/><br/>
							<td>產品名稱：<input name="product_name" type="text" value="" style="width: 10em;" required></td><br/><br/>
							<td>產品價格：<input name="product_price" type="text" value="" style="width: 10em;" required></td><br/><br/>
							<td>產品存貨：<input name="product_left" type="text" value="" style="width: 10em;" required></td><br/><br/>
							<td>產品圖片：<input name="product_img" type="text" value="" style="width: 10em;" required></td><br/><br/>
							<td>產品介紹：<input name="product_note" type="text" value="" style="width: 10em;" required></td><br/><br/>
							<button type="submit" style="width:100px;height:60px;font-size:30px;">新增</button></a>
						</p>	
						</form>
			</tr>

		</div>
	</body>
	

</html>