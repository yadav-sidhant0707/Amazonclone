<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">




 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>OrderMaster list | amazon</title>
    <link href="../../Eshopper/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../Eshopper/css/font-awesome.min.css" rel="stylesheet">
    <link href="../../Eshopper/css/prettyPhoto.css" rel="stylesheet">
    <link href="../../Eshopper/css/price-range.css" rel="stylesheet">
    <link href="../../Eshopper/css/animate.css" rel="stylesheet">
	<link href="../../Eshopper/css/main.css" rel="stylesheet">
	<link href="../../Eshopper/css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">

<title>brand </title>

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
							<a href="../Eshopper/js/index.html"><img src="../../Eshopper/images/home/logo1.png" alt="" /></a>
						</div>
						<div class="btn-group pull-right">
							<div class="btn-group">
								
								<ul class="dropdown-menu">
									
								</ul>
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
							<ul class="nav navbar-nav collapse navbar-collapse">
								
									<li><a href="http://localhost:8080/Amazon/Eshopper/index.html" class="active">Home</a></li>
									<li><a href="http://localhost:8080/Amazon/Dashboard/AdminDashboard.html" class="active">Dashboard</a></li>
									<li><a href="http://localhost:8080/Amazon/Eshopper/index.html" class="active">Logout</a></li>
								
							
							
									
                                </li>
							</ul>
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
					<h2 class="title text-center">OrderMaster    </h2>    			 
				</div>			 		
			</div>
<h1 style="text-align:center">OrderMaster List</h1>


<%
	try

	{

		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/AmazonDB", "root", "Sidhant#07");
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select *  from OrderMaster");

		out.println("<table border='3px' class='table'>");
		out.println(
		"<tr><th>OrderID</th><th> Order Date</th><th>Order Customer ID</th><th>Order Company ID</th><th> Order Amount</th><th>  Order Grand Amount</th><th> Order Grand Total</th></tr>");

		while (rs.next()) {

			out.println("<tr><th>" + rs.getInt(1) + "</th><th>" + rs.getString(2) + "</th><th>" + rs.getString(3)
			+ "</th><th>" + rs.getString(4) + "</th><th>" + rs.getString(5) + "</th><th>" +  rs.getFloat(6)
			+ "</th><th>" + rs.getFloat(7) + "</th></th></tr>");

		}

	} catch (Exception e) {
		out.println(e);
	}
	%>
</body>
</html>