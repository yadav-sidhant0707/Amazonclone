<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.sql.*"
    pageEncoding="ISO-8859-1" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>



<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Show cart</title>
    <link href="../Eshopper/css/bootstrap.min.css" rel="stylesheet">
    <link href="../Eshopper/css/font-awesome.min.css" rel="stylesheet">
    <link href="../Eshopper/css/prettyPhoto.css" rel="stylesheet">
    <link href="../Eshopper/css/price-range.css" rel="stylesheet">
    <link href="../Eshopper/css/animate.css" rel="stylesheet">
	<link href="../Eshopper/css/main.css" rel="stylesheet">
	<link href="../Eshopper/css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">

<title>Brand wise item </title>
</head>
<body>

<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href=""><i class="fa fa-phone"></i> +2 95 01 88 821</a></li>
								<li><a href=""><i class="fa fa-envelope"></i> info@domain.com</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
								<li><a href=""><i class="fa fa-facebook"></i></a></li>
								<li><a href=""><i class="fa fa-twitter"></i></a></li>
								<li><a href=""><i class="fa fa-linkedin"></i></a></li>
								<li><a href=""><i class="fa fa-dribbble"></i></a></li>
								<li><a href=""><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="../Eshopper/js/index.html"><img src="../Eshopper/images/home/logo1.png" alt="" /></a>
						</div>
						<div class="btn-group pull-right">
							
							
							<div class="btn-group">
								
							</div>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">
							
						</div>
					</div>
					<div class="col-sm-3">
						
					</div>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->
	 
	 <div id="contact-page" class="container">
    	<div class="bg">
	    	<div class="row">    		
	    		<div class="col-sm-12">    			   			
					<h2 class="title text-center">Show Cart</h2>    			 
				</div>			 		
			</div>
			
			<%!
			
			
			 int id;
			  String nm;
			  int rate;
			  int qty,amt,total;
			  float gstamt,grandtot;
			   String orderDatelist;
			
			%>
			
			
     





<div class="container">
<div class="table">
<table class="table"  style="border:2px solid orange;">

    <tr>
     <th>
     Sr NO
     </th>
    
     <th>
    Name
     </th>
    
    
     <th>
     Rate
     </th>
    
    
     <th>
    Qty
     </th>
     
       <th>
    Amount
     </th>
     
       <th>
    Cancel
     </th>
     
     
    </tr>
   
   
    
    <%
        ArrayList<Integer> idlist = (ArrayList<Integer>) session.getAttribute("idlist");
        ArrayList<String> nmlist = (ArrayList<String>) session.getAttribute("nmlist");
        ArrayList<Integer> ratelist = (ArrayList<Integer>) session.getAttribute("ratelist");
        ArrayList<Integer> qtylist = (ArrayList<Integer>) session.getAttribute("qtylist");
      %>
			
    
    
  <% 
  
  
  
  
  
  

        if (idlist != null && nmlist != null && ratelist != null && qtylist != null) {
            int listSize = idlist.size(); // Assuming all lists have the same size

            for (int i = 0; i < listSize; i++) {
            	
                 id = idlist.get(i);
                nm = nmlist.get(i);
                 rate = ratelist.get(i);
                 qty = qtylist.get(i);
                amt=rate*qty;
                total+=amt*qty;
                
                %>
            
            
           
       
    
    
    
    
    
     <tr>
     <th>
    <%=i+1 %>
     </th>
    
     <th>
  <%=nm %>
     </th>
    
    
     <th>
 <%=rate %>
     </th>
    
    
     <th>
   <%=qty %>
     </th>
     
       <th>
  <%=amt%>
     </th>
     
       <th>
    Cancel
     </th>
     
     
    </tr>
    
         <%
            
            }
            
        }
            else
            {
            
            %>
           
            <%
            
            }
  
 
  gstamt=(total*5)/100;
grandtot=total+gstamt;

session.setAttribute("gstamt",gstamt);

session.setAttribute("grandtot",grandtot);


            
            %>
            <tr>
            <td align=right colspan=4>Total</td><td><%=total%>/-</td>
            
            </tr>
            <tr>
            <td align=right colspan=4>GST</td><td><%=gstamt%>/-</td>
            
            </tr>
            <tr>
            <td align=right colspan=4>Grand</td><td><%=grandtot%>/-</td>
            
            </tr>
            
</table>
<form action="SearchItem.jsp" method="post">
<button type="submit"  class="btn btn btn-info" > Search Another Item</button>
</form>
<br>
<form action="checkout.jsp" method="post">
<button type="submit"  class="btn btn btn-primary" > Checkout</button><br> <br><br>
<a href="http://localhost:8080/Amazon/DynamicReports/OrderCancel.jsp" class="btn btn btn-info" target="_blank" >Cancel Order</a>
</form>
</div>
</div>
 




 <script src="jquery.js"></script>
	<script src="bootstrap.min.js"></script>
	<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
    <script type="text/javascript" src="gmaps.js"></script>
	<script src="contact.js"></script>
	<script src="price-range.js"></script>
    <script src="jquery.scrollUp.min.js"></script>
    <script src="jquery.prettyPhoto.js"></script>
    <script src="main.js"></script>
      
</body>
</html>