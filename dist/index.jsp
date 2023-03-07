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
    <link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="css/ad.css">
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
		<%
				}
		%>
        </div>
    </header>
    <!--選單-->
    <nav>
        <ul class="eins"><a href="index.jsp"> Home</a></ul>
        <ul class="zwei"><a href="#sec">Product</a></ul>
        <ul class="drei"><a href="aboutus.jsp">Members</a></ul>
		<%
			if (session.getAttribute("id") != null) 
				{
		%>	
        <ul class="vier"><a href="cart.jsp">Cart</a></ul>
		<%
				}
		%>
    </nav>
    <!--主頁-->
    <main>
        <!--廣告0615-->
        <div id="pic">
            <br>
            <div class="container">
                   <div>
                    <img src="img/cat1.png" class="cat">
                   </div> 
                   <div>
                    <img src="img/cat2.png" class="cat">
                   </div>     
                   <div>
                   <img src="img/dog1.png" class="cat">
                </div>
            </div>
        </div>
        <hr>
		
        <!--介紹-->
        <div id="sec">
            <div class="intro"  style="padding-left:180px">
                <div class="card" >
                    <br>
					<%
			           if (session.getAttribute("id") != null) 
				            {
		            %>	
                    <a href="product_list.jsp"><input  type="button"  id="buy_btn" value="購買" ></a>&nbsp;
					<%
				            }
		            %>
		<span>原味雞肉</span>
                    <a href="item/product 1.jsp"><img src="img/no1.png" class="img"></a>
                    <div class="price"><p>價格：150</p></div>
                </div>
                <br>
                <div class="card">
                    <br>
                    <%
			           if (session.getAttribute("id") != null) 
				            {
		            %>	
                    <a href="product_list.jsp"><input  type="button" value="購買" id="buy_btn" ></a>&nbsp;
					<%
				            }
		            %>
					<span>紫蘇雞肉</span>
                    <a href="item/product 2.jsp"><img src="img/no2.png" class="img"></a>
                    <div class="price"><span>價格：150</span></div>
                </div>
                <br>
                <div class="card">
                    <br>
                    <%
			           if (session.getAttribute("id") != null) 
				            {
		            %>	
                    <a href="product_list.jsp"><input  type="button" value="購買" id="buy_btn" ></a>&nbsp;
					<%
				            }
		            %>
					<span>雞胗片</span>
                    <a href="item/product 3.jsp"><img src="img/no3.png" class="img"></a>
                    <div class="price"><span>價格：150</span></div>
                </div>
                <br>
                <div class="card">
                    <br>
                    <%
			           if (session.getAttribute("id") != null) 
				            {
		            %>	
                    <a href="product_list.jsp"><input  type="button" value="購買" id="buy_btn" ></a>&nbsp;
					<%
				            }
		            %>
					<span>鮪魚雞丁</span>
                    <a href="item/product 4.jsp"><img src="img/no4.png" class="img"></a>
                    <div class="price"><span>價格：150</span></div>     
                </div>
                <br>
                <div class="card"">
                    <br>
                    <%
			           if (session.getAttribute("id") != null) 
				            {
		            %>	
                    <a href="product_list.jsp"><input  type="button" value="購買" id="buy_btn" ></a>&nbsp;
					<%
				            }
		            %>
					<span>牛筋片</span>
                    <a href="item/product 5.jsp"><img src="img/no5.png" class="img"></a>
                    <div class="price"><span>價格：150</span></div>
                    <br>
                </div>
        </div>
        <hr>
        <!--購物車-->
		            <%
			          if (session.getAttribute("id") != null) 
				           {
		            %>	
        <div class="cart"></div>
        <button class="cart"><a href="cart.jsp" ><i class="fas fa-shopping-cart"></i></a></button>
		            <%
				            }
		            %>
    </main>
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
		<script>
		function showalert(){
    alert("若想購買此商品，請於右邊訂單填寫~");
  }</script>
		<!--訪客計數器start-->
<%
	sql = "SELECT * FROM counter";
	PreparedStatement pstmt = con.prepareStatement(sql);
	ResultSet rs=pstmt.executeQuery();
	rs.next();
	int count = Integer.valueOf(rs.getString(1));
	if(session.isNew())
		count++;
	sql = "UPDATE counter SET `count`="+ String.valueOf(count); 
	con.createStatement().execute(sql);
    out.print("<span>訪客數: "+count +"&nbsp&nbsp</span>");	
%>
		<!--訪客計數器end-->
    </footer>
</body>
<script src="js/main.js"></script>
<script src="https://kit.fontawesome.com/c796d8845b.js" crossorigin="anonymous"></script>

</html>