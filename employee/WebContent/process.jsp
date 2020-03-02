<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%

String first_name=request.getParameter("first_name");
String last_name=request.getParameter("last_name");
String city_name=request.getParameter("city_name");
String email=request.getParameter("email");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into users(first_name,last_name,city_name,email)values('"+first_name+"','"+last_name+"','"+city_name+"','"+email+"')");
out.println("Data is successfully inserted!");
response.sendRedirect("index1.jsp");
}
catch(Exception e)
{
	 
System.out.print(e);
e.printStackTrace();
}
%>


</body>
</html>