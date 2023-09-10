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

		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/AmazonDB","root","Sidhant#07");
		PreparedStatement ps=con.prepareCall("select * from Customer where custEmail=? and custPassword=?");
		ps.setString(1, request.getParameter("t1"));
		ps.setString(2, request.getParameter("t2"));
		
		ResultSet rs=ps.executeQuery();

if(rs.next())
{
		session.setAttribute("cid", rs.getString(1));
		session.setAttribute("cnm", rs.getString(2));

out.println("<h1>Welcome customer</h1>");
response.sendRedirect("http://localhost:8080/Amazon/Dashboard/customerdashboard.html");



}
else
{
	
	out.println("<h1>login failed....</h1>");
	response.sendRedirect("CustomerLogindesign.html");

}
 













%>

</body>
</html>