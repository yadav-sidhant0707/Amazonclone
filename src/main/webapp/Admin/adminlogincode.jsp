<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

String s1=request.getParameter("t1");
String s2=request.getParameter("t2");


if(s1.equals("admin") && s2.equals("123456"))
{
	
out.println("<h1>Welcome Admin</h1>");

response.sendRedirect("http://localhost:8080/Amazon/Dashboard/AdminDashboard.html");

}
else
{
	
	out.println("<h1>login failed....</h1>");
  response.sendRedirect("http://localhost:8080/Amazon/Admin/admin.html");

}
 












%>

</body>
</html>