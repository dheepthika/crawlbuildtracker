<%@page import="java.io.PrintWriter"%>
<%@page import="com.login.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%

String team_admin,Received_on_admin,task_admin,retailer_admin,subject_admin,assigned_to_admin,started_on_admin;
String eta_admin,ata_admin,rta_admin,comments_admin,status_admin,jiraid_admin,estimation_admin,id_admin,Requested_by_admin;
//String username_admin=session.getAttribute("username").toString();
try{
	 //team_admin=session.getAttribute("team_admin").toString();
	 team_admin=request.getParameter("team_admin");
	 Received_on_admin=request.getParameter("Received on admin");
	 task_admin=request.getParameter("Task admin");
	 retailer_admin=request.getParameter("Retailer admin");
	 subject_admin=request.getParameter("Subject admin");
	 assigned_to_admin=request.getParameter("Assigned to admin");
	 started_on_admin=request.getParameter("Started on admin");
	 eta_admin=request.getParameter("ETA admin");
	 ata_admin=request.getParameter("ATA admin");
	 rta_admin=request.getParameter("RTA admin");
	 comments_admin=request.getParameter("Comments admin");
	 status_admin=request.getParameter("Status admin");
	 jiraid_admin=request.getParameter("JIRA ID admin");
	 estimation_admin=request.getParameter("Estimation admin");
	 id_admin=request.getParameter("id admin");
	 Requested_by_admin=request.getParameter("Requested by admin");
	System.out.println("Requested by admin :"+Requested_by_admin);
}finally{
	
}





		Connection con =ConnectionProvider.getCon();
		Statement st=con.createStatement();
		String strQuery = "SELECT * FROM taskdetails where ";
		int i=0;
		if (!team_admin.equals("all")){
			if (i==0){
				i=1;
				strQuery=strQuery+" team = '"+team_admin+"'";
			}else{
				i++;
				strQuery=strQuery+" and team = '"+team_admin+"'";
			}
		}
		if (!Requested_by_admin.equals("all")){
			if (i==0){
				i=1;
				strQuery=strQuery+" requestedby = '"+Requested_by_admin+"'";
			}else{
				i++;
				strQuery=strQuery+" and requestedby = '"+Requested_by_admin+"'";
			}
		}
		System.out.println("strQuery : "+strQuery);
		
		if (!Received_on_admin.equals("all")){
			if (i==0){
				i=1;
				strQuery=strQuery+" receivedon = '"+Received_on_admin+"'";
			}else{
				i++;
				strQuery=strQuery+" and receivedon = '"+Received_on_admin+"'";
			}
		}
		String StrQuery="";
		request.setAttribute(StrQuery, strQuery);
		//ResultSet rs = st.executeQuery(strQuery);
		//response.sendRedirect("homepageadmin.jsp");

		
%>
