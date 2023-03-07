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

		<div style="position:relative;top:50px;left:50px;">
		<%
			sql="SELECT * FROM `order`";
			ResultSet rs=con.createStatement().executeQuery(sql);
				out.print("查詢如下------------------------------"+"<br>");
			while(rs.next())
			{
					out.print("訂單編號："+rs.getString(3)+"<br>");
					out.print("會員ID："+rs.getString(6)+"<br>");
					out.print("商品名稱："+rs.getString(2)+"<br>");
					out.print("購買數量："+rs.getString(1)+"<br>");
					out.print("總價錢："+rs.getString(4)+"<br>");
					out.print("地址："+rs.getString(5)+"<br>");
					out.print("購買時間："+rs.getString(7)+"<br>");
					
					out.print("--------------------------------------"+"<br>");
			}
			con.close();
			%>
		</div>
	</body>
	

</html>