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
			PreparedStatement ps=con.prepareStatement("insert into OrderMaster value(?,?,?,?,?,?,?)");
			
			ps.setInt(1, Integer.parseInt(request.getParameter("t1")));
			ps.setString(2, request.getParameter("t2"));
			ps.setInt(3, Integer.parseInt(request.getParameter("t3")));
			ps.setInt(4, Integer.parseInt(request.getParameter("t4")));
			ps.setInt(5, Integer.parseInt(request.getParameter("t5")));
			ps.setFloat(6, Float.parseFloat(request.getParameter("t6")));
			ps.setFloat(7, Float.parseFloat(request.getParameter("t7")));			
			
			ps.executeUpdate();
			out.println("<h1>Insert values successfullyyyyy.....</h2>");
		
		}
		response.sendRedirect("OrderMasterdesign.jsp");
			
	}
  catch(Exception e)
		{
	     out.println(e);
		}



%>
</body>
</html>