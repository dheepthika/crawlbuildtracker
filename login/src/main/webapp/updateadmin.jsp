<%@page import="java.io.PrintWriter"%>
<%@page import="com.login.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String id = request.getParameter("id");
String username=request.getParameter("username");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "crawlbuildjsp";
String userid = "root";
String password = "Dheepthi@123";
System.out.println("username : "+username);
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from taskdetails where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
	String team = resultSet.getString("team"); 
	//String requestedby= resultSet.getString("requestedby");
	String task= resultSet.getString("task");
	String assignedto= resultSet.getString("assignedto");
	String status= resultSet.getString("status");
%>
<!DOCTYPE html>
<html>
<body>
<link rel="stylesheet" href="admincss/addtaskadmin.css">
<h1>Update tasks</h1>
<form method="post" action="update-processadmin.jsp">


<br>

<div class="popupupdate">
		<div class="popup-contentupdate">			
			<form action="adminaddtask.jsp" method="post">
			  <div class="input">
			  <font style="font-family:Century-Gothic; colour:#000080 ;font-size:17px;"><label><i> 
			  	ID: </i></label></font><input type="text" placeholder="ID" name ="ID" value="<%=resultSet.getString("id") %>"><br> <br>
			  	
			  	<font style="font-family:Century-Gothic; colour:#000080 ;font-size:17px;"><label><i>
			  	Team: </i></label></font> <select name="Select team" required>
			  	<option value="<%=team %>"><%=team %></option>
			  	<option value="Crawl 2.0">Crawl 2.0</option>
			  	<option value="Selenium">Selenium</option> 	
			  	</select><br><br>
			  	
			  	<font style="font-family:Century-Gothic; colour:#000080 ;font-size:17px;"><label><i> 
			  	Requested by: </i></label><input type="text" name ="Requested by" value="<%=resultSet.getString("requestedby") %>"><br><br>	
			  	
			  	<font style="font-family:Century-Gothic; colour:#000080 ;font-size:17px;"><label><i> 
			  	Received on: </i></label></font><input type="date" name="Received on" value="<%=resultSet.getString("receivedon") %>">
			  	<br><br>	
	
 				<font style="font-family:Century-Gothic; colour:#000080 ;font-size:17px;"><label><i> 
			    Project name: </i></label></font><input type="text" name ="Project name" value="<%=resultSet.getString("projectname") %>">
			    <br> <br>		
			    			  			
			  	<font style="font-family:Century-Gothic; colour:#000080 ;font-size:17px;"><label><i>  
			  	Task: </i></label></font> <select name="Task"  required value="<%=resultSet.getString("task") %>">
			  	<option value="<%=task %>"><%=task %></option>
			  	<option value="Modification breakage">Modification breakage</option>
			  	<option value="L2 Analysis">L2 Analysis</option>
			  	<option value="Development">Development</option>
			  	<option value="Template creation">Template creation</option>
			  	<option value="Template modification">Template modification</option>			  	
			  	</select><br><br>
			  	
				<font style="font-family:Century-Gothic; colour:#000080 ;font-size:17px;"><label><i> 
			  	Script type: </i></label></font> <select name="Script type"  required value="<%=resultSet.getString("scriptype") %>">
			  	 <option>--Script type--</option>
			  	<option value="KC/PL">KC/PL</option>
			  	<option value="PDP">PDP</option>
			  	<option value="AEM">AEM</option>
			  	<option value="AED">AED</option>

			  	</select><br><br>
			  				  	
			  	<font style="font-family:Century-Gothic; colour:#000080 ;font-size:17px;"><label><i> 
			  	Retailer: </i></label></font><input type="text" placeholder="Retailer" name ="Retailer" value="<%=resultSet.getString("retailer") %>"><br> <br>
			  	
				<font style="font-family:Century-Gothic; colour:#000080 ;font-size:17px;"><label><i> 
				Domain: </i></label></font><input type="text" name ="Domain" value="<%=resultSet.getString("domain") %>"><br> <br>
							  	
			  	<font style="font-family:Century-Gothic; colour:#000080 ;font-size:17px;"><label><i> 
			  	Subject: </i></label></font><input type="text" placeholder="Subject" name ="Subject" value="<%=resultSet.getString("subject") %>"><br> <br>
			  	
			  	<font style="font-family:Century-Gothic; colour:#000080 ;font-size:17px;"><label><i> 
			  	Assigned to: </i></label></font> <select name="Assigned to"  required>
			  	<option value="<%=assignedto %>"><%=assignedto %></option>
			  	<option value="Ankita sawant">Ankita sawant</option>
			  	<option value="Dheepthika">Dheepthika</option>
			  	<option value="Lavanya">Lavanya</option>
			  	<option value="Prajakta">Prajakta</option>
			  	<option value="Shalini">Shalini</option>
			  	<option value="Shaziya">Shaziya</option>
			  	<option value="Swetha">Swetha</option>
			  	<option value="Yet a assign">Yet a assign</option>
			  	</select><br><br>
	
			  	<font style="font-family:Century-Gothic; colour:#000080 ;font-size:17px;"><label><i> 
			  	Iteration: </i></label></font><input type="text" name ="Iteration" value="<%=resultSet.getString("iteration") %>">
			  	<br> <br>
			  	
				<font style="font-family:Century-Gothic; colour:#000080 ;font-size:17px;"><label><i>  
				Started on: </i></label></font><input type="date" name="Started on" value="<%=resultSet.getString("startedon") %>">
			  	<br><br>

				<font style="font-family:Century-Gothic; colour:#000080 ;font-size:17px;"><label><i> 
				ETA: </i></label></font><input type="date" name="ETA" value="<%=resultSet.getString("ETA") %>">
			  	<br><br>
	
	
					<font style="font-family:Century-Gothic; colour:#000080 ;font-size:17px;"><label><i>  
				RTA: </i></label></font><input type="date" name="RTA" value="<%=resultSet.getString("rta") %>">
			  	<br><br>
			  	
				<font style="font-family:Century-Gothic; colour:#000080 ;font-size:17px;"><label><i> 
				ATA: </i></label></font><input type="date" name="ATA" value="<%=resultSet.getString("ata") %>">
			  	<br><br>
			  		

	
				<font style="font-family:Century-Gothic; colour:#000080 ;font-size:17px;"><label><i> 
				Comments: </i></label></font><input type="text" placeholder="Comments" name ="Comments" value="<%=resultSet.getString("comments") %>"><br> <br>
	
			  	<font style="font-family:Century-Gothic; colour:#000080 ;font-size:17px;"><label><i> 
			  	Status: </i></label></font> <select name="Status"  required>
			  	<option value="<%=status %>"><%=status %></option>
			  	<option value="Completed">Completed</option>
			  	<option value="In progress">In progress</option>
			  	<option value="Duplicate">Duplicate</option>
			  	<option value="Not started">Not started</option>
			  	<option value="Closed">Closed</option>
			  	</select><br><br>
			  		
				<font style="font-family:Century-Gothic; colour:#000080 ;font-size:17px;"><label><i>  
				JIRA ID: </i></label></font><input type="text" placeholder="JIRA ID" name ="JIRA ID" value="<%=resultSet.getString("jiraid") %>"><br> <br>
			  			  				  				  				  	
				<font style="font-family:Century-Gothic; colour:#000080 ;font-size:17px;"><label><i> 
				Estimation: </i></label></font><input type="number" placeholder="Estimation" name ="Estimation" value="<%=resultSet.getString("estimation") %>"><br>
			  			  				  

				</div>
				<input type="submit" value="UPDATE" class="buttonadmin"></input>
			
			</form>
		</div>
	</div>
	<script>
	document.getElementById("button").addEventListener("click",function(){
		document.querySelector(".popupupdate").style.display="flex";
	});
	document.querySelector(".close").addEventListener("click",function(){
		document.querySelector(".popupupdate").style.display="none";
	});
	</script>
	

</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>