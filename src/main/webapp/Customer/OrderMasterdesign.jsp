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
    <title>OrderMaster | amazon</title>
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

<title>Order Master </title>


<script type="text/javascript">

function myfunction()
{
	var e=document.getElementById("orderId").value;
	 var b=document.getElementById("orderDate").value;
	 var c=document.getElementById("orderCustId").value;
	var d=document.getElementById("orderCompId").value;
	var f=document.getElementById("orderAmt").value;
	var g =document.getElementById("orderGSTAmt").value;
	var h =document.getElementById("orderGrandTot").value;
	
	if(e=="")
	{


		document.getElementById("ms5252").innerHTML="*** Please fill  Order  ID ";
		return false;
	}
	
	if(b=="")
	{


		document.getElementById("msg2").innerHTML="*** Please fill   order Date ";
		return false;
	}
		

	if(c=="")
	{


		document.getElementById("msg3").innerHTML="*** Please fill  Order Customer ID  ";
		return false;
	}
	
	if(d=="")
	{


		document.getElementById("msg4").innerHTML="*** Please fill   Order Company ID";
		return false;
	}
	
	
	if(f=="")
	{


		document.getElementById("msg5").innerHTML="*** Please fill  Order Amount ";
		return false;
	}
	
	
	if(g=="")
	{


		document.getElementById("msg6").innerHTML="*** Please fill  Order GST Amount ";
		return false;
	}
	
	
	if(h=="")
	{


		document.getElementById("msg7").innerHTML="*** Please fill  Order Grand Total ";
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
					<h2 class="title text-center">Order Master Form </h2>    			 
				</div>			 		
			</div>

	<%!String orderId = "", orderDate = "", orderCustId = "", orderCompId = "", orderAmt = "", orderGSTAmt = "",
			orderGrandTot = "";%>
	<%!
			
			Connection con;
			Statement st;
			ResultSet rs;
			
			
			
			%>
		<%!
		public int GetNewId() throws SQLException , ClassNotFoundException
		{
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/AmazonDB", "root", "Sidhant#07");

			Statement st=con.createStatement();
			rs=st.executeQuery("select max(orderId ) from  OrderMaster");
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
	if (request.getQueryString() != null) {
		orderId = request.getParameter("t1");
		orderDate = request.getParameter("t2");
		orderCustId = request.getParameter("t3");
		orderCompId = request.getParameter("t4");
		orderAmt = request.getParameter("t5");
		orderGSTAmt= request.getParameter("t6");
		orderGrandTot = request.getParameter("t7");

	}
	else
	{
		orderId=String.valueOf(GetNewId());
	}
	%>

	<form action="OrderMastercode.jsp" method="post" onsubmit="return myfunction()">
	<div class="form-group col-md-12">
		<input type="number"   id="orderId"  placeholder="Order  ID" class="form-control"  name="t1" value=<%=orderId%>><br>
		
				<span style="color: red;" id="ms5252"></span>
		</div>
		<br>
		<div class="form-group col-md-12">
		<input type="date" name="t2"   placeholder="
		 Order Date" id="orderDate"   class="form-control"  value=<%=orderDate%>><br>
				<span style="color: red;" id="msg2"></span>
		
		</div>
		<br> 
		<div class="form-group col-md-12">
		 <input type="number"  placeholder="Order Customer ID"   class="form-control"   name="t3" id="orderCustId"
			value=<%=orderCustId%>><br>
		<span style="color: red;" id="msg3"></span>
	 </div>
	  <br> 
	  <div class="form-group col-md-12">
	<input
			type="number" name="t4"    placeholder="  Order Company ID"   class="form-control"    id="orderCompId" value=<%=orderCompId%>><br>
					<span style="color: red;" id="msg4"></span>
			
		</div>	<br>
		<div class="form-group col-md-12">
		<input type="number" name="t5"  id="orderAmt"  placeholder="Order Amount" class="form-control"  value=<%=orderAmt%>><br>
				<span style="color: red;" id="msg5"></span></div>
		<br> 
		<div class="form-group col-md-12">
		<input type="number" name="t6"   placeholder="Order GST Amount"    class="form-control"  id="orderGSTAmt"
			value=<%=orderGSTAmt%>><br>
		<span style="color: red;" id="msg6"></span>
			</div>
			
			<br> <div class="form-group col-md-12">
			
				<input type="number" name="t7"    placeholder=" Order Grand Total"    class="form-control"  id="orderGrandTot" value=<%=orderGrandTot%>><br>
				 
				 		<span style="color: red;" id="msg7"></span>
				 </div>
				 <br>
				 
		<br>
		<div class="form-group col-md-3">
		 <input type="submit" value="Insert"     class="btn btn-primary pull-rightc center" name="b1">
		</div>

	</form>
	<br>
	<br>
	
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
		ResultSet rs = st.executeQuery("select *  from OrderMaster");

		out.println("<table border='3px;' class='table'>");
		out.println(
		"<tr><th>OrderID</th><th> Order Date</th><th>Order Customer ID</th><th>Order Company ID</th><th> Order Amount</th><th>  Order Grand Amount</th><th> Order Grand Total</th><th>Select</th>");

		while (rs.next()) {

			out.println("<tr><th>" + rs.getInt(1) + "</th><th>" + rs.getString(2) + "</th><th>" + rs.getString(3)
			+ "</th><th>" + rs.getString(4) + "</th><th>" + rs.getString(5) + "</th><th>" +  rs.getFloat(6)
			+ "</th><th>" + rs.getFloat(7) + "</th></th><th><a href='OrderMasterdesign.jsp?t1="
			+ rs.getInt(1) + "&t2=" + rs.getString(2) + "&t3=" + rs.getString(3) + "&t4=" + rs.getString(4) + "&t5="
			+ rs.getString(5) + "&t6=" + rs.getFloat(6) + "&t7=" + rs.getFloat(7) + "'>Select</a></th></tr>");

		}

	} catch (Exception e) {
		out.println(e);
	}
	%>

</body>
</html>