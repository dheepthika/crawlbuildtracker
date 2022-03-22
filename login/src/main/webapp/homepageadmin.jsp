<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.login.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="admincss/addtaskadmin.css">
<link rel="shortcut icon" type="png" href="Image/favicon.ico">
<meta charset="ISO-8859-1">
<a href="loginpage.jsp">LOG OUT</a>
<title>Crawl Build Tracker</title>
</head>
<body background ="Image/Watermark.png">
<div class="containeradminadd">
<a href="#" class="buttonadminadd" id="buttonadminadd"><img src="Image/add user.png" class="imagees"></a>
</div>
<div class="popupadminadd">
		<div class="popup-contentadminadd">
			<div class="closeadminadd">  +</div>
			<form action="adduser.jsp" method="post">
			  <div class="inputadmin">
			  	<font style="font-family:Century-Gothic; colour:#000080 ;font-size:17px;"><i><b> Username: </b></i></font><input type="text" placeholder="Username" name ="Usernamenew"><br> <br>
			  	<font style="font-family:Century-Gothic; colour:#000080 ;font-size:17px;"><i><b> Password: </b></i></font><input type="password" placeholder="Password" name ="Passwordnew"><br> <br>			  	
			  			  				  
				</div>
				<input type="submit" value="ADD USER" class="buttonadminadd1"></input>
			
			</form>
		</div>
	</div>
	<script>
	document.getElementById("buttonadminadd").addEventListener("click",function(){
		document.querySelector(".popupadminadd").style.display="flex";
	});
	document.querySelector(".closeadminadd").addEventListener("click",function(){
		document.querySelector(".popupadminadd").style.display="none";
	});
	</script>
	


	<div class="containeradmin">
	<a href="#" class="buttonadmin1" id="buttonadmin"><img src="Image/add.png" class="imageess"></a>
	
	</div>
	
	
	<div class="popupadmin">
		<div class="popup-contentadmin">
			<div class="closeadmin">  +</div>
			<form action="addtaskadmin.jsp" method="post">
			  <div class="inputadmin">
			  	<font style="font-family:Century-Gothic; colour:#000080 ;font-size:17px;"><label><i> Team: </i></label></font> <select name="Select team" required>
			  	 <option>--Select team--</option>
			  	<option value="Crawl 2.0">Crawl 2.0</option>
			  	<option value="Selenium">Selenium</option> 	
			  	
			  	</select><br><br>
			  	
			  	<font style="font-family:Century-Gothic; colour:#000080 ;font-size:17px;"><label><i> Requested by: </i></label></font>
			  	<input type="text" placeholder="Requested by" name ="Requested by"><br> <br>

			  	
			  	<font style="font-family:Century-Gothic; colour:#000080 ;font-size:17px;"><label><i> Received on: </i></label></font><input type="date" name="Received on">
			  	<br><br>
			  	<font style="font-family:Century-Gothic; colour:#000080 ;font-size:17px;"><label><i> Project name: </i></label></font><input type="text" placeholder="Project name" name ="Project name"><br> <br>	
			  			
			  	<font style="font-family:Century-Gothic; colour:#000080 ;font-size:17px;"><label><i> Task: </i></label></font> <select name="Task"  required>
			  	 <option>--Select an task--</option>
			  	<option value="Modification breakage">Modification breakage</option>
			  	<option value="L2 Analysis">L2 Analysis</option>
			  	<option value="Development">Development</option>
			  	<option value="Template creation">Template creation</option>
			  	<option value="Template modification">Template modification</option>				  	
			  	</select><br><br>
			  	
			  	<font style="font-family:Century-Gothic; colour:#000080 ;font-size:17px;"><label><i> Script type: </i></label></font> <select name="Script type"  required>
			  	 <option>--Script type--</option>
			  	<option value="KC/PL">KC/PL</option>
			  	<option value="PDP">PDP</option>
			  	<option value="AEM">AEM</option>
			  	<option value="AED">AED</option>

			  	</select><br><br>
			  	
			  	<font style="font-family:Century-Gothic; colour:#000080 ;font-size:17px;"><label><i> Retailer: </i></label></font><input type="text" placeholder="Retailer" name ="Retailer"><br> <br>
			  	<font style="font-family:Century-Gothic; colour:#000080 ;font-size:17px;"><label><i> Domain: </i></label></font><input type="text" placeholder="Domain" name ="Domain"><br> <br>
			  	<font style="font-family:Century-Gothic; colour:#000080 ;font-size:17px;"><label><i> Subject: </i></label></font><input type="text" placeholder="Subject" name ="Subject"><br> <br>
			  	
			  	<font style="font-family:Century-Gothic; colour:#000080 ;font-size:17px;"><label><i> Assigned to: </i></label></font> <select name="Assigned to"  required>
			  	 <option>--Assigned to--</option>
			  	<option value="Ankita Sawant">Ankita Sawant</option>
			  	<option value="Dheepthika">Dheepthika</option>
			  	<option value="Lavanya">Lavanya</option>
			  	<option value="Prajakta">Prajakta</option>
			  	<option value="Shalini">Shalini</option>
			  	<option value="Shaziya">Shaziya</option>
			  	<option value="Swetha">Swetha</option>
			    <option value="Suhas">Suhas</option>
			  	<option value="Annie Nitha Arakkal">Annie Nitha Arakkal</option>
			  	<option value="Suriyakumar">Suriyakumar</option>
			  	<option value="Veena">Veena</option>
			  	<option value="Sakshi Maharana">Sakshi Maharana</option>
			  	<option value="Lokesh kumar Singh">Lokesh kumar Singh</option>
			  	<option value="Sukruth Reddy">Sukruth Reddy</option>
			  	<option value="Sivaprakash">Sivaprakash</option>
			  	<option value="Mohamed">Mohamed</option>			  	
			  	<option value="Yet to assign">Yet to assign</option>
			  	</select><br><br>
				  		
        <font style="font-family:Century-Gothic; colour:#000080 ;font-size:17px;"><label><i> Iteration: </i></label></font><input type="text" placeholder="Iteration" name ="Iteration"><br> <br>
			  		
				
				<font style="font-family:Century-Gothic; colour:#000080 ;font-size:17px;"><label><i> ETA: </i></label></font><input type="date" name="ETA">
			  	<br><br>
	
				
	
			
			  	<font style="font-family:Century-Gothic; colour:#000080 ;font-size:17px;"><label><i> Status: </i></label></font> <select name="Status"  required>
			  	<option>--Status--</option>
			  	<option value="Completed">Completed</option>
			  	<option value="In progress">In progress</option>
			  	<option value="Duplicate">Duplicate</option>
			  	<option value="Not started">Not started</option>
			  	<option value="Closed">Closed</option>
			  	</select><br><br>
			  		
				  				  				  	
				<font style="font-family:Century-Gothic; colour:#000080 ;font-size:17px;"><label><i> Estimation: </i></label></font><input type="number" placeholder="Estimation" name ="Estimation"><br>
			  			  				  

				</div>
				<input type="submit" value="ADD TASK" class="buttonadmin"></input>
				
			
			</form>
		</div>
	</div>
	<script>
	document.getElementById("buttonadmin").addEventListener("click",function(){
		document.querySelector(".popupadmin").style.display="flex";
	});
	document.querySelector(".closeadmin").addEventListener("click",function(){
		document.querySelector(".popupadmin").style.display="none";
	});
	</script>
	<br>
	<font style="font-family:Century Gothic; color:#000080 ;font-size:30px;"> <img src="Image/logo.png" class="water"> </font>
	<form action="" name="table">
	<div class="mytasksadmin">

			      
			<font style="font-family:Century Gothic; colour:#000080 ;font-size:21px;"><br><br><img src="Image/task.png" class="updateemail">All Tasks</font>	
			<br><br>
			<TABLE>
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
			      <TH>Mail</TH>
			      </TR>
			      <TR>
				      <TD>
				     	 <select name="id admin" <%=session.getAttribute("id admin")%> onchange="table.submit()">
				    	 	<option selected="selected" value="all">ALL</option>
							       <%
							           Connection connection1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/crawlbuildjsp","root","Dheepthi@123");
							           Statement statement1 = connection1.createStatement() ;
							           String strQuery = "SELECT * FROM taskdetails where ";

							           String id="all";
							           int i=0;
							           
							           try{
							        	   id=request.getParameter("id admin");								        	   
							           }catch (Exception e){	
							        	   id="all";
							           }


							           try{
									           if (!id.equals("all")){
									   			if (i==0){
									   				i=1;
									   				strQuery=strQuery+" id = '"+id+"'";
									   			}else{
									   				i++;
									   				strQuery=strQuery+" and id = '"+id+"'";
									   			}
									   		  }
							           }catch (Exception e){
							        	   
							           }
							           
							          ResultSet resultset1 = statement1.executeQuery("select DISTINCT id from taskdetails") ;
							          while (resultset1.next()){
							      		 %>		
							      		 <option><%=resultset1.getString("id")%></option>	
							      		<% }
							          
							          %>
				           
			          </select>
				      </TD>

				      <TD>
					      <select name="team_admin" <%=session.getAttribute("team_admin")%> onchange="table.submit()">
					      <option selected="selected" value="all">ALL</option>
					       <%
					        
					           Connection connection2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/crawlbuildjsp","root","Dheepthi@123");
					           Statement statement2 = connection2.createStatement() ;
					           
					           String teamadmin="all";
					           try{
					        	   teamadmin=request.getParameter("team_admin");					        	   
					           }catch (Exception e){					        	  
					           }
					           
					           try{
							           if (!teamadmin.equals("all")){
							   			if (i==0){
							   				i=1;
							   				strQuery=strQuery+" team = '"+teamadmin+"'";
							   			}else{
							   				i++;
							   				strQuery=strQuery+" and team = '"+teamadmin+"'";
							   			}
							           }
					           }catch (Exception e){
					        	   
					           }
					           
					          ResultSet resultset2 = statement2.executeQuery("select DISTINCT team from taskdetails") ;
					          while (resultset2.next()){
					      		 %>		
					      		 <option><%=resultset2.getString("team")%></option>	
					      		 
					      		<% }
					          
					          %>
					       
					       </select>
				    </TD>
				    <TD>
						 <select name="Requested by admin" <%=session.getAttribute("Requested by admin") %>  onchange="table.submit()">
						    <option selected="selected" value="all">ALL</option>
						       <%
						           Connection connection3= DriverManager.getConnection("jdbc:mysql://localhost:3306/crawlbuildjsp","root","Dheepthi@123");
						           Statement statement3 = connection3.createStatement() ;
						           String requestedbyadmin="all";
						           try{
						        	   requestedbyadmin=request.getParameter("Requested by admin");					        	   
						           }catch (Exception e){					        	  
						           }
						           
						           try{
								           if (!requestedbyadmin.equals("all")){
								   			if (i==0){
								   				i=1;
								   				strQuery=strQuery+" requestedby = '"+requestedbyadmin+"'";
								   			}else{
								   				i++;
								   				strQuery=strQuery+" and requestedby = '"+requestedbyadmin+"'";
								   			}
								   		 }
						           }catch (Exception e){
						        	   
						           }
						           
						          ResultSet resultset3 = statement3.executeQuery("select Distinct requestedby  from taskdetails") ;
						          while (resultset3.next()){
						      		 %>		
						      		 <option><%=resultset3.getString("requestedby")%></option>	
						      		 
						      		<% }
						          
						          %>
						    
						 </select>
					       
					         
				    </TD>
			        <TD>
			     		 <select name="Received on admin" <%=session.getAttribute("Received on admin") %> onchange="table.submit()" >
			     			<option selected="selected" value="all">ALL</option>
						       <%
						           Connection connection4= DriverManager.getConnection("jdbc:mysql://localhost:3306/crawlbuildjsp","root","Dheepthi@123");
						           Statement statement4 = connection4.createStatement() ;
						           
						           String receivedonadmin="all";
						           try{
						        	   receivedonadmin=request.getParameter("Received on admin");					        	   
						           }catch (Exception e){					        	  
						           }
						           
						           try{
								           if (!receivedonadmin.equals("all")){
								   			if (i==0){
								   				i=1;
								   				strQuery=strQuery+" receivedon = '"+receivedonadmin+"'";
								   			}else{
								   				i++;
								   				strQuery=strQuery+" and receivedon = '"+receivedonadmin+"'";
								   			}
								   		 }	
						           }catch (Exception e){
						           
						           }
						         
						          ResultSet resultset4 = statement4.executeQuery("select Distinct receivedon from taskdetails") ;
						          while (resultset4.next()){
						      		 %>		
						      		 <option><%=resultset4.getString("receivedon")%></option>	
						      		<% }
						          
						          %>
			          		
			          	</select>
			         </TD>
			         <TD>
					      <select name="projectname_admin" <%=session.getAttribute("projectname_admin")%> onchange="table.submit()">
					      <option selected="selected" value="all">ALL</option>
					       <%
					        
					           Connection connection4_1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/crawlbuildjsp","root","Dheepthi@123");
					           Statement statement4_1 = connection4_1.createStatement() ;
					           
					           String projectnameadmin="all";
					           try{
					        	   projectnameadmin=request.getParameter("projectname_admin");					        	   
					           }catch (Exception e){					        	  
					           }
					           
					           try{
							           if (!projectnameadmin.equals("all")){
							   			if (i==0){
							   				i=1;
							   				strQuery=strQuery+" projectname = '"+projectnameadmin+"'";
							   			}else{
							   				i++;
							   				strQuery=strQuery+" and projectname = '"+projectnameadmin+"'";
							   			}
							           }
					           }catch (Exception e){
					        	   
					           }
					           
					          ResultSet resultset4_1 = statement4_1.executeQuery("select DISTINCT projectname from taskdetails") ;
					          while (resultset4_1.next()){
					      		 %>		
					      		 <option><%=resultset4_1.getString("projectname")%></option>	
					      		 
					      		<% }
					          
					          %>
					       
					       </select>
				    </TD>
			         <TD>
			       			<select name="Task admin" <%=session.getAttribute("Task admin") %> onchange="table.submit()" >
			      				<option selected="selected" value="all">ALL</option>
								       <%
								       
								           Connection connection5= DriverManager.getConnection("jdbc:mysql://localhost:3306/crawlbuildjsp","root","Dheepthi@123");
								           Statement statement5 = connection5.createStatement() ;
								           
								           String taskadmin="all";
								           try{
								        	   taskadmin=request.getParameter("Task admin");					        	   
								           }catch (Exception e){					        	  
								           }
								           
								           try{
										           if (!taskadmin.equals("all")){
										   			if (i==0){
										   				i=1;
										   				strQuery=strQuery+" task = '"+taskadmin+"'";
										   			}else{
										   				i++;
										   				strQuery=strQuery+" and task = '"+taskadmin+"'";
										   			}
										   		 }		
								           }catch (Exception e){}
								         
								          ResultSet resultset5 = statement5.executeQuery("select Distinct task from taskdetails") ;
								          while (resultset5.next()){
								      		 %>		
								      		 <option><%=resultset5.getString("task")%></option>	
								      		<% }
								          
								          %>
			          			
			          		</select>
			         </TD>
			         <TD>
					      <select name="scriptype_admin" <%=session.getAttribute("scriptype_admin")%> onchange="table.submit()">
					      <option selected="selected" value="all">ALL</option>
					       <%
					        
					           Connection connection5_1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/crawlbuildjsp","root","Dheepthi@123");
					           Statement statement5_1 = connection5_1.createStatement() ;
					           
					           String scriptypeadmin="all";
					           try{
					        	   scriptypeadmin=request.getParameter("scriptype_admin");					        	   
					           }catch (Exception e){					        	  
					           }
					           
					           try{
							           if (!scriptypeadmin.equals("all")){
							   			if (i==0){
							   				i=1;
							   				strQuery=strQuery+" scriptype = '"+scriptypeadmin+"'";
							   			}else{
							   				i++;
							   				strQuery=strQuery+" and scriptype = '"+scriptypeadmin+"'";
							   			}
							           }
					           }catch (Exception e){
					        	   
					           }
					           
					          ResultSet resultset5_1 = statement5_1.executeQuery("select DISTINCT scriptype from taskdetails") ;
					          while (resultset5_1.next()){
					      		 %>		
					      		 <option><%=resultset5_1.getString("scriptype")%></option>	
					      		 
					      		<% }
					          
					          %>
					       
					       </select>
				    </TD>	
			     	 <TD>
			      			<select name="Retailer admin" <%=session.getAttribute("Retailer admin") %>  onchange="table.submit()">
			     				<option selected="selected" value="all">ALL</option>
								       <%
								           Connection connection6= DriverManager.getConnection("jdbc:mysql://localhost:3306/crawlbuildjsp","root","Dheepthi@123");
								           Statement statement6 = connection6.createStatement() ;
								           String retaileradmin="all";
								           try{
								        	   retaileradmin=request.getParameter("Retailer admin");					        	   
								           }catch (Exception e){					        	  
								           }
								           
								           try{
										           if (!retaileradmin.equals("all")){
										   			if (i==0){
										   				i=1;
										   				strQuery=strQuery+" retailer = '"+retaileradmin+"'";
										   			}else{
										   				i++;
										   				strQuery=strQuery+" and retailer = '"+retaileradmin+"'";
										   			}
										   		 }	
								           }catch (Exception e){}
								           
								         
								          ResultSet resultset6 = statement6.executeQuery("select Distinct retailer from taskdetails") ;
								          while (resultset6.next()){
								      		 %>		
								      		 <option><%=resultset6.getString("retailer")%></option>	
								      		<% }
								          
								          %>
			          			
			          		</select>
			        </TD>
			        <TD>
					      <select name="domain_admin" <%=session.getAttribute("domain_admin")%> onchange="table.submit()">
					      <option selected="selected" value="all">ALL</option>
					       <%
					        
					           Connection connection6_1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/crawlbuildjsp","root","Dheepthi@123");
					           Statement statement6_1 = connection6_1.createStatement() ;
					           
					           String domainadmin="all";
					           try{
					        	   domainadmin=request.getParameter("domain_admin");					        	   
					           }catch (Exception e){					        	  
					           }
					           
					           try{
							           if (!domainadmin.equals("all")){
							   			if (i==0){
							   				i=1;
							   				strQuery=strQuery+" domain = '"+domainadmin+"'";
							   			}else{
							   				i++;
							   				strQuery=strQuery+" and domain = '"+domainadmin+"'";
							   			}
							           }
					           }catch (Exception e){
					        	   
					           }
					           
					          ResultSet resultset6_1 = statement6_1.executeQuery("select DISTINCT domain from taskdetails") ;
					          while (resultset6_1.next()){
					      		 %>		
					      		 <option><%=resultset6_1.getString("domain")%></option>	
					      		 
					      		<% }
					          
					          %>
					       
					       </select>
				    </TD>
			        <TD>
			       		<select name="Subject admin" <%=session.getAttribute("Subject admin") %> onchange="table.submit()" >
			      			<option selected="selected" value="all">ALL</option>
								       <%
								      
								           Connection connection7= DriverManager.getConnection("jdbc:mysql://localhost:3306/crawlbuildjsp","root","Dheepthi@123");
								           Statement statement7 = connection7.createStatement() ;
								           String subjectadmin="all";
								           try{
								        	   subjectadmin=request.getParameter("Subject admin");					        	   
								           }catch (Exception e){					        	  
								           }
								           
								           try{
										           if (!subjectadmin.equals("all")){
											   			if (i==0){
											   				i=1;
											   				strQuery=strQuery+" subject = '"+subjectadmin+"'";
											   			}else{
											   				i++;
											   				strQuery=strQuery+" and subject = '"+subjectadmin+"'";
											   			}
											   		 }	
								           }catch (Exception e){}
								         
								          ResultSet resultset7 = statement7.executeQuery("select Distinct subject from taskdetails") ;
								          while (resultset7.next()){
								      		 %>		
								      		 <option><%=resultset7.getString("subject")%></option>	
								      		<% }
								          
								          %>
			          		
			          </select>
			      </TD>
			      <TD>
			       		<select name="Assigned to admin" <%=session.getAttribute("Assigned to admin") %> onchange="table.submit()" >
			      			<option selected="selected" value="all">ALL</option>
						       <%
						           Connection connection8= DriverManager.getConnection("jdbc:mysql://localhost:3306/crawlbuildjsp","root","Dheepthi@123");
						           Statement statement8 = connection7.createStatement() ;
						           String assignedtoadmin="all";
						           try{
						        	   assignedtoadmin=request.getParameter("Assigned to admin");					        	   
						           }catch (Exception e){					        	  
						           }
						           
						           try{
								           if (!assignedtoadmin.equals("all")){
								   			if (i==0){
								   				i=1;
								   				strQuery=strQuery+" assignedon = '"+assignedtoadmin+"'";
								   			}else{
								   				i++;
								   				strQuery=strQuery+" and assignedon = '"+assignedtoadmin+"'";
								   			}
								   		 }	
						           }catch (Exception e){}
						           
						         
						          ResultSet resultset8 = statement8.executeQuery("select Distinct assignedto from taskdetails") ;
						          while (resultset8.next()){
						      		 %>		
						      		 <option><%=resultset8.getString("assignedto")%></option>	
						      		<% }
						          
						          %>
			         	
			          </select>
			      </TD>
			      <TD>
					      <select name="iteration_admin" <%=session.getAttribute("iteration_admin")%> onchange="table.submit()">
					      <option selected="selected" value="all">ALL</option>
					       <%
					        
					           Connection connection7_1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/crawlbuildjsp","root","Dheepthi@123");
					           Statement statement7_1 = connection7_1.createStatement() ;
					           
					           String iterationadmin="all";
					           try{
					        	   iterationadmin=request.getParameter("iteration_admin");					        	   
					           }catch (Exception e){					        	  
					           }
					           
					           try{
							           if (!iterationadmin.equals("all")){
							   			if (i==0){
							   				i=1;
							   				strQuery=strQuery+" domain = '"+iterationadmin+"'";
							   			}else{
							   				i++;
							   				strQuery=strQuery+" and domain = '"+iterationadmin+"'";
							   			}
							           }
					           }catch (Exception e){
					        	   
					           }
					           
					          ResultSet resultset7_1 = statement7_1.executeQuery("select DISTINCT iteration from taskdetails") ;
					          while (resultset7_1.next()){
					      		 %>		
					      		 <option><%=resultset7_1.getString("iteration")%></option>	
					      		 
					      		<% }
					          
					          %>
					       
					       </select>
				    </TD>
			      <TD>
					      <select name="Started on admin" <%=session.getAttribute("Started on admin") %> onchange="table.submit()" >
							      <option selected="selected" value="all">ALL</option>
							       <%
							           Connection connection9= DriverManager.getConnection("jdbc:mysql://localhost:3306/crawlbuildjsp","root","Dheepthi@123");
							           Statement statement9 = connection7.createStatement() ;
							          
							           String startedtoadmin="all";
							           try{
							        	   startedtoadmin=request.getParameter("Started on admin");					        	   
							           }catch (Exception e){					        	  
							           }
							           
							           try{
									           if (!startedtoadmin.equals("all")){
									   			if (i==0){
									   				i=1;
									   				strQuery=strQuery+" startedon = '"+startedtoadmin+"'";
									   			}else{
									   				i++;
									   				strQuery=strQuery+" and startedon = '"+startedtoadmin+"'";
									   			}
									   		 }
							           }catch (Exception e){}
							         
							          ResultSet resultset9 = statement9.executeQuery("select Distinct startedon from taskdetails") ;
							          while (resultset9.next()){
							      		 %>		
							      		 <option><%=resultset9.getString("startedon")%></option>	
							      		<% }
							          
							          %>
					      </select>
				  </TD>
			      <TD>
					      <select name="ETA admin" <%=session.getAttribute("ETA admin") %> onchange="table.submit()" >
							      <option selected="selected" value="all">ALL</option>
							       <%
							           Connection connection10= DriverManager.getConnection("jdbc:mysql://localhost:3306/crawlbuildjsp","root","Dheepthi@123");
							           Statement statement10 = connection7.createStatement() ;
							           String etaadmin="all";
							           try{
							        	   startedtoadmin=request.getParameter("ETA admin");					        	   
							           }catch (Exception e){					        	  
							           }
							           
							           try{
									           if (!etaadmin.equals("all")){
									   			if (i==0){
									   				i=1;
									   				strQuery=strQuery+" ETA = '"+etaadmin+"'";
									   			}else{
									   				i++;
									   				strQuery=strQuery+" and ETA = '"+etaadmin+"'";
									   			}
									   		 }
							           }catch (Exception e){}
							           
							         
							          ResultSet resultset10 = statement10.executeQuery("select Distinct ETA from taskdetails") ;
							          while (resultset10.next()){
							      		 %>		
							      		 <option><%=resultset10.getString("ETA")%></option>	
							      		<% }
							          
							          %>
					          </select>
				  </TD>
			      
			      <TD>
					      <select name="RTA admin" <%=session.getAttribute("RTA admin") %>  onchange="table.submit()">
							      <option selected="selected" value="all">ALL</option>
							       <%							       
							           Connection connection12= DriverManager.getConnection("jdbc:mysql://localhost:3306/crawlbuildjsp","root","Dheepthi@123");
							           Statement statement12 = connection12.createStatement() ;
							           String rtaadmin="all";
							           try{
							        	   rtaadmin=request.getParameter("RTA admin");					        	   
							           }catch (Exception e){					        	  
							           }
							           
							           try{
									           if (!rtaadmin.equals("all")){
									   			if (i==0){
									   				i=1;
									   				strQuery=strQuery+" rta = '"+rtaadmin+"'";
									   			}else{
									   				i++;
									   				strQuery=strQuery+" and rta = '"+rtaadmin+"'";
									   			}
									   		 }
							           }catch (Exception e){
							        	   
							           }
							         
							          ResultSet resultset12 = statement12.executeQuery("select Distinct rta from taskdetails") ;
							          while (resultset12.next()){
							      		 %>		
							      		 <option><%=resultset12.getString("rta")%></option>
							      		 	
							      		<% }
							      		%>
					          </select>
					          </TD>
					          <TD>
				       <select name="ATA admin" <%=session.getAttribute("ATA admin") %> onchange="table.submit()">
						      <option selected="selected" value="all">ALL</option>
						       <%
						           Connection connection11= DriverManager.getConnection("jdbc:mysql://localhost:3306/crawlbuildjsp","root","Dheepthi@123");
						           Statement statement11 = connection7.createStatement() ;
						           String ataadmin="all";
						           try{
						        	   ataadmin=request.getParameter("ATA admin");					        	   
						           }catch (Exception e){					        	  
						           }
						           
						           try{
								           if (!ataadmin.equals("all")){
								   			if (i==0){
								   				i=1;
								   				strQuery=strQuery+" ata = '"+ataadmin+"'";
								   			}else{
								   				i++;
								   				strQuery=strQuery+" and ata = '"+ataadmin+"'";
								   			}
								   		 }
						           }catch (Exception e){
						        	   
						           }
								           
								         
						          ResultSet resultset11 = statement11.executeQuery("select Distinct ata from taskdetails") ;
						          while (resultset11.next()){
						      		 %>		
						      		 <option><%=resultset11.getString("ata")%></option>	
						      		<% }
						          
						          %>		       
				          </select>

			          </TD>
			      <TD>
			      		<select name="Comments admin" <%=session.getAttribute("Comments admin")%> onchange="table.submit()">
						      <option selected="selected" value="all">ALL</option>
						       <%
						           Connection connection13= DriverManager.getConnection("jdbc:mysql://localhost:3306/crawlbuildjsp","root","Dheepthi@123");
						           Statement statement13 = connection13.createStatement() ;
						          
						           String commentsadmin="all";
						           try{
						        	   commentsadmin=request.getParameter("Comments admin");					        	   
						           }catch (Exception e){					        	  
						           }
						           
						           try{
								           if (!commentsadmin.equals("all")){
								   			if (i==0){
								   				i=1;
								   				strQuery=strQuery+" comments = '"+commentsadmin+"'";
								   			}else{
								   				i++;
								   				strQuery=strQuery+" and comments = '"+commentsadmin+"'";
								   			}
								   		 }
						           }catch (Exception e){
						        	   
						           }
						         
						          ResultSet resultset13 = statement13.executeQuery("select Distinct comments from taskdetails") ;
						          while (resultset13.next()){
						      		 %>		
						      		 <option><%=resultset13.getString("comments")%></option>	
						      		<% }%>
						          
						          
						</select></TD>
			      <TD>
				       <select name="JIRA ID admin" <%=session.getAttribute("JIRA ID admin") %> onchange="table.submit()" >
						      <option selected="selected" value="all">ALL</option>
						       <%
						           Connection connection14= DriverManager.getConnection("jdbc:mysql://localhost:3306/crawlbuildjsp","root","Dheepthi@123");
						           Statement statement14 = connection14.createStatement() ;
						          
						           String jiraidadmin="all";
						           try{
						        	   jiraidadmin=request.getParameter("JIRA ID admin");					        	   
						           }catch (Exception e){					        	  
						           }
						           
						           try{
								           if (!jiraidadmin.equals("all")){
								   			if (i==0){
								   				i=1;
								   				strQuery=strQuery+" jiraid = '"+jiraidadmin+"'";
								   			}else{
								   				i++;
								   				strQuery=strQuery+" and jiraid = '"+jiraidadmin+"'";
								   			}
								   		 }						           
						           }catch(Exception e){
						        	   
						           }
						          ResultSet resultset14 = statement14.executeQuery("select Distinct jiraid from taskdetails") ;
						          while (resultset14.next()){
						      		 %>		
						      		 <option><%=resultset14.getString("jiraid")%></option>	
						      		<% }
						          
						          %>
				          </select></TD>
			      <TD>
			      		<select name="Estimation admin" <%=session.getAttribute("Estimation admin") %>  onchange="table.submit()">
			     			 <option selected="selected" value="all">ALL</option>
							       <%
							           Connection connection15= DriverManager.getConnection("jdbc:mysql://localhost:3306/crawlbuildjsp","root","Dheepthi@123");
							           Statement statement15 = connection15.createStatement() ;
							           
							           String estimationdadmin="all";
							           try{
							        	   estimationdadmin=request.getParameter("Estimation admin");					        	   
							           }catch (Exception e){					        	  
							           }
							           
							           try{
									           if (!estimationdadmin.equals("all")){
									   			if (i==0){
									   				i=1;
									   				strQuery=strQuery+" jiraid = '"+estimationdadmin+"'";
									   			}else{
									   				i++;
									   				strQuery=strQuery+" and jiraid = '"+estimationdadmin+"'";
									   			}
									   		 }	
							           }catch(Exception e){
							           
							           }
									         
							          ResultSet resultset15 = statement15.executeQuery("select Distinct estimation from taskdetails") ;
							          while (resultset15.next()){
							      		 %>		
							      		 <option><%=resultset15.getString("estimation")%></option>	
							      		<% }
			          
			          				%>
			          </select>
			      </TD>
			      <TD>
			      		 <select name="Status admin" <%=session.getAttribute("Status admin") %> onchange="table.submit()" >
			      			<option selected="selected" value="all">ALL</option>
						       <%
						      
						      
						           Connection connection16= DriverManager.getConnection("jdbc:mysql://localhost:3306/crawlbuildjsp","root","Dheepthi@123");
						           Statement statement16 = connection16.createStatement() ;
						           
						           String statusadmin="all";
						           try{
						        	   statusadmin=request.getParameter("Status admin");					        	   
						           }catch (Exception e){					        	  
						           }
						           
						           try{
								           if (!statusadmin.equals("all")){
								   			if (i==0){
								   				i=1;
								   				strQuery=strQuery+" status = '"+statusadmin+"'";
								   			}else{
								   				i++;
								   				strQuery=strQuery+" and status = '"+statusadmin+"'";
								   			}
								   		 }	
						           }catch(Exception e){
						        	   
						           }
						         						          
						         
						          ResultSet resultset16 = statement16.executeQuery("select Distinct status from taskdetails") ;
						          while (resultset16.next()){
						      		 %>		
						      		 <option><%=resultset16.getString("status")%></option>	
						      		<% }
						          
						          %>
			           </select>
			      </TD>	
			      
			      <TD>
			      <a href="homepageadmin.jsp">Clear Filter</a>
			      </TD>		     
			      </TR>
			       <%
			       //int i=1;
			           Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/crawlbuildjsp","root","Dheepthi@123");
			           Statement statement = connection.createStatement() ;
			           String username=session.getAttribute("username").toString();
			           String team=session.getAttribute("team").toString();
			           String username_dum="";
			           ResultSet resultset;

				          if (i==0) {
				        	  resultset = statement.executeQuery("select * from taskdetails") ;
				          }else{
				        	  resultset = statement.executeQuery(strQuery) ;
				          }
				        	  
				          
			       %>
			      <% 
			     
			      while(resultset.next()){ %>
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
						<form action="updateadmin.jsp" method="post">
							<a href="updateadmin.jsp?id=<%=resultset.getString("id")%>"><img src="Image/update.png" class="updateemail"></a>
						</form>
		
 					</TD>
 					<TD>
						<a href="mailto:LVMHcrawlingteam@ugamsolutions.com?subject=[<%=resultset.getString("retailer")%> - <%=resultset.getString("domain")%>] <%=resultset.getString("subject")%> [<%=resultset.getString("scriptype")%>]&body=Your request is received [ID:<%=resultset.getString("id")%>], we will check this and update you by <%=resultset.getString("eta")%> &cc=pio.crawling@ugamsolutions.com"><img src="Image/mail.png" class="email"></a>						
		
 					</TD>
 					
			      </TR>
			      <% } %>
			     </TABLE>

			    </div>
			    </form>

</body>
</html>