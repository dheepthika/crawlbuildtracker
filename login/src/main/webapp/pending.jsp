<%@page import="java.io.PrintWriter"%>
<%@page import="com.login.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/addtask.css">
<link rel="shortcut icon" type="png" href="Image/favicon.ico">
<meta charset="ISO-8859-1">
<a href="loginpage.jsp">LOG OUT</a>
<title>Crawl Build Tracker</title>
</head>
<body background ="Image/Watermark.png">
<div class="mytasks1">

			       <%
			           Connection connection1 = DriverManager.getConnection(
			            "jdbc:mysql://localhost:3306/crawlbuildjsp","root","Dheepthi@123");
			           Statement statement1 = connection1.createStatement() ;
			           String username1=session.getAttribute("username").toString();
			           String team1=session.getAttribute("team").toString();
			           String username1_dum="";
			           
			          ResultSet resultset1 = statement1.executeQuery("select * from taskdetails where assignedto='Yet to assign' and team='"+team1+"'") ;
			       %>
			<font style="font-family:Century Gothic; color:#000080 ;font-size:18px;"><br><br><b>Pending Tasks</b></font>	
			<br><br>
			<TABLE BORDER="1" WIDTH="100%">
			      <TR>
			      <TH>ID</TH>
			      <TH>Team</TH>
			      <TH>Requested by</TH>
			      <TH>Received on</TH>
			      <TH>Project name</TH>
			      <TH>Task</TH>
			      <TH>Script type</TH>
			      <TH>Retailer</TH>
			      <TH>Domain</TH>
			      <TH>Subject</TH>
			      <TH>Pic</TH>
			      <TH>Iteration</TH>
			      <TH>Started on</TH>
			      <TH>ETA</TH>
			      <TH>RTA</TH>
			      <TH>ATA</TH>
			      <TH>Comments</TH>
			      <TH>JIRA ID</TH>
			      <TH>Estimation</TH>
			      <TH>Status</TH>
			      <TH>Edit</TH>

			      </TR>
			      <% while(resultset1.next()){ %>
			      <TR>
			       <TD> <%= resultset1.getString(1) %></td>
			       <TD> <%= resultset1.getString(2) %></TD>
			       <TD> <%= resultset1.getString(3) %></TD>
			       <TD> <%= resultset1.getString(4) %></TD>
			       <TD> <%= resultset1.getString(5) %></TD>
			       <TD> <%= resultset1.getString(6) %></TD>
			       <TD> <%= resultset1.getString(7) %></TD>
				   <TD> <%= resultset1.getString(8) %></TD>
			       <TD> <%= resultset1.getString(9) %></TD>
			       <TD> <%= resultset1.getString(10) %></TD>
			       <TD> <%= resultset1.getString(11) %></TD>
			       <TD> <%= resultset1.getString(12) %></TD>
			       <TD> <%= resultset1.getString(13) %></TD>
			       <TD> <%= resultset1.getString(14) %></TD>
			       <TD> <%= resultset1.getString(15) %></TD>
			       <TD> <%= resultset1.getString(16) %></TD>
			        <TD> <%= resultset1.getString(17) %></TD>
			         <TD> <%= resultset1.getString(18) %></TD>
			          <TD> <%= resultset1.getString(19) %></TD>
			           <TD> <%= resultset1.getString(20) %></TD>
			         <TD>
			         	<form action="update.jsp" method="post">
							<a href="update.jsp?id=<%=resultset1.getString("id")%>"><img src="Image/update.png" class="updateemail1"></a>
						</form>
						</TD>
			       
			      </TR>
			      <% } %>
			     </TABLE>
			    </div>	
</body>
</html>