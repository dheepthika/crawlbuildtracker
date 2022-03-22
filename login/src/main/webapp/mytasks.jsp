<%@page import="java.io.PrintWriter"%>
<%@page import="com.login.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/addtask.css">
<link rel="shortcut icon" type="png" href="Image/favicon.ico">ogopics.png">
<meta charset="ISO-8859-1">
<a href="loginpage.jsp">LOG OUT</a>
<title>Crawl Build Tracker</title>
</head>
<body background ="Image/Watermark.png">
<div class="mytasks">
	<br>

		



			       <%
			           Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/crawlbuildjsp","root","Dheepthi@123");
			           Statement statement = connection.createStatement() ;
			           String username=session.getAttribute("username").toString();
			           String team=session.getAttribute("team").toString();
			           String username_dum="";
			           System.out.println("username : "+username);
			           System.out.println("team : "+team);
			           if (username.equals("dheepthika.m")){
			        	   username_dum="Dheepthika";
			           }
			           if (username.equals("ankita.s")){
			        	   username_dum="Ankita Sawant";
			           }	
			           if (username.equals("lavanya.c.k")){
			        	   username_dum="Lavanya";
			           }	
	
			           if (username.equals("prajakta.p")){
			        	   username_dum="Prajakta";
			           }	
			           
			           if (username.equals("shalini.h.s")){
			        	   username_dum="Shalini";
			           }	
			           if (username.equals("shaziya.f")){
			        	   username_dum="Shaziya";
			           }	
			           if (username.equals("suhas.b")){
			        	   username_dum="Suhas";
			           }	
			           if (username.equals("annie.n")){
			        	   username_dum="Annie Nitha Arakkal";
			           }
			           if (username.equals("suriyakumar.s")){
			        	   username_dum="Suriyakumar";
			           }
			           if (username.equals("veena.s")){
			        	   username_dum="Veena";
			           }
			           if (username.equals("sakshi.m")){
			        	   username_dum="Sakshi Maharana";
			           }
			           if (username.equals("lokesh.k")){
			        	   username_dum="Lokesh kumar Singh";
			           }
			           if (username.equals("sukruth.r")){
			        	   username_dum="Sukruth Reddy";
			           }
			           if (username.equals("sivaprakash")){
			        	   username_dum="Sivaprakash";
			           }
			           if (username.equals("mohamed.r")){
			        	   username_dum="Mohamed R";
			           }
			          ResultSet resultset = statement.executeQuery("select * from taskdetails where (status='In progress' OR status='Not started') and assignedto='"+username_dum+"' and team='"+team+"'") ;
			       %>
			<font style="font-family:Century Gothic; color:#000080; ;font-size:18px;"><br><br><b>My Tasks</b></font>	
			<br><br>
			<TABLE BORDER="1">
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
			      
			      <% while(resultset.next()){ %>
			      <TR>
			       <TD> <%= resultset.getString(1) %></td>
			       <TD> <%= resultset.getString(2) %></TD>
			       <TD> <%= resultset.getString(3) %></TD>
			       <TD> <%= resultset.getString(4) %></TD>
			       <TD> <%= resultset.getString(5) %></TD>
			       <TD> <%= resultset.getString(6) %></TD>
			       <TD> <%= resultset.getString(7) %></TD>
				   <TD> <%= resultset.getString(8) %></TD>
			       <TD> <%= resultset.getString(9) %></TD>
			       <TD> <%= resultset.getString(10) %></TD>
			       <TD> <%= resultset.getString(11) %></TD>
			       <TD> <%= resultset.getString(12) %></TD>
			       <TD> <%= resultset.getString(13) %></TD>
			       <TD> <%= resultset.getString(14) %></TD>
			       <TD> <%= resultset.getString(15) %></TD>
			       <TD> <%= resultset.getString(16) %></TD>
			       <TD> <%= resultset.getString(17) %></TD>
			       <TD> <%= resultset.getString(18) %></TD>
			       <TD> <%= resultset.getString(19) %></TD>
			       <TD> <%= resultset.getString(20) %></TD>
			       
			        <TD>
						<form action="update.jsp" method="post">
							<a href="update.jsp?id=<%=resultset.getString("id")%>"><img src="Image/update.png" class="updateemail1"></a>
						</form>
		
 					</TD>

			      </TR>
			      <% } %>
			     </TABLE>
			    </div>
			    

</body>
</html>

