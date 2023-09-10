<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*"   import="java.sql.*" import ="java.util.Date"  import="java.text.SimpleDateFormat" import="java.text.ParseException" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%!			 int id;
			  String nm;
			  int rate;
			  int qty,amt, total ,odate;
			  float gstamt,grandtot;
			  Connection con;
			  Statement st;
			  ResultSet rs;
				public int GetNewId() throws SQLException , ClassNotFoundException
				{
					
					Class.forName("com.mysql.cj.jdbc.Driver");
					con = DriverManager.getConnection("jdbc:mysql://localhost:3306/AmazonDB", "root", "Sidhant#07");

					Statement st=con.createStatement();
					rs=st.executeQuery("select max(orderId) from  OrderMaster");
					int maxid=0;
					if(rs.next())
					{
						maxid=rs.getInt(1);
						maxid=maxid+1;
					}
					return (maxid);			
				}
				
				


			  
			 
			  
			 

			  
        ArrayList<Integer> idlist;// = (ArrayList<Integer>)session.getAttribute("idlist");
        ArrayList<String> nmlist;// = (ArrayList<String>) session.getAttribute("nmlist");
        ArrayList<Integer> ratelist;// = (ArrayList<Integer>) session.getAttribute("ratelist");
        ArrayList<Integer> qtylist;// = (ArrayList<Integer>) session.getAttribute("qtylist");
      
  %>
			
     <% 
 
           if (idlist != null && nmlist != null && ratelist != null && qtylist != null) 
        {
            int listSize = idlist.size(); // Assuming all lists have the same size

            for (int i = 0; i < listSize; i++) 
            {
            	
                 id = idlist.get(i);
                nm = nmlist.get(i);
                 rate = ratelist.get(i);
                 qty = qtylist.get(i);
              
                amt=rate*qty;
               total+=amt;
            }
        }
 %>
       
 <% 
 Date date = new Date();
  idlist = (ArrayList<Integer>)session.getAttribute("idlist");
  nmlist = (ArrayList<String>) session.getAttribute("nmlist");
 ratelist = (ArrayList<Integer>) session.getAttribute("ratelist");
  qtylist = (ArrayList<Integer>) session.getAttribute("qtylist");
      try
		{
    	
    	Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/AmazonDB","root","Sidhant#07");
PreparedStatement ps1 = con.prepareStatement("INSERT INTO OrderMaster VALUES (?,?,?,?,?,?,?)");
        id=GetNewId();
        session.setAttribute("ordid", id);
        ps1.setInt(1, id);
       
        SimpleDateFormat dateFormat = new SimpleDateFormat("EEE MMM dd HH:mm:ss zzz yyyy", Locale.US);
        java.util.Date utilDate = dateFormat.parse(date.toString());
      //java.sql.Date sqlDate = new java.sql.Date(utilDate);
		String formattedDate = dateFormat.format(utilDate);
					
        ps1.setString(2, "2023/9/8");
       
        ps1.setInt(3,Integer.parseInt(session.getAttribute("cid").toString()));  
        ps1.setInt(4, 4);
        ps1.setString(5,String.valueOf(total));
        ps1.setString(6, (session.getAttribute("gstamt").toString()));
        ps1.setString(7, (session.getAttribute("grandtot").toString()));
        ps1.executeUpdate();
       
        

	       

		
		for (int i = 0; i < idlist.size(); i++)
		{
        	
           String itemid = idlist.get(i).toString();
           nm = nmlist.get(i);
            rate = ratelist.get(i);
            qty = qtylist.get(i);
           amt=rate*qty;
           total+=amt;
       session.setAttribute("total", total);
        PreparedStatement ps = con.prepareStatement("INSERT INTO OrderDetails VALUES (?,?,?,?,?,?)");
        ps.setInt(1, 1);  
        ps.setInt(2,id);  
        ps.setString(3,itemid);  
        ps.setInt(4, rate);
        ps.setInt(5, qty);
        ps.setInt(6, amt);
        ps.executeUpdate();
       
        out.print(  "INSERT INTO OrderDetails VALUES (?,?,?,?,?,?)");

                
       }
      
		
       }

   	   catch(Exception e)
   		{
   		 e.printStackTrace();
   		}
      response.sendRedirect("http://localhost:8080/Amazon/Customer/Paymentdesign.jsp");
         
 %> 
		

</body>
</html>