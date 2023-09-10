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

    try
			
		{
    	
    	Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/AmazonDB","root","Sidhant#07");
		 
		String b=request.getParameter("b1");
		if(b.equals("Insert"))
		{
			PreparedStatement ps=con.prepareStatement("insert into Company  value(?,?,?,?,?,?,?,?)");
			
			ps.setInt(1, Integer.parseInt(request.getParameter("t1")));
			ps.setString(2, request.getParameter("t2"));
			ps.setString(3, request.getParameter("t3"));
			ps.setString(4, request.getParameter("t4"));
			ps.setString(5, request.getParameter("t5"));
			ps.setString(6, request.getParameter("t6"));
			ps.setString(7, request.getParameter("t7"));
			ps.setString(8, request.getParameter("t8"));

			
			ps.executeUpdate();
			out.println("<h1>Insert values successfullyyyyy.....</h2>");
		
		}
				
		else if(b.equals("Update"))
		{
			PreparedStatement ps=con.prepareStatement("update Company  set compNm=?,compAddr=?,compPhone=?,compEmail=?,compCity=?,compDescr=?,compPassword=? where compId =?");
			ps.setInt(8, Integer.parseInt(request.getParameter("t1")));
			ps.setString(1, request.getParameter("t2"));
			ps.setString(2, request.getParameter("t3"));
			ps.setString(3, request.getParameter("t4"));
			ps.setString(4, request.getParameter("t5"));
			ps.setString(5, request.getParameter("t6"));
			ps.setString(6, request.getParameter("t7"));
			ps.setString(7, request.getParameter("t8"));
			
			ps.executeUpdate();
			out.println("<h1>Update values successfullyyyyy.....</h2>");
			
		}
		
		else if(b.equals("Delete"))
			{
				PreparedStatement ps=con.prepareStatement("delete   from Company  where compId=?");
				ps.setInt(1, Integer.parseInt(request.getParameter("t1")));
				ps.executeUpdate();
				out.println("<h1>delete values successfullyyyyy.....</h2>");
				
				
			}
    	
		else
		{
			out.println("<h1> Invalid </h2>");
			
		}
    	
		response.sendRedirect("Companydesign.jsp");
    	
    	
		}
  catch(Exception e)
		{
	     out.println(e);
		}



%>

</body>
</html>