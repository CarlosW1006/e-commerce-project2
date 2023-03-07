<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<html>
<title>deleteproduct</title>
<body>
<%
	String sql1="DELETE FROM `product` WHERE product_id = "+request.getParameter("product_id").toString();
	int rs= con.createStatement().executeUpdate(sql1);
	
	if(rs>0){	 
%>
	<script>
        alert("此產品已刪除，畫面跳轉至後臺管理");
	</script>
<% 
			 response.setHeader("refresh","0.1;URL=backstage.jsp") ; 
			con.close();
			}
%>

</body>
</html>