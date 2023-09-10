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
			PreparedStatement ps=con.prepareStatement("insert into ItemMaster value(?,?,?,?,?,?,?,?,?)");
			
			ps.setInt(1, Integer.parseInt(request.getParameter("t1")));
			ps.setString(2, request.getParameter("t2"));
			ps.setInt(3, Integer.parseInt(request.getParameter("cid")));
			ps.setString(4,request.getParameter("cid1"));
			ps.setString(5,request.getParameter("cid2"));
			ps.setInt(6, Integer.parseInt(request.getParameter("t6")));
			ps.setString(7, request.getParameter("t7"));
			ps.setString(8, request.getParameter("t8"));
			ps.setString(9, request.getParameter("t9"));
			ps.executeUpdate();
			out.println("<h1>Insert values successfullyyyyy.....</h2>");
		
		}
				
		else if(b.equals("Update"))
		{
			PreparedStatement ps=con.prepareStatement("update ItemMaster set itemNm=?,compId=?,catId=?,brandId=?,itemRate=?,itemStock=?,itemDescr=?,itemPhoto=?  where itemId=?");
			ps.setInt(9, Integer.parseInt(request.getParameter("t1")));
			ps.setString(1, request.getParameter("t2"));
			ps.setString(2,request.getParameter("cid"));
			ps.setString(3,request.getParameter("cid1"));
			ps.setString(4,request.getParameter("cid2"));
			ps.setInt(5, Integer.parseInt(request.getParameter("t6")));
			ps.setString(6, request.getParameter("t7"));
			ps.setString(7, request.getParameter("t8"));
			ps.setString(8, request.getParameter("t9"));
			ps.executeUpdate();
			out.println("<h1>Update values successfullyyyyy.....</h2>");
			
		}
		
		else if(b.equals("Delete"))
			{
				PreparedStatement ps=con.prepareStatement("delete   from ItemMaster where itemId=?");
				ps.setInt(1, Integer.parseInt(request.getParameter("t1")));
				ps.executeUpdate();
				out.println("<h1>delete values successfullyyyyy.....</h2>");
				
				
			}
    	
		else
		{
			out.println("<h1> Invalid </h2>");
			
		}
    	
		response.sendRedirect("ItemMasterdesign.jsp");
    	
    	
		}
  catch(Exception e)
		{
	     out.println(e);
		}



%>

</body>
</html>