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
					  Statement st;
				       ResultSet rs;
					
				String b=request.getParameter("b1");
				
				if(b.equals("Insert"))
					
				{
					PreparedStatement ps= con.prepareStatement("insert into  Brand values(?,?)");
					ps.setInt(1, Integer.parseInt(request.getParameter("t1")));
					ps.setString(2, request.getParameter("t2"));
					ps.executeUpdate();
					out.println("<h1>Insert values successfullyyyyy.....</h2>");
				

				
				}
				
				else if(b.equals("Update"))
				{
					PreparedStatement ps= con.prepareStatement("update Brand set  brandNm=? where brandId=?");
					ps.setInt(2, Integer.parseInt(request.getParameter("t1")));
					ps.setString(1, request.getParameter("t2"));
					ps.executeUpdate();
					out.println("<h1>Update values successfullyyyyy.....</h2>");
				
					 
					
				}
				
				else if(b.equals("Delete"))
				{
					PreparedStatement ps= con.prepareStatement("Delete from  Brand where brandId=? ");
					ps.setInt(1,Integer.parseInt(request.getParameter("t1")));
					ps.executeUpdate();
					
					out.println("<h1>delete values successfullyyyyy.....</h2>");
					
				}
				
				

			     response.sendRedirect("Branddesign.jsp"); 
				
				
					
					
				}
				catch(Exception e)
				{
				 out.println(e);	
				
				}
				

%>

</body>
</html>