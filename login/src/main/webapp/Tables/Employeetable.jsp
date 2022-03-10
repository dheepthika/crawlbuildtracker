<%@page import="com.login.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
try
{
Connection con = ConnectionProvider.getCon();
Statement st = con.createStatement();
String q1="create table logindetail(name varchar(100),password varchar(100))";
st.execute(q1);
con.close();
}
catch (Exception e){
}
%>