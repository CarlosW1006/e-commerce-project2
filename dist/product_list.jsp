<!DOCTYPE html>
<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@include file="config.jsp" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>選購產品</title>
    <link href="css/cart.css" rel="stylesheet" type="text/css" rel="external nofollow">
</head>
<%
	sql="SELECT * FROM `product`";
	ResultSet rs =con.createStatement().executeQuery(sql);	
  %>
<body>
    <header>
        <!--標頭-->
        <div>
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
        <ul class="eins"><a href="index.jsp"> Home</a></ul>
    </nav>

    <div class="background" style="height: 100%;padding-bottom:100px;">
	  <h3 style="text-align: center;padding-top:10px;font-size:50px;">選購產品</h3>    
    <div class="background1" style="height: 100%;width: 1400px;padding-bottom:100px;padding-left:290px;">
        <br><br><br><br><br><br>
		<form>
		<table border="1" width="800" style="font-size:30px;">
		<tr bgcolor="#DEB887">
			<td align="center" width="180">產品縮圖</td> 
			<td align="center">產品摘要</td>
			<td align="center" >在線購買</td>
		</tr>
		<%
			String pid,name,price,note,img;
			while (rs.next()){
				img = rs.getString("product_img").trim();
				pid = rs.getString("product_id").trim();
				name = rs.getString("product_name").trim();
				price = rs.getString("product_price").trim();
				note = rs.getString("product_note").trim();
				
				out.println("<tr>");
				out.println("<td><img src='"+ img +"' border=0 height=250 width=200></td>");
				out.println("<td>");
				out.println("產品编號："+ pid +"<br>");
				out.println("產品名稱："+ name +"<br>");
				out.println("產品價格："+ price +"元<br>");
				out.println("產品介紹："+ note +"<br>");
				out.println("</td>");
				out.println("<td><a href='buy.jsp?op=add&pid="+pid+"'>放入購物車</a></td>");
				out.println("</tr>");
			}
		%>
		</table>
		
		</form>
     <br>
	<a href="cart.jsp" style="padding-left:80px;font-size:30px;">查看購物車</a>  
	<a href="buy.jsp?op=clear" style="padding-left:10px;font-size:30px;">清空購物車</a>	
    </div>
    </div>
    <footer>
        <!--footer-->
        <!--左邊（目前留白）-->
        <div class="left"></div>
        <!--中間 內容-->
        <div class="mid">
            <div class="div 1">
                <h2>Contact</h2>
                <h3><a href="">Facebook</a></h3>
                <h3>
                    <a href=""> Instagram</a></h3>
                <h3>
                    <a href=""> Line</a></h3>
            </div>
            <div class="div 2">
                <h2>Product</h2>
                <h3>
                    <a href="">Pricing</a></h3>
                <h3>
                    <a href="">Feature</a></h3>
                <h3>
                    <a href="">Feedback</a></h3>
            </div>
            <div class="div 3">
                <h2>Help</h2>
                <h3>
                    <a href="">FAQ</a></h3>
                <h3>
                    <a href="">Learn More</a></h3>
            </div>
            <div class="div 4">
                <h2>Company</h2>
                <h3>
                    <a href="">About Us</a></h3>
            </div>
        </div>
        <!--右邊 logo-->
        <div class="right"><img src="img/LOGO.png" alt="something went wrong"></div>
    </footer>
</body>
<script src="js/main.js"></script>
<script src="https://kit.fontawesome.com/c796d8845b.js" crossorigin="anonymous"></script>

</html>