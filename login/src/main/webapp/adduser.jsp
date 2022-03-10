<%@page import="java.io.PrintWriter"%>
<%@page import="com.login.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String Usernamenew=request.getParameter("Usernamenew");
String Passwordnew=request.getParameter("Passwordnew");



		Connection con =ConnectionProvider.getCon();
		Statement st=con.createStatement();
		String strQuery = "SELECT COUNT(*) FROM users";
		ResultSet rs = st.executeQuery(strQuery);
	
		PreparedStatement ps = con.prepareStatement("insert into users (name,password) values (?,?)");
		ps.setString(1, Usernamenew);
		ps.setString(2, Passwordnew);
		
		
		
		ps.executeUpdate();
		response.sendRedirect("homepageadmin.jsp");

		
%>
