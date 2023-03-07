/** 提醒是否填入密碼 */

function login() {
    var username = document.getElementById("username");
    var key = document.getElementById("key");

     if (username.value == ""){
         alert("請輸入帳號！");
     } else if (key.value == ""){
         alert("請輸入密碼！");
     } else if (username.value == "admin" && key.value == "12345"){
         window.location.href="back.html";
     }
     else{
         window.location.href="index.html";
     }
}