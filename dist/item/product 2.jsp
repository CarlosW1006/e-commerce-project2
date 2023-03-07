<!DOCTYPE html>
<%@page contentType="text/html;charset=UTF-8"%>
<%@ page import = "java.sql.*" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>紫蘇雞肉</title>
    <link href="../css/product.css" rel="stylesheet" type="text/css" rel="external nofollow">
</head>
<body>
    <header>
        <!--標頭-->
        <div class="logo-btn">
            <a href="../index.jsp"><img src="../img/LOGO.png" alt="something went wrong"></a>
        </div>
		<%
			if (session.getAttribute("id") != null) 
				{
		%>	
        <div class="user">
            <span><a href="../user.jsp">用戶資料 /</a></span>
        </div>
		<div class="user">
            <span><a href="../logout.jsp"> 登出</a></span>
        </div>
		<%
				}
			else
			    {
	    %>	
        <div class="menu">
            <span class="login-btn"><a href="../login.jsp"> login</a></span>/
            <span class="reg-btn"><a href="../register.jsp"> register</a></span>
        </div>
		<%
				}
		%>
    </header>

    <div class="background" style="height: 100%;padding-bottom: 100px;">
        <br><br><br><br>
    <div class="background1" style="height:100%;padding-bottom: 600px;" >
        <br><br><br><br><br><br>    
    <div class="M1"> <img src="../img/no2.png" width="450px"> </div>
    <div class="M2">
     <h2>【紫蘇雞肉】</h2><br>	
     <p>📯0添加任何色素香料，使用100%鮮食等級肉品製作<br>
        📯打開是天然的肉香 最吸引貓貓 好吃又營養<br> 
        📯每一塊肉品都經過仔細挑選、剔除雜質脂肪<br> 
        📯經過20小時低溫烘焙 把食材的養分都牢牢鎖在裡面<br>
        📯通過HACCP、ISO22000食品衛生安全認證 最安心<br>
        <br>
        【營養補充·雞肉燕麥】<br>
        主要成分：鮮食等級雞肉、紫蘇葉<br>
        重量：50克<br> 
        <br>
        【寵食小知識】<br>
        嚼嚼嚴選100%鮮食等級的雞肉，製程中不另外添加任何化學複方，未使用任何<br>添加物、色素、防腐劑，確保營養不流失，就是要給毛孩吃得美味天然又健康！<br>
        <br>
        紫蘇內含有紫蘇醛，有助於分泌消化酵素和促進食慾，也富有a亞麻酸可以藉由<br>身體轉換成DHA,EHA 改善血液流通,預防動脈硬化。<br>
        <br>
        嚼嚼將紫蘇雞肉口味做成圓餅狀，方便剝成數塊給挑食的貓咪、狗狗或是年長食<br>慾不振的毛孩食用，亦可添加至飼料中鼓勵毛孩多多吃飯～。<br>       
        <br>
        ■ 注意事項 ■ <br>
        1. 為避免毛孩食用時噎到喉嚨，請依毛孩們的體型大小，撥開後餵食。<br>
        2. 本產品顏色可能深淺不一，其色澤差異屬於本身食材及烹調自然現象<br>
        3. 開封後關緊封口並建議冷藏，儘速食用完畢。<br>
        4.內置脫氧劑請勿食用。<br> 
        </p> <br><br><br>
    </div>
        <!--購買鍵在這!!!-->
        <br>
        <br>
		<%
			if (session.getAttribute("id") != null) 
				{
		%>	
       <a href="../product_list.jsp"><input type="button" value="購買" id="buying_btn"></a>
	   <%
				}
			else
			    {
	    %>	
		<input type="button" value="購買" id="buying_btn" onclick="openWindows()">
		<%
				}
		%>
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
        <div class="right"><img src="../img/LOGO.png" alt="something went wrong"></div>
    </footer>
</body>
<script src="js/main.js"></script>
<script src="https://kit.fontawesome.com/c796d8845b.js" crossorigin="anonymous"></script>
<script>
function openWindows(){
 window.alert('請先登入會員~');
}
</script>
</html>