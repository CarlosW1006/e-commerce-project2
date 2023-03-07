
<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@include file="config.jsp" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/main.css">
</head>

<body>
    <header>
        <!--標頭-->
        <div class="logo-btn">
            <a href="index.jsp"><img src="img/LOGO.png" alt="something went wrong"></a>
        </div>
        <div class="user">
            <span><a href="logout.jsp"> 登出</a></span>
        </div>	
    </header>
    <!--選單-->
    
	<main><% 
			request.setCharacterEncoding("UTF-8");
			if(session.getAttribute("id") != null ){
			sql = "SELECT * FROM `members` WHERE id = '" +session.getAttribute("id")+ "'";
			ResultSet rs = con.createStatement().executeQuery(sql);
			rs.next();				
	%>
	<form action="update.jsp">
        <div class="set">	
            <h1>會員資料</h1>
            <hr>
            <h2>會員名稱(更改名稱 / 現在會員名稱)</h2>
            <input type="text" size="40" name="newname" value="<%=rs.getString("newname")%>">
			<input type="text" size="40" disabled="disabled" name="newname" value="<%=rs.getString("newname")%>">
            <hr>
            <h2>密碼(請輸入新的密碼 / 現在密碼)</h2>
            <input type="text" size="40" name="newpwd" value="<%=rs.getString("pwd")%>" >
			<input type="text" size="40" disabled="disabled" name="pwd" value="<%=rs.getString("pwd")%>">
            <hr>
            <h2>電子信箱(更改信箱 / 現在信箱)</h2>
            <input type="email" size="40" maxlength="255" name="email" value="<%=rs.getString("email")%>" >
			<input type="email" size="40" maxlength="255" disabled="disabled" name="email" value="<%=rs.getString("email")%>" >
            <hr>
            <h2>手機號碼(更改號碼 / 現在號碼)</h2>
            <input type="text" size="40" maxlength="10" minlength="10" name="tel" value="<%=rs.getString("tel")%>" >
			<input type="text" size="40" maxlength="10" minlength="10" disabled="disabled" name="tel" value="<%=rs.getString("tel")%>" >
            <hr>
            <button>送出</button>
        </div>
	</form>	<% 
}%>
		</main>
	
    <footer>
        <div class="left"></div>
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
        <div class="right"><img src="img/LOGO.png" alt="something went wrong"></div>
    </footer>
</body>
<script src="js/main.js"></script>
<script src="https://kit.fontawesome.com/c796d8845b.js" crossorigin="anonymous"></script>

</html>