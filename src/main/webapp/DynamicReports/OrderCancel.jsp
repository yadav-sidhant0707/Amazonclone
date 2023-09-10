<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

     <% ArrayList items=new ArrayList();
            ArrayList cost1=new ArrayList();
            ArrayList qty1=new ArrayList();
            items=(ArrayList<Integer>)session.getAttribute("id");
             cost1=(ArrayList <Integer>)session.getAttribute("rate");
             qty1=(ArrayList <Integer>)session.getAttribute("qty");
             String q1=request.getQueryString();
                      if(q1!=null)
             {
                 items.remove(Integer.parseInt(q1));
                 cost1.remove(Integer.parseInt(q1));
                 qty1.remove(Integer.parseInt(q1));
             }

 response.sendRedirect("ShowCart.jsp");
%>
</body>
</html>