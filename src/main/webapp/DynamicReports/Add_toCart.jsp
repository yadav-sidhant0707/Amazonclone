<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
         <%
         
         ArrayList idlist=(ArrayList)session.getAttribute("idlist");
        if (idlist== null) 
        {
        	idlist= new ArrayList();
        session.setAttribute("idlist", idlist);
         }
     
        ArrayList nmlist=(ArrayList)session.getAttribute("nmlist");
        if (nmlist== null) 
        {
        	nmlist= new ArrayList();
        session.setAttribute("nmlist", nmlist);
         }
     
         
        ArrayList qtylist=(ArrayList)session.getAttribute("qtylist");
        if (qtylist== null) 
        {
        qtylist= new ArrayList();
        session.setAttribute("qtylist", qtylist);
         }
        
        ArrayList ratelist=(ArrayList)session.getAttribute("ratelist");
       if (ratelist== null) 
       {
        ratelist= new ArrayList();
        session.setAttribute("ratelist", ratelist);
       }
        
       String nm =(String)session.getAttribute("nm");
       int id =(Integer)session.getAttribute("id");
       int qty=Integer.parseInt(request.getParameter("cmb_nm"));
       int rate=(Integer)session.getAttribute("rate");
           
     
       
       

       if (id !=0) 
       {
       idlist.add(id);
       }
      
       
       
        if (nm != null) 
        {
        nmlist.add(nm);
        }
       
        
       if (rate != 0) 
       {
        ratelist.add(rate);
       }
       
       
       if (qty!= 0) 
        {
        qtylist.add(qty);
        }



         response.sendRedirect("ShowCart.jsp?"+session.getAttribute("item_id"));







%>

</body>
</html>