<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>



<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Order | amazon</title>
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

	<script type="text/javascript">

function myfunction()
{
	var e=document.getElementById("username").value;
	 var b=document.getElementById("OrderID").value;
	 var c=document.getElementById("ItemID").value;
	var d=document.getElementById("ItemRate").value;
	var f=document.getElementById("ItemQuantity").value;
	var g =document.getElementById("ItemAmount").value;
	
	if(e=="")
	{


		document.getElementById("msg1").innerHTML="*** Please fill  Email ";
		return false;
	}
		
	
	if(b=="")
	{


		document.getElementById("msg2").innerHTML="*** Please fill  Order ID ";
		return false;
	}
		
	
	if(c=="")
	{


		document.getElementById("msg3").innerHTML="*** Please fill  Item ID ";
		return false;
	}
	
	if(d=="")
	{


		document.getElementById("msg4").innerHTML="*** Please fill Item Rate ";
		return false;
	}
	
	
	if(f=="")
	{


		document.getElementById("msg5").innerHTML="*** Please fill Item  Quantity ";
		return false;
	}
	
	
	if(g=="")
	{


		document.getElementById("msg6").innerHTML="*** Please fill Item  Amount ";
		return false;
	}
	
	
	
	
	
	
	
	
}

</script>


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
					<h2 class="title text-center">OrderDetails Form </h2>    			 
				</div>			 		
			</div>
			
			<%!
			
			Connection con;
			Statement st;
			ResultSet rs;
			
			
			
			%>

	<%!String orderDetId="", orderId="", ItemId="", itemRate="", itemQty="", IitemAmt="";%>
		
		<%!
		public int GetNewId() throws SQLException , ClassNotFoundException
		{
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/AmazonDB", "root", "Sidhant#07");

			Statement st=con.createStatement();
			rs=st.executeQuery("select max(orderDetId) from  OrderDetails");
			int maxid=0;
			if(rs.next())
			{
				maxid=rs.getInt(1);
				maxid=maxid+1;
			}
			return (maxid);			
		}
		
		
		%>
	


	<%
	if (request.getQueryString()!=null) 
	{
		orderDetId = request.getParameter("t1");
		orderId= request.getParameter("t2");
		ItemId = request.getParameter("t3");
		itemRate = request.getParameter("t4");
		itemQty = request.getParameter("t5");
		IitemAmt = request.getParameter("t6");

	}
	
	else
	{
		orderDetId=String.valueOf(GetNewId());
		
	}
	%>
	<form action="OrderDetailcode.jsp" method="post"   onsubmit="return myfunction()">
	 <div class="form-group col-md-12">
		<input type="number"  id="username" name="t1"   class="form-control"   placeholder="Order Detailed ID"   value=<%=orderDetId%>><br>
		<span style="color: red;" id="msg1"></span>
		</div>
		<br>
	
		 <div class="form-group col-md-12">
		<input type="number" name="t2"  id="OrderID"     class="form-control"     placeholder=" Order ID"         value=<%=orderId%>><span style="color: red;" id="msg2"></span><br>
		 </div>
		<br> 
		<div class="form-group col-md-12">
	 <input type="number" name="t3" id="ItemID"   class="form-control"     placeholder="Item ID"        value=<%=ItemId%>><br>
		
		
		<span style="color: red;" id="msg3"></span>
		</div>
		<br>
		<div class="form-group col-md-12">
		<input type="number" name="t4"   id="ItemRate"     placeholder="Item Rate"  class="form-control" value=<%=itemRate%>><br>
		<span style="color: red;" id="msg4"></span>
		
		</div>
		<br>
		<div class="form-group col-md-12">
		<input type="number" name="t5" id="ItemQuantity"    placeholder="Item Quantity"   class="form-control" value=<%=itemQty%>>
		<span style="color: red;" id="msg5"></span><br>
		</div><br>
		<div class="form-group col-md-12">
	<input type="number" name="t6"    class="form-control"    placeholder="	Item Amount"  id="ItemAmount" value=<%=IitemAmt%> ><br>
		<span style="color: red;" id="msg6"></span>
		  </div>


		<br> 
		 <div class="form-group col-md-3">
		<input type="submit" value="Insert"   class="btn btn-primary pull-rightc center" name="b1">
		</div>

	</form><br><br>

      <script src="jquery.js"></script>
	<script src="bootstrap.min.js"></script>
	<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
    <script type="text/javascript" src="gmaps.js"></script>
	<script src="contact.js"></script>
	<script src="price-range.js"></script>
    <script src="jquery.scrollUp.min.js"></script>
    <script src="jquery.prettyPhoto.js"></script>
    <script src="main.js"></script>
      
	



	<%
	try

	{

		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/AmazonDB", "root", "Sidhant#07");
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select *  from  OrderDetails ");

		out.println("<table border='3px;' class='table'  >");
		out.println(
		"<tr><th>Order Detailed ID</th><th>Order ID </th><th>Item ID</th><th>Item Rate</th><th>	Item Quantity</th><th>Item Amount</th><th>Select</th>");

		while (rs.next()) {

			out.println("<tr><th>" + rs.getInt(1) + "</th><th>" + rs.getString(2) +"</th><th>"+rs.getString(3)+"</th><th>"+rs.getString(4)+"</th><th>"+rs.getString(5)+"</th><th>"+rs.getString(6)+"</th><th><a href='http://localhost:8080/Amazon/Customer/OrderDetaildesign.jsp?t1="
							+ rs.getInt(1) + "&t2=" + rs.getString(2) +"&t3="+rs.getString(3)+"&t4="+rs.getString(4)+"&t5="+rs.getString(5)+"&t6="+rs.getString(6)+"'>Select</a></th></tr>");
		
		}

	} catch (Exception e) {
		out.println(e);
	}
	%>

</body>
</html>