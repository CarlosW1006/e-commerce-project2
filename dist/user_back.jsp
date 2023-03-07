<!DOCTYPE html>

<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@include file="config.jsp" %>

<html>
	<head>
		<title>Pro</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta charset="utf-8">
	</head>

	<body style="background-color: 	#E0E0E0;">

		<div style="position:relative;top:50px;left:50px;">
		<%
			sql="SELECT * FROM `members`";
			ResultSet rs=con.createStatement().executeQuery(sql);
				out.print("查詢如下------------------------------"+"<br>");
			while(rs.next())
			{
					out.print("會員帳號："+rs.getString(1)+"<br>");
					out.print("姓名："+rs.getString(2)+"<br>");
					out.print("Email："+rs.getString(3)+"<br>");
					out.print("Tel："+rs.getString(4)+"<br>");
					
					out.print("--------------------------------------"+"<br>");
			}
			con.close();
			%>
		</div>
	</body>
	

</html>