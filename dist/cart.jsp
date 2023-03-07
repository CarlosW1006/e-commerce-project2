<!DOCTYPE html>
<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@include file="config.jsp" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>購物車</title>
    <link href="css/cart.css" rel="stylesheet" type="text/css" rel="external nofollow">
</head>
<%
	sql = "select * from cart";
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
            <span class="login-btn"><a href="login.html"> login</a></span>/
            <span class="reg-btn"><a href="register.html"> register</a></span>
        </div>
		<%
				}
		%>
    </header>
    <!--選單-->
    <nav>
        <ul class="eins"><a href="index.jsp"> Home</a></ul>
    </nav>

    <div class="background" style="height: 100%;padding-bottom:100px;"><h3 style="text-align: center;padding-top:10px;font-size:50px;">Cart</h3>
        
    <div class="background1" style="height: 100%;padding-bottom:100px;">
        <br><br><br><br><br><br>
		<form style="padding-left:250px;">
		<p style="padding-bottom: 30px;font-size:30px;"><b>我的購物車</b></p>
    <hr width="800">
	<table border="1" width="800" style="margin-top: 30px;font-size:25px;text-align:center;">
		<tr bgcolor="#DEB887">
			<td align="center" width="150">產品名稱</td> 
			<td align="center">產品單價</td>
			<td align="center" width="100">購買數量</td>
			<td align="center" width="100">金額</td>
			<td align="center" width="150">編輯</td>
		</tr>
		<%
			String cid,pname,price,num,total;
			while (rs.next()){
				cid = rs.getString("cid").trim();
				pname = rs.getString("pname").trim();
				price = rs.getString("pprice").trim();
				num = rs.getString("pnum").trim();
				total = rs.getString("total").trim();
				
				out.println("<tr>");
				out.println("<td>"+ pname +"</td>");
				out.println("<td>"+ price +"</td>");
				out.println("<td><input type=text value="+ num +" onChange=\"updateNum('"+cid+"',this.value,'"+price+"')\"></td>");
				out.println("<td>"+ total +"</td>");
				out.println("<td><a href='buy.jsp?op=del&cid="+cid+"'>退回商品架</a></td>");
				out.println("</tr>");
			}
		%>			
	</table>
	<br>
	<!--<div>總計:</div>-->
	<br>
	<a href="product_list.jsp" style="padding-left:20px;font-size:25px;">繼續購物</a>  
	<a href="buy.jsp?op=clear" style="padding-left:10px;font-size:25px;">清空購物車</a>	
	
		</form>
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
<script>
  	function updateNum(cid,num,price){
  		var url = "buy.jsp?op=update&cid="+cid+"&num="+num+"&price="+price;
  		window.location = url;
  	}
  </script>
</html>