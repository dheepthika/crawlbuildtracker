package com.login;
import java.sql.*;

public class ConnectionProvider {
	public static Connection getCon() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/crawlbuildjsp","root","Dheepthi@123");
			Statement st =con.createStatement();
			ResultSet rs =st.executeQuery("select * from employeelogin");
			ResultSet rs1 =st.executeQuery("select * from taskdetails");
			
			return con;
			
		}catch(Exception e) {
			System.out.print(e);
			return null;
		}
	}

}
