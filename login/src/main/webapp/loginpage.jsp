<%@page import="com.login.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/login-style.css">
<link rel="shortcut icon" type="png" href="Image/Crawl Build Tracker Logopics.png">
<meta charset="ISO-8859-1">
<title>Welcome!! login</title>
</head>
<body>
<div id='container'>
<div class='login'>
<form action="loginAction.jsp" method="post">
<font style="font-family:Century-Gothic; colour:#000080 ;font-size:17px;">
<input type="text" name="username" placeholder="Username"  required><br><br>
<input type="password" name="password" placeholder="password" required><br><br>
  	<select required="required" name="Select team" <%=session.getAttribute("team")%> >
  	<option>--Select team--</option>
  	<option value="Crawl 2.0">Crawl 2.0</option>
  	<option value="Selenium">Selenium</option> 	
  	</select>
	
		  <br><br><button class="btn">Login</button>
	</font>
</form>
</div>
</div>
</body>
</html>