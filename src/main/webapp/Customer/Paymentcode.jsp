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
				
				if(b.equals("Buy"))
					
				{
					PreparedStatement ps= con.prepareStatement("insert into Payment values(?,?,?,?)");
					ps.setInt(1, Integer.parseInt(request.getParameter("t1")));
					ps.setString(2, request.getParameter("t2"));
					ps.setInt(3, Integer.parseInt(session.getAttribute("ordid").toString()));
					ps.setFloat(4,Float.parseFloat(request.getParameter("t4")) );
					ps.executeUpdate();
					out.println("<h1>Insert values successfullyyyyy.....</h2>");
				

				     response.sendRedirect("http://localhost:8080/Amazon/DynamicReports/invoice.jsp"); 

				}
				
			
				

			     response.sendRedirect("Paymentdesign.jsp"); 
				
				
					
					
				}
				catch(Exception e)
				{
				 out.println(e);	
				
				}
				

%>

</body>
</html>