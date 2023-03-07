<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<% request.setCharacterEncoding("utf-8") ;%>
<%
String product_id=new String(request.getParameter("product_id"));
String product_name=new String(request.getParameter("product_name"));
String product_note=new String(request.getParameter("product_note"));
String product_price=new String(request.getParameter("product_price"));
String product_left=new String(request.getParameter("product_left"));
String product_img=new String(request.getParameter("product_img"));

sql = "SELECT * FROM `product` WHERE product_id='"+product_id+"'" ;
ResultSet rs=con.createStatement().executeQuery(sql);
if(product_id==null||product_id.equals(""))
{

	response.setHeader("refresh","0;URL=proadd.jsp") ;
}
else if(product_name==null||product_name.equals(""))
{
	
	response.setHeader("refresh","0;URL=proadd.jsp") ;
}
else if(rs.next()){%>
	<script>
        alert("此商品已重複，請重新新增");
	</script>
<% 
	response.setHeader("refresh","0.1;URL=proadd.jsp") ;
}
else{%>
	<script>
        alert("新增成功，畫面跳轉至後臺管理，");
	</script>
<% 
	
	sql = "INSERT `product`(product_id,product_name,product_note,product_price,product_left,product_img) values('"+request.getParameter("product_id")+"','"+request.getParameter("product_name")+"','"+request.getParameter("product_note")+"','"+request.getParameter("product_price")+"','"+request.getParameter("product_left")+"','"+request.getParameter("product_img")+"')";
	con.createStatement().execute(sql);
	response.setHeader("refresh","0.1;URL=backstage.jsp") ;
}
%>
