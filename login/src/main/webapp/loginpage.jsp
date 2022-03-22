<%@page import="com.login.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/login-style.css">
<link rel="shortcut icon" type="png" href="Image/favicon.ico">
<meta charset="ISO-8859-1">
<title>Welcome!! login</title>
</head>
<body style="background-color: #282364">

<div id='container' style="background-color: #282364">
<div class='login'>
<img src="Image/logougam.png">
<form action="loginAction.jsp" method="post" name="creadform" onsubmit="toMem(username)">
<font style="font-family:Century Gothic; colour:#282364 ;font-size:13px;">
<input class="cred" type="text" name="username" placeholder="Username"  required><br><br>
<input class="cred" type="password" name="password" placeholder="password" required><br><br>
  	<select required="required" name="Select team" <%=session.getAttribute("team")%> >
  	<option>--Select team--</option>
  	<option value="Crawl 2.0">Crawl 2.0</option>
  	<option value="Selenium">Selenium</option> 	
  	</select>	
		  <br><br>
		 <input class="rememberme" type="checkbox" style="font-family:Century Gothic" >Remember me </input> 
		 
		 <script type="text/javascript">
/*
    Cookie script - John
 
*/
 
function newCookie(username,value,days) {
 var days = 10;   // the number at the left reflects the number of days for the cookie to last
                 // modify it according to your needs
                
 if (days) {
   var date = new Date();
   date.setTime(date.getTime()+(days*24*60*60*1000));
   var expires = "; expires="+date.toGMTString(); }
   else var expires = "";
   document.cookie = username+"="+value+expires+"; path=D:\Dheepthi"; }
 
function readCookie(username) {
   var nameSG = username + "=";
   var nuller = '';
  if (document.cookie.indexOf(nameSG) == -1)
    return nuller;
 
   var ca = document.cookie.split(';');
  for(var i=0; i<ca.length; i++) {
    var c = ca[i];
    while (c.charAt(0)==' ') c = c.substring(1,c.length);
  if (c.indexOf(nameSG) == 0) return c.substring(nameSG.length,c.length); }
    return null; }
 
function eraseCookie(username) {
  newCookie(username,"",1); }
 
function toMem(a) {
    newCookie('username', document.creadform.username.value);     // add a new cookie as shown at left for every
    newCookie('password', document.creadform.password.value);   // field you wish to have the script remember
}
 
function delMem(a) {
  eraseCookie('username');   // make sure to add the eraseCookie function for every field
  eraseCookie('password');
 
   document.creadform.username.value = '';   // add a line for every field
   document.creadform.password.value = ''; }
 
 
function remCookie() {
document.creadform.username.value = readCookie("username");
document.creadform.password.value = readCookie("password");
}
 
// Multiple onload function created by: Simon Willison
// http://simon.incutio.com/archive/2004/05/26/addLoadEvent
function addLoadEvent(func) {
  var oldonload = window.onload;
  if (typeof window.onload != 'function') {
    window.onload = func;
  } else {
    window.onload = function() {
      if (oldonload) {
        oldonload();
      }
      func();
    }
  }
}
 
addLoadEvent(function() {
  remCookie();
});
 
</script>

		<br><br>
		  <button class="btn">Login</button>
	</font>
</form>
</div>
</div>
</body>
</html>