<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"  import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%

    try
			
		{
    	
    	Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/AmazonDB","root","Sidhant#07");
		 
		String b=request.getParameter("b1");
		if(b.equals("Insert"))
		{
			PreparedStatement ps=con.prepareStatement("insert into  OrderDetails value(?,?,?,?,?,?)");
			
			ps.setInt(1, Integer.parseInt(request.getParameter("t1")));
			ps.setInt(2, Integer.parseInt(request.getParameter("t2")));
			ps.setInt(3, Integer.parseInt(request.getParameter("t3")));
			ps.setInt(4, Integer.parseInt(request.getParameter("t4")));
			ps.setInt(5, Integer.parseInt(request.getParameter("t5")));
			ps.setInt(6, Integer.parseInt(request.getParameter("t6")));
			
			
			ps.executeUpdate();
			out.println("<h1>Insert values successfullyyyyy.....</h2>");
		
		}
		
		response.sendRedirect("OrderDetaildesign.jsp");
			
	}
  catch(Exception e)
		{
	     out.println(e);
		}



%>
</body>
</html>