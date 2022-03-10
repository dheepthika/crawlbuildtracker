<%@page import="java.io.PrintWriter"%>
<%@page import="com.login.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String username=request.getParameter("username");
String password=request.getParameter("password");
String team=request.getParameter("Select team");
System.out.println("team sel: "+team);
username=username.toLowerCase();
boolean flag=false;
if (username.equals("suhas.b") |username.equals("zia.u") | username.equals("admin")){
	flag=true;
}
//password=username.toLowerCase();
if(flag && "ugam@123".equals(password)){
	Connection con =ConnectionProvider.getCon();
	Statement st =con.createStatement();
	session.setAttribute("username", username);
	session.setAttribute("team", team);
	response.sendRedirect("homepageadmin.jsp");


	
}else if (username.equals("guest") && "ugam@123".equals(password)){
	Connection con =ConnectionProvider.getCon();
	Statement st =con.createStatement();
	session.setAttribute("username", username);
	session.setAttribute("team", team);
	response.sendRedirect("homepageguest.jsp");

}else{
		
	int z=1;
	
	try{
		
		Connection con =ConnectionProvider.getCon();
		System.out.println("connection provided");		
		Statement st =con.createStatement();
		System.out.println("statement provided");
		//ResultSet rs1= st.executeQuery("use crawlbuildjsp");
		ResultSet rs= st.executeQuery("select * from employeelogin where name ='"+username+"' and password='"+password+"'");

		
		
		while (rs.next()){
			z=2;
			session.setAttribute("username", username);
			session.setAttribute("team", team);
			response.sendRedirect("homepage.jsp");

		}
		if (z==1){	
			%>
			<script>
			alert("Username/password incorrect"); 
			window.location= "loginpage.jsp";
			</script>
			<%
		}
	}catch (Exception e){
	//	response.sendRedirect("loginpage.jsp");
	}
	
}
%>
