<%@page import="java.io.PrintWriter"%>
<%@page import="com.login.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/crawlbuildjsp";%>
<%!String user = "root";%>
<%!String psw = "Dheepthi@123";%>
<%
String id=request.getParameter("ID");
String team=request.getParameter("Select team");
String Requested_by=request.getParameter("Requested by");
String Received_on=request.getParameter("Received on");
String Project_name=request.getParameter("Project name");
String task=request.getParameter("Task");
String Script_type=request.getParameter("Script type");
String retailer=request.getParameter("Retailer");
String domain=request.getParameter("Domain");
String subject=request.getParameter("Subject");
String assigned_to=request.getParameter("Assigned to");
String iteration=request.getParameter("Iteration");
String started_on=request.getParameter("Started on");
String eta=request.getParameter("ETA");
String ata=request.getParameter("ATA");
String rta=request.getParameter("RTA");
String comments=request.getParameter("Comments");
String status=request.getParameter("Status");
String jiraid=request.getParameter("JIRA ID");
String estimation=request.getParameter("Estimation");


if (status.equals("Completed")) {

			if(!(id.equals("")) && !(team.equals("")) && !(Requested_by.equals("")) && !(Received_on.equals("")) && !(Project_name.equals("")) && (task != null) && !(Script_type.equals("")) && !(retailer.equals("")) && !(domain.equals("")) && !(subject.equals("")) && !(assigned_to.equals("")) && !(iteration.equals("")) && !(started_on.equals(""))  && !(eta.equals(""))  && !(ata.equals(""))  && !(rta.equals(""))  && !(comments.equals(""))  && !(status.equals(""))  && !(jiraid.equals(""))  && !(estimation.equals("")))
			{

			Connection con = null;
			PreparedStatement ps = null;
			int personID = Integer.parseInt(id);

			Class.forName(driverName);
			con = DriverManager.getConnection(url,user,psw);
			String sql="Update taskdetails SET id=?,team=?,requestedby=?,receivedon=?,projectname=?,task=?,scriptype=?,retailer=?,domain=?,subject=?,assignedto=?,iteration=?,startedon=?,ETA=?,ata=?,rta=?,comments=?,jiraid=?,estimation=?,status=? WHERE id="+id;
			ps = con.prepareStatement(sql);
			ps.setString(1,id);
			ps.setString(2, team);
			ps.setString(3, Requested_by);
			ps.setString(4, Received_on);
			ps.setString(5, Project_name);
			ps.setString(6, task);
			ps.setString(7, Script_type);
			ps.setString(8, retailer);
			ps.setString(9, domain);
			ps.setString(10, subject);
			ps.setString(11, assigned_to);
			ps.setString(12, iteration);
			ps.setString(13, started_on);
			ps.setString(14, eta);			
			ps.setString(15, rta);
			ps.setString(16, ata);
			ps.setString(17, comments);
			ps.setString(18, jiraid);
			ps.setString(19, estimation);
			ps.setString(20, status);			
			int j = ps.executeUpdate();
			
			if(j > 0)
			{
				
				%>
				<script>
					alert("Make sure to push the scripts to bitbucket");
					window.location= "homepage.jsp";
				</script>
				<%
			}
			else
			{
				out.print("There is a problem in updating Record.");				
			}

			}else{
				%>
				<script>
				alert("Please fill in all fields"); 
				window.location= "homepage.jsp";
				</script>
				<%
			}
}
else 
{
	if((id != null))
	{
	Connection con = null;
	PreparedStatement ps = null;
	int personID = Integer.parseInt(id);
	try
	{
	Class.forName(driverName);
	con = DriverManager.getConnection(url,user,psw);
	String sql="Update taskdetails SET id=?,team=?,requestedby=?,receivedon=?,projectname=?,task=?,scriptype=?,retailer=?,domain=?,subject=?,assignedto=?,iteration=?,startedon=?,ETA=?,ata=?,rta=?,comments=?,jiraid=?,estimation=?,status=? WHERE id="+id;
	ps = con.prepareStatement(sql);
	ps.setString(1,id);
	ps.setString(2, team);
	ps.setString(3, Requested_by);
	ps.setString(4, Received_on);
	ps.setString(5, Project_name);
	ps.setString(6, task);
	ps.setString(7, Script_type);
	ps.setString(8, retailer);
	ps.setString(9, domain);
	ps.setString(10, subject);
	ps.setString(11, assigned_to);
	ps.setString(12, iteration);
	ps.setString(13, started_on);
	ps.setString(14, eta);			
	ps.setString(15, rta);
	ps.setString(16, ata);
	ps.setString(17, comments);
	ps.setString(18, jiraid);
	ps.setString(19, estimation);
	ps.setString(20, status);	
	int i = ps.executeUpdate();
	
	
	if(i > 0)
	{
		response.sendRedirect("homepage.jsp");
	}
	else
	{
	out.print("There is a problem in updating Record.");
	}
	}
	catch(SQLException sql)
	{
	request.setAttribute("error", sql);
	out.println(sql);
	}
	}
				
			}
%>