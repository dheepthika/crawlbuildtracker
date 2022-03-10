<%@page import="java.io.PrintWriter"%>
<%@page import="com.login.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String username=session.getAttribute("username").toString();
String team=session.getAttribute("team").toString();
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



		Connection con =ConnectionProvider.getCon();
		Statement st=con.createStatement();
		String strQuery = "SELECT COUNT(*) FROM taskdetails";
		ResultSet rs = st.executeQuery(strQuery);
		String Countrow="";
		while(rs.next()){
		Countrow = rs.getString(1);
		};
		int id =Integer.parseInt(Countrow)+1;
		String IDVal=Integer.toString(id);
		PreparedStatement ps = con.prepareStatement("insert into taskdetails (id,team,requestedby,receivedon,projectname,task,scriptype,retailer,domain,subject,assignedto,iteration,startedon,ETA,rta,ata,comments,jiraid,estimation,status) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1, IDVal);
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
		
		
		ps.executeUpdate();
		%>
		<script>
			alert("Task added!!");  
			window.location= "homepageadmin.jsp";
		</script>
		<%
		

		
%>
